package com.finegamedesign.subtletea
{
    import flash.display.DisplayObjectContainer;
    import flash.display.Sprite;

    public class LevelLoader extends Sprite
    {
        internal static var levels:Array = [
            0, 1, 2, 3, 4, 5, 6, 7, 8, 9
        ];

        internal static var onLoaded:Function;

        internal static var instance:DisplayObjectContainer;

        internal static function load(level:int):DisplayObjectContainer
        {
            onLoaded();
            // var levelClass:Class = levels[level - 1];
            // instance = new levelClass();
            return null;
        }

        /**
         * Add to list of pearls.
         * Disable selecting text.
         */
        public function LevelLoader() 
        {
            super();
            for (var c:int = numChildren - 1; 0 <= c; c--) {
                removeChildAt(c);
            }
            addChild(instance);
            this.mouseEnabled = false;
            this.mouseChildren = false;
            onLoaded();
        }
    }
}
