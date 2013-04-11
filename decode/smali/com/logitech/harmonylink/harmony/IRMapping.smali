.class public Lcom/logitech/harmonylink/harmony/IRMapping;
.super Ljava/lang/Object;
.source "IRMapping.java"


# static fields
.field public static final ASPECT:Ljava/lang/String; = "Aspect"

.field public static final CHANNEL_DOWN:Ljava/lang/String; = "ChannelDown"

.field public static final CHANNEL_UP:Ljava/lang/String; = "ChannelUp"

.field public static final DPAD_DOWN:Ljava/lang/String; = "DirectionDown"

.field public static final DPAD_LEFT:Ljava/lang/String; = "DirectionLeft"

.field public static final DPAD_PAGE_DOWN:Ljava/lang/String; = "PageDown"

.field public static final DPAD_PAGE_UP:Ljava/lang/String; = "PageUp"

.field public static final DPAD_RIGHT:Ljava/lang/String; = "DirectionRight"

.field public static final DPAD_SELECT:Ljava/lang/String; = "Select"

.field public static final DPAD_UP:Ljava/lang/String; = "DirectionUp"

.field public static final EJECT:Ljava/lang/String; = "Eject"

.field public static final FAST_FORWARD:Ljava/lang/String; = "FastForward"

.field public static final FRAME_ADVANCE:Ljava/lang/String; = "FrameAdvance"

.field public static final MUTE:Ljava/lang/String; = "Mute"

.field public static final NEXT_CHAPTER:Ljava/lang/String; = "SkipForward"

.field public static final NUMBER_0:Ljava/lang/String; = "Number0"

.field public static final NUMBER_1:Ljava/lang/String; = "Number1"

.field public static final NUMBER_2:Ljava/lang/String; = "Number2"

.field public static final NUMBER_3:Ljava/lang/String; = "Number3"

.field public static final NUMBER_4:Ljava/lang/String; = "Number4"

.field public static final NUMBER_5:Ljava/lang/String; = "Number5"

.field public static final NUMBER_6:Ljava/lang/String; = "Number6"

.field public static final NUMBER_7:Ljava/lang/String; = "Number7"

.field public static final NUMBER_8:Ljava/lang/String; = "Number8"

.field public static final NUMBER_9:Ljava/lang/String; = "Number9"

.field public static final NUMBER_E:Ljava/lang/String; = "NumberEnter"

.field public static final NUMBER_STAR:Ljava/lang/String; = "Star"

.field public static final PAUSE:Ljava/lang/String; = "Pause"

.field public static final PLAY:Ljava/lang/String; = "Play"

.field public static final PREVIOUS_CHANNEL:Ljava/lang/String; = "PrevChannel"

.field public static final PREVIOUS_CHAPTER:Ljava/lang/String; = "SkipBackward"

.field public static final RECORD:Ljava/lang/String; = "Record"

.field public static final REPEAT:Ljava/lang/String; = "Repeat"

.field public static final REWIND:Ljava/lang/String; = "Rewind"

.field public static final SHUFFLE:Ljava/lang/String; = "Shuffle"

.field public static final SLOW:Ljava/lang/String; = "Slow"

.field public static final STOP:Ljava/lang/String; = "Stop"

.field public static final VOLUME_DOWN:Ljava/lang/String; = "VolumeDown"

.field public static final VOLUME_UP:Ljava/lang/String; = "VolumeUp"

.field public static final ZOOM_IN:Ljava/lang/String; = "GTVZoomIn"

.field public static final ZOOM_OUT:Ljava/lang/String; = "GTVZoomOut"


# instance fields
.field public mButtonID:I

.field public mIRNameArray:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "buttonID"
    .parameter "irName"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/logitech/harmonylink/harmony/IRMapping;->mButtonID:I

    .line 87
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/IRMapping;->mIRNameArray:[Ljava/lang/String;

    .line 88
    return-void
.end method
