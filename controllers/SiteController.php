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
        $players = [];
        if ($request->isPost) {
            $dataPost = $request->Post();
            $model->player_name = $dataPost['Player']['player_name'];
            $playerName = $dataPost['Player']['player_name'];
            $players = Player::find()->where("player_name like '%$playerName%'")->all();
        }
        
        $playerChose = $request->get('players');
        $playerObject = '';
        if (!empty($playerChose)) {
            $playerArr = explode(',', $playerChose);
            $playerObject = Player::find()->where(['in', 'player_id', $playerArr])->all();
        }

        
        return $this->render('play', ['model' => $model, 'players' => $players, 'playerObject' => $playerObject]);
    }
    
    public function actionAddLog()
    {
        $request = Yii::$app->request;
        $dataPost = $request->Post();
        if (!empty($dataPost['id']) && !empty($dataPost['content'])) {
            $log = new \app\models\Log();
            $log->player_id = $dataPost['id'];
            $log->content = $dataPost['content'];
            $log->created_date = date("Y-m-d H:i:s");
            $log->save();
        }
         
    }
    
    public function actionAddPlayer()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        
        $request = Yii::$app->request;
        $dataPost = $request->Post();
        if (!empty($dataPost['name'])) {
            $player = new \app\models\Player();
            $player->player_name = $dataPost['name'];
            $player->player_level = 1;
            $player->place_id = 1;
            $player->created_date = date("Y-m-d H:i:s");
            $player->save();
        }
        
        return ['id' => $player->player_id];
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
