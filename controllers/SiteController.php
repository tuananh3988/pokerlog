<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\Player;
use app\models\ContactForm;
use yii\web\Response;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
    
    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionPlay()
    {
        $request = Yii::$app->request;
        $model = new Player();
        return $this->render('play', ['model' => $model]);
    }
    
    public function actionSearchPlayer() {
        if (Yii::$app->request->isAjax) {
            $request = Yii::$app->request;
            Yii::$app->response->format = Response::FORMAT_JSON;
            $dataPost = $request->Post();
            $result = ['flag' => false];
            $playerName = $dataPost['Player']['player_name'];
            $player = Player::find()->where("player_name like '%$playerName%'")->all();
            $html = '';
            foreach ($player as $p) {
                $html .= '<tr>';
                $html .= "<td>$p->player_id</td>";
                $html .= "<td>$p->player_name</td>";
                $html .= "<td>$p->player_level</td>";
                $html .= "<td></td>";
                $html .= '</tr>';
            }

            
            if ($player) {
                $result = [
                    'flag' => true,
                    'data' => $html
                ];
            }
            
            return $result;
        }
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }
}
