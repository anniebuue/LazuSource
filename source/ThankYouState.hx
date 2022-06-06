package;

import flixel.util.FlxColor;
import flixel.text.FlxText;
import openfl.display.BitmapData;
import sys.FileSystem;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxG;

class ThankYouState extends MusicBeatState
{
    var curSelected:Int = 0;
    var artistList:Array<String> = [];

    var creditText:FlxText;
    var pics:FlxTypedGroup<FlxSprite>;
    var controlsText:FlxText;

    override public function create()
    {
        FlxG.mouse.visible = true;

        pics = new FlxTypedGroup<FlxSprite>();

        var fileList = FileSystem.readDirectory(FileSystem.absolutePath("assets/thanks"));

        trace(fileList);

        for (i in 0...fileList.length)
        {
            var file = 'assets/thanks/${fileList[i]}';

            var bitmap = BitmapData.fromFile(file);
            var spr = new FlxSprite().loadGraphic(bitmap);

            spr.setGraphicSize(1280, 720);  spr.updateHitbox();

            spr.visible = false;    spr.ID = i;
            pics.add(spr);

            var noExt = file.substr(0, file.lastIndexOf('.'));
            var onlyName = noExt.substr(noExt.lastIndexOf("/") + 1);

            artistList[i] = onlyName;
        }

        add(pics);

        creditText = new FlxText(12, 12, 0, "penis", 32);
        creditText.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        add(creditText);

        controlsText = new FlxText(12, 12, FlxG.width - 24, "LEFT ARROW to go left / RIGHT ARROW to go right / ESC to go back", 32);
        controlsText.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, RIGHT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        add(controlsText);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (controls.UI_LEFT_P) curSelected--;  if (controls.UI_RIGHT_P) curSelected++; if (controls.BACK)  FlxG.switchState(new CreditsState());

        if (curSelected > (pics.length - 1))
            curSelected = 0;

        if (curSelected < 0)
            curSelected = pics.length - 1;

        pics.forEach(function(spr){
            if (curSelected == spr.ID)
                spr.visible = true;
            else
                spr.visible = false;
        });

        creditText.text = artistList[curSelected];
    }
}