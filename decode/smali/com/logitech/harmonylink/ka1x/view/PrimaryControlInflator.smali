.class public Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;
.super Ljava/lang/Object;
.source "PrimaryControlInflator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;,
        Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlId;
    }
.end annotation


# static fields
.field private static final BTN_A:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_B:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_BACK:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_BOOKMARK:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_C:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_D:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_DVR:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_EXIT:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GTV_MENU:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GUIDE:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_HOME:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_INFO:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_LIVE_TV:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_PIP:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_SEARCH:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_STB_MENU:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_SWITCH_WINDOW:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_THUMB_DOWN:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_THUMB_UP:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_TIVO:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_VOICE_SEARCH:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BUTTON_HEIGHT:I = 0x3c

.field private static final BUTTON_WIDTH:I = 0x3e

.field private static final DIVIDER_WIDTH:I = 0x1

.field private static final DPAD_TAB:Ljava/lang/Integer; = null

.field private static final KEYBOARD_TAB:Ljava/lang/Integer; = null

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final SPACER_WIDTH:I = 0x20

.field private static final TOTAL_BUTTON_WIDTH:I = 0x40

.field private static final mImageButtonDefArray:[Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;


# instance fields
.field private mButtonCount:I

.field private mDefaultPage:I

.field mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mMapImageButtonDef:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

.field private mPageCount:I

.field private mPrimaryControlXml:Ljava/lang/String;

.field private mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

.field private mWatchGtvActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->KEYBOARD_TAB:Ljava/lang/Integer;

    .line 40
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    .line 42
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "thumbsUp"

    const v2, 0x7f020158

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_THUMB_UP:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 43
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "thumbsDown"

    const v2, 0x7f020157

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_THUMB_DOWN:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 45
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "A"

    const v2, 0x7f020062

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_A:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 46
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "B"

    const v2, 0x7f020063

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_B:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 47
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "C"

    const v2, 0x7f020064

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_C:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 48
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "D"

    const v2, 0x7f020065

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_D:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 50
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "guide"

    const v2, 0x7f0200be

    sget-object v3, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_GUIDE:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 51
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "info"

    const v2, 0x7f0200df

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_INFO:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 52
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "exit"

    const v2, 0x7f0200ae

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_EXIT:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 53
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "dvr"

    const v2, 0x7f0200a5

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_DVR:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 54
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "tivo"

    const v2, 0x7f02015c

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_TIVO:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 56
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "liveTV"

    const v2, 0x7f020164

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_LIVE_TV:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 57
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "home"

    const v2, 0x7f0200c2

    sget-object v3, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_HOME:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 58
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "search"

    const v2, 0x7f02012f

    sget-object v3, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->KEYBOARD_TAB:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_SEARCH:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 59
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "back"

    const v2, 0x7f0200bd

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_BACK:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 61
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "bookmark"

    const v2, 0x7f0200b1

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_BOOKMARK:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 62
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "gtvMenu"

    const v2, 0x7f0200ed

    sget-object v3, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_GTV_MENU:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 63
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "pip"

    const v2, 0x7f02011a

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_PIP:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 64
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "stbMenu"

    const v2, 0x7f02013a

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_STB_MENU:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 65
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "switchWindow"

    const v2, 0x7f02013b

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_SWITCH_WINDOW:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 66
    new-instance v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "voiceSearch"

    const v2, 0x7f020169

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_VOICE_SEARCH:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 75
    const-class v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->LOG_TAG:Ljava/lang/String;

    .line 77
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const/4 v1, 0x0

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_THUMB_UP:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    sget-object v1, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_THUMB_DOWN:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_A:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    sget-object v1, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_B:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_C:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_D:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_GUIDE:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_INFO:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_EXIT:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_DVR:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_TIVO:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_LIVE_TV:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_HOME:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_SEARCH:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_BACK:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_BOOKMARK:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_GTV_MENU:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_PIP:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_STB_MENU:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_VOICE_SEARCH:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_SWITCH_WINDOW:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 4
    .parameter "watchGtvActivity"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mWatchGtvActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    .line 103
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mWatchGtvActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    .line 106
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v1, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    sget-object v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getID()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;Lcom/logitech/connect/client/transport/IOpenApiRequest;)Lcom/logitech/connect/client/transport/IOpenApiRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;

    return-object p1
.end method

.method private addDivider(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "watchGtv"
    .parameter "parent"

    .prologue
    .line 442
    invoke-virtual {p1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030019

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, dividerView:Landroid/view/View;
    return-void
.end method

.method private addSpacer(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "watchGtv"
    .parameter "parent"

    .prologue
    .line 426
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 427
    .local v1, spacerView:Landroid/widget/FrameLayout;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 429
    invoke-virtual {p1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/logitech/harmonylink/ka1x/util/Display;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 430
    .local v2, spacerWidth:I
    invoke-virtual {p1}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-static {v3, v4}, Lcom/logitech/harmonylink/ka1x/util/Display;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 432
    .local v0, spacerHeight:I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 434
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 435
    const v3, 0x7f02004c

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 437
    iget v3, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    .line 439
    return-void
.end method


# virtual methods
.method public getFakePrimaryControls(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    return v0
.end method

.method public declared-synchronized getPrimaryControlsXml(Lcom/logitech/connect/ConnectClient;)V
    .locals 3
    .parameter "connectClient"

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "vnd.logitech.harmony/vnd.logitech.primarycontrol?get"

    const-string v1, ""

    new-instance v2, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$1;

    invoke-direct {v2, p0, p1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$1;-><init>(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;Lcom/logitech/connect/ConnectClient;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->onRequestFinished(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inflatePrimaryControlView(Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "vgrpParent"
    .parameter "watchGtv"
    .parameter "watchGtvActivityContainer"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004d

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    .line 454
    :goto_0
    return-void

    .line 452
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->parseXml(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onRequestFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mWatchGtvActivity:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->onRequestFinished(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public parseButton(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V
    .locals 23
    .parameter "parser"
    .parameter "parentGroupView"
    .parameter "watchGtv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    const-string v5, ""

    const-string v6, "type"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 321
    .local v16, buttonID:Ljava/lang/String;
    if-eqz v16, :cond_b

    const-string v5, "spacer"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 325
    .local v15, buttonDef:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;
    sget-object v5, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->BTN_LIVE_TV:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;

    if-ne v15, v5, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    move v5, v0

    div-int/lit8 v5, v5, 0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDefaultPage:I

    .line 330
    :cond_0
    const-string v5, ""

    const-string v6, "reply"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 332
    .local v18, buttonReply:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .line 336
    .local v17, buttonLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->addDivider(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V

    .line 338
    if-nez v15, :cond_3

    new-instance v5, Landroid/widget/Button;

    invoke-virtual/range {p3 .. p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v7, v5

    .line 339
    .local v7, primaryControlButton:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    .line 341
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->addDivider(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V

    .line 345
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v8, 0x3c

    invoke-static {v6, v8}, Lcom/logitech/harmonylink/ka1x/util/Display;->dipToPixels(Landroid/content/Context;I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 346
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 347
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 348
    const v5, 0x7f02004c

    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x3e

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/ka1x/util/Display;->dipToPixels(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 355
    instance-of v5, v7, Landroid/widget/Button;

    if-eqz v5, :cond_4

    .line 356
    move-object v0, v7

    check-cast v0, Landroid/widget/Button;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    move-object v0, v7

    check-cast v0, Landroid/widget/Button;

    move-object v8, v0

    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 364
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 365
    .local v20, encodedCommand:Ljava/lang/String;
    const-string v5, "IR_"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 367
    const-string v5, "_"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 368
    .local v19, commandArray:[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    aget-object v6, v19, v6

    aput-object v6, v8, v5

    .line 371
    .local v8, command:[Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object v6, v0

    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getTabNumber()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getPageNumber()Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v5, p3

    invoke-virtual/range {v5 .. v10}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 423
    .end local v7           #primaryControlButton:Landroid/view/View;
    .end local v8           #command:[Ljava/lang/String;
    .end local v15           #buttonDef:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;
    .end local v17           #buttonLabel:Ljava/lang/String;
    .end local v18           #buttonReply:Ljava/lang/String;
    .end local v19           #commandArray:[Ljava/lang/String;
    .end local v20           #encodedCommand:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 338
    .restart local v15       #buttonDef:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;
    .restart local v17       #buttonLabel:Ljava/lang/String;
    .restart local v18       #buttonReply:Ljava/lang/String;
    :cond_3
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual/range {p3 .. p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object v7, v5

    goto/16 :goto_0

    .line 359
    .restart local v7       #primaryControlButton:Landroid/view/View;
    :cond_4
    instance-of v5, v7, Landroid/widget/ImageButton;

    if-eqz v5, :cond_1

    .line 360
    if-eqz v15, :cond_1

    .line 361
    move-object v0, v7

    check-cast v0, Landroid/widget/ImageButton;

    move-object v8, v0

    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getIconResourceID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 376
    .restart local v8       #command:[Ljava/lang/String;
    .restart local v19       #commandArray:[Ljava/lang/String;
    .restart local v20       #encodedCommand:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object v5, v0

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setIRButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;[Ljava/lang/String;)V

    goto :goto_2

    .line 379
    .end local v8           #command:[Ljava/lang/String;
    .end local v19           #commandArray:[Ljava/lang/String;
    :cond_6
    const-string v5, "KBD_"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 381
    const-string v5, "_"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 382
    .local v22, keyCodes:[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v22, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 384
    .local v21, key:I
    if-eqz v15, :cond_9

    .line 385
    sget-object v5, Lcom/logitech/harmonylink/harmony/Command;->cmdMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/logitech/harmonylink/harmony/Command;

    .line 387
    .local v12, c:Lcom/logitech/harmonylink/harmony/Command;
    if-eqz v12, :cond_8

    .line 389
    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "switchWindow"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object v10, v0

    sget-object v12, Lcom/logitech/harmonylink/harmony/Command;->HOME:Lcom/logitech/harmonylink/harmony/Command;

    .end local v12           #c:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getTabNumber()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getPageNumber()Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v9, p3

    move-object v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardLongPressKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    .line 395
    .restart local v12       #c:Lcom/logitech/harmonylink/harmony/Command;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object v10, v0

    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getTabNumber()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;->getPageNumber()Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v9, p3

    move-object v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 401
    :cond_8
    sget-object v5, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->LOG_TAG:Ljava/lang/String;

    const-string v6, "ERROR NO Mapping for button found"

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 404
    .end local v12           #c:Lcom/logitech/harmonylink/harmony/Command;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object v5, v0

    new-instance v6, Lcom/logitech/harmonylink/harmony/Command;

    move-object v0, v6

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/Command;-><init>(I)V

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setKeyboardKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;)V

    goto/16 :goto_2

    .line 408
    .end local v21           #key:I
    .end local v22           #keyCodes:[Ljava/lang/String;
    :cond_a
    const-string v5, "BTN_"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    const-string v5, "_"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 411
    .restart local v19       #commandArray:[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v8, v19, v5

    .line 414
    .local v8, command:Ljava/lang/String;
    const-string v5, "voiceSearch"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->setVoiceSearchButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 421
    .end local v7           #primaryControlButton:Landroid/view/View;
    .end local v8           #command:Ljava/lang/String;
    .end local v15           #buttonDef:Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$PrimaryControlButtonDef;
    .end local v17           #buttonLabel:Ljava/lang/String;
    .end local v18           #buttonReply:Ljava/lang/String;
    .end local v19           #commandArray:[Ljava/lang/String;
    .end local v20           #encodedCommand:Ljava/lang/String;
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public parseGroup(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "parser"
    .parameter "parentGroupView"
    .parameter "watchGtv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, groupLinearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    const-string v2, ""

    const-string v3, "orientation"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, orientation:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 298
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 301
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "button"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "button"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    invoke-virtual {p0, p1, v0, p3}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->parseButton(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V

    goto :goto_1

    .line 291
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 306
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {p0, p1, v0, p3}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->parseGroup(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Landroid/widget/LinearLayout;

    goto :goto_1

    .line 312
    :cond_4
    return-object v0
.end method

.method public parsePrimaryControls(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V
    .locals 4
    .parameter "parser"
    .parameter "parent"
    .parameter "watchGtv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 254
    new-instance v0, Landroid/widget/TableLayout;

    invoke-virtual {p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, primaryControlsTablelayout:Landroid/widget/TableLayout;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 259
    new-instance v1, Landroid/widget/TableRow;

    invoke-virtual {p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 260
    .local v1, tableRow:Landroid/widget/TableRow;
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v1}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setGravity(I)V

    .line 264
    invoke-direct {p0, p3, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->addSpacer(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V

    .line 267
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget v2, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    .line 270
    invoke-virtual {p0, p1, v1, p3}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->parseGroup(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Landroid/widget/LinearLayout;

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->addSpacer(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V

    .line 274
    return-void
.end method

.method public parseXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Landroid/view/ViewGroup;
    .locals 2
    .parameter "parser"
    .parameter "watchGtv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 235
    iput v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    .line 236
    iput v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDefaultPage:I

    .line 237
    iput v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    .line 239
    new-instance v0, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-virtual {p2}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, primaryControls:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;
    iput-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    .line 243
    invoke-virtual {p0, p1, v0, p2}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->parsePrimaryControls(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V

    .line 247
    return-object v0
.end method

.method public parseXml(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "responseAsString"
    .parameter "vgrpParent"
    .parameter "watchGtv"
    .parameter "watchGtvActivityContainer"

    .prologue
    const/4 v9, 0x0

    .line 183
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 185
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 187
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 190
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PrimaryControls"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-virtual {p0, v3, p3}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->parseXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x1

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    invoke-virtual {v5, p4}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageParentViewGroup(Landroid/view/ViewGroup;)V

    .line 195
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageMode(Z)V

    .line 196
    iget v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x4010

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    .line 198
    invoke-virtual {p3}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xfe

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/ka1x/util/Display;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 199
    .local v2, pageWidth:I
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    iget v6, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPageParameters(IILcom/logitech/harmonylink/view/widget/PageIndicator;)V

    .line 201
    iget v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mButtonCount:I

    rem-int/lit8 v4, v5, 0x4

    .line 202
    .local v4, remainingButtons:I
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    const/high16 v6, 0x3f00

    int-to-float v7, v4

    mul-float/2addr v6, v7

    const/high16 v7, 0x4080

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setLastPageFraction(F)V

    .line 204
    iget v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDefaultPage:I

    iget v6, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPageCount:I

    if-ge v5, v6, :cond_0

    .line 205
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    iget v6, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mDefaultPage:I

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setPage(I)V

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 210
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 211
    iget-object v5, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mScrollView:Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/view/widget/PagedHorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #pageWidth:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #remainingButtons:I
    :cond_1
    :goto_0
    iput-object v9, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    .line 224
    return-void

    .line 214
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 216
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 219
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized retryGetPrimaryControlsXml(Lcom/logitech/connect/ConnectClient;)V
    .locals 4
    .parameter "connectClient"

    .prologue
    .line 145
    monitor-enter p0

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mPrimaryControlXml:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;

    if-nez v1, :cond_0

    .line 152
    const-string v1, "vnd.logitech.harmony/vnd.logitech.primarycontrol?get"

    const-string v2, ""

    new-instance v3, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator$2;-><init>(Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/logitech/connect/ConnectClient;->sendNewRequest(Ljava/lang/String;Ljava/lang/String;Lcom/logitech/connect/client/transport/IResponseHandler;)Lcom/logitech/connect/client/transport/IOpenApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->mOpenApiRequest:Lcom/logitech/connect/client/transport/IOpenApiRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_1
    monitor-exit p0

    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 145
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 170
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/ka1x/view/PrimaryControlInflator;->onRequestFinished(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
