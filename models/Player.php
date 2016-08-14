<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "player".
 *
 * @property integer $player_id
 * @property string $player_name
 * @property integer $player_level
 * @property integer $place_id
 * @property string $created_date
 */
class Player extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'player';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['player_id', 'player_name', 'player_level', 'place_id', 'created_date'], 'required'],
            [['player_id', 'player_level', 'place_id'], 'integer'],
            [['created_date'], 'safe'],
            [['player_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'player_id' => 'Player ID',
            'player_name' => 'Player Name',
            'player_level' => 'Player Level',
            'place_id' => 'Place ID',
            'created_date' => 'Created Date',
        ];
    }
    
    public function getLog() {
        return Log::findAll(['player_id' => $this->player_id]);
    }
}
