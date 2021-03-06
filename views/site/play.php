<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\Pin;
use common\components\Utility;
use yii\web\View;
use yii\helpers\Url;

$this->registerJs('searchUser();', View::POS_END);
?>
<script type="text/javascript">

    function searchUser () {
        $("#search").click(function(){
            $.ajax({
                   type: "POST",
                   url: $(this).attr('data-url'),
                   data: $('#search-form').serialize(),
                   success: function(response)
                   {
                        var data = response.data;
                        
                        if (response.flag) {
                            $('#user-info table').show();
                            $('#user-info label').hide();
                            $('.body_append').html(data);
                            
                        } else {
                            $('#user-info table').hide();
                            $('#user-info label').show();
                        }
                   
                   }
             });
        });     

    }
</script>

<div class="row">
        <?php $form = ActiveForm::begin([
                             'options' => ['class' => 'form-horizontal form-label-left', 'role' => 'form', 'id' => 'search-form']]); ?>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_content" style="display: block;">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="search_value">Player name: </label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <?= $form->field($model, 'player_name', ['template' => '{input}'])->textInput(['autofocus' => true, 'class' => 'form-control col-md-7 col-xs-12'])->label(''); ?>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <button type="submit" id="search" class="btn btn-success">Search</button>
                        </div>
                    </div>
                    
                    <div class="form-group table-responsive" id="user-info" style="text-align: center;">
                        <?php if(!empty($players)): ?>
                            <table class="table table-bordered">
                                <thead>
                                  <tr>
                                    <th>id</th>
                                    <th>name</th>
                                    <th>level</th>
                                    <th></th>
                                  </tr>
                                </thead>
                                <tbody class="body_append">
                                    <?php foreach ($players as $p): ?>
                                    <tr>
                                        <td><?= $p->player_id; ?></td>
                                        <td><?= $p->player_name; ?></td>
                                        <td><?= $p->player_level; ?></td>
                                        <td><button onclick="pushPlayerToList('<?= $p->player_id; ?>')">Add table</button></td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>

                        <?php endif; ?>
                         
                    </div>
                    <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="search_value">Player name: </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <input class="form-control col-md-7 col-xs-12" id="add-player-text" type="text" value="<?= $model->player_name; ?>" />
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <button type="button" id="add-player" class="btn btn-success">add player</button>
                            </div>
                        </div>

                        <?php if (Yii::$app->session->getAllFlashes()): ?>
                        <?php foreach (Yii::$app->session->getAllFlashes() as $key => $message) : ?>
                                <div class="alert alert-<?= $key ?> alert-dismissible fade in" role="alert">
                                   <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <?= $message ?>
                                </div>
                        <?php endforeach; ?>
                        <?php endif; ?>
                    
                    <div class="form-group table-responsive" id="user-info" style="text-align: center;">
                        <?php if(!empty($playerObject)): ?>
                            <table class="table table-bordered">
                                <thead>
                                  <tr>
                                    <th>stt</th>
                                    <th>name</th>
                                    <th>log</th>
                                    <th></th>
                                  </tr>
                                </thead>
                                <tbody class="body_append">
                                    <?php foreach ($playerObject as $k => $p): ?>
                                    <tr>
                                        <td><?= $k+1; ?></td>
                                        <td><?= $p->player_name; ?></td>
                                        <td>
                                            <div class="wrap-log-<?= $p->player_id;?>">
                                                <?php foreach ($p->getLog() as $l): ?>
                                                <p><?= $l->content; ?></p>
                                                <?php endforeach; ?>
                                            </div>
                                            <input id="log-<?= $p->player_id;?>" type="text" />
                                            <button class="add-log" data-id="<?= $p->player_id;?>">add</button>
                                        </td>
                                        <td><button onclick="removePlayerToList('<?= $p->player_id; ?>')">Leave table</button></td>
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
        <?php ActiveForm::end(); ?>
    </div>