package com.finegamedesign.subtletea
{
    import flash.display.MovieClip;

    public class SharkClip extends MovieClip
    {
        internal static var instances:Array = [];

        public function SharkClip() 
        {
            instances.push(this);
        }
    }
}
