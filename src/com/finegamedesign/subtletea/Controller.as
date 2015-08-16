package com.finegamedesign.subtletea
{
    public class Controller
    {
        private var model:Model;
        private var scene:*;

        public function Controller(model:Model, scene:*)
        {
            this.model = model;
            this.scene = scene;
        }

        internal function positionTarget()
        {
            scene.background.target.x = model.target.x;
            scene.background.target.y = model.target.y;
            scene.background.target.alpha = model.target.alpha;
        }

        internal function update(now:int):int
        {
            var win:int = model.update(now);
            positionTarget();
            return win;
        }

        internal function clear():void
        {
            model.clear();
        }
    }
}
