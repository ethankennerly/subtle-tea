package com.finegamedesign.subtletea
{
    import flash.display.MovieClip;
    import flash.display.Sprite;

    public class DiverClip extends Sprite
    {
        internal static var instance:DiverClip;

        public var body:MovieClip;

        public function DiverClip() 
        {
            instance = this;
        }
    }
}
