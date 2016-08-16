<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "log".
 *
 * @property integer $log_id
 * @property integer $player_id
 * @property string $content
 * @property string $created_date
 */
class Log extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['player_id', 'content', 'created_date'], 'required'],
            [['player_id'], 'integer'],
            [['content'], 'string'],
            [['created_date'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'log_id' => 'Log ID',
            'player_id' => 'Player ID',
            'content' => 'Content',
            'created_date' => 'Created Date',
        ];
    }
}
