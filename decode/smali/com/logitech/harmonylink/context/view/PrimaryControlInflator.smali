.class public Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;
.super Ljava/lang/Object;
.source "PrimaryControlInflator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;,
        Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;,
        Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlId;
    }
.end annotation


# static fields
.field private static final BTN_A:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_ASPECT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_B:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_BACK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_BLUE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_BOOKMARK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_C:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_D:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_DVR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_EXIT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GREEN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GTVHOME:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GTVLIVE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GTVSEARCH:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GTV_BACK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GTV_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_GUIDE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_INFO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_LIST:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_LIVE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_MEDIA_CENTER:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_MY_MUSIC:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_MY_PICS:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_MY_RADIO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_MY_TV:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_MY_VIDEO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_NOWPLAYING:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_PIP:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_PLAYSTN_CIR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_PLAYSTN_SQR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_PLAYSTN_TRI:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_PLAYSTN_X:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_RECORD:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_RECORDED_TV:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_RED:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_RETURN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_SEARCH:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_SIZE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_STB_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_SWITCH_WINDOW:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_TELETEXT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_THUMBS_DOWN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_THUMBS_UP:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_TIMER:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_TIVO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_TOP_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_XBOX_A:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_XBOX_B:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_XBOX_X:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_XBOX_Y:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final BTN_YELLOW:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef; = null

.field private static final DPAD_TAB:Ljava/lang/Integer; = null

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final PRIMARY_BUTTON_HEIGHT:I = 0x30

.field private static final SCROLL_DELAY:J = 0xc8L

.field private static SEARCH_TAB:Ljava/lang/Integer;

.field private static final mImageButtonDefArray:[Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

.field public static mMapImageButtonDef:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonEnabled:Z

.field private mActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

.field private mActivityCommands:Lcom/logitech/harmonylink/harmony/Commands;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private final mScrollHandler:Landroid/os/Handler;

.field private scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

.field private vgrpSliderButtons:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x7f02012f

    const v8, 0x7f0200bd

    const v7, 0x7f0200a5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    .line 35
    invoke-static {}, Lcom/logitech/connect/ConnectClient;->getInstance()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getInstance(Ljava/lang/String;)Lcom/logitech/harmonylink/RemoteControlInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/RemoteControlInitializer;->getSearchTab()Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->SEARCH_TAB:Ljava/lang/Integer;

    .line 38
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GameY"

    const v2, 0x7f020170

    const v3, 0x7f0700f5

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_Y:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 40
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GameX"

    const v2, 0x7f02016f

    const v3, 0x7f0700f6

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_X:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 42
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GameA"

    const v2, 0x7f02016c

    const v3, 0x7f0700f7

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_A:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 44
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GameB"

    const v2, 0x7f02016d

    const v3, 0x7f0700f8

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_B:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 47
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Triangle"

    const v2, 0x7f02011d

    const v3, 0x7f0700f9

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_TRI:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 49
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Square"

    const v2, 0x7f02011c

    const v3, 0x7f0700fa

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_SQR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 51
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Circle"

    const v2, 0x7f02011b

    const v3, 0x7f0700fb

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_CIR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 53
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Cross"

    const v2, 0x7f02011e

    const v3, 0x7f0700fc

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_X:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 56
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVLive"

    const v2, 0x7f020164

    const v3, 0x7f0700fd

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTVLIVE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 58
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVHome"

    const v2, 0x7f0200c2

    const v3, 0x7f0700fe

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTVHOME:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 60
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVSearch"

    const v3, 0x7f0700ff

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->SEARCH_TAB:Ljava/lang/Integer;

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTVSEARCH:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 62
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVBack"

    const v2, 0x7f070100

    invoke-direct {v0, v1, v8, v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTV_BACK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 64
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVMenu"

    const v2, 0x7f0200ed

    const v3, 0x7f070101

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTV_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 66
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVFavorite"

    const v2, 0x7f0200b1

    const v3, 0x7f070102

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_BOOKMARK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 68
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "GTVWindowsManager"

    const v2, 0x7f02011a

    const v3, 0x7f070103

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PIP:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 70
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "switchWindow"

    const v2, 0x7f02013b

    const v3, 0x7f070104

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_SWITCH_WINDOW:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 73
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "TopMenu"

    const v2, 0x7f02015d

    const v3, 0x7f070105

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TOP_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 75
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Menu"

    const v2, 0x7f02013a

    const v3, 0x7f070106

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_STB_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 77
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Guide"

    const v2, 0x7f0200be

    const v3, 0x7f070107

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->DPAD_TAB:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GUIDE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 79
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Info"

    const v2, 0x7f0200df

    const v3, 0x7f070108

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_INFO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 81
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Exit"

    const v2, 0x7f0200ae

    const v3, 0x7f070109

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_EXIT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 83
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "DVR"

    const v2, 0x7f07010c

    invoke-direct {v0, v1, v7, v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_DVR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 85
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Return"

    const v2, 0x7f02012b

    const v3, 0x7f07010a

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RETURN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 87
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Back"

    const v2, 0x7f07010b

    invoke-direct {v0, v1, v8, v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_BACK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 89
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "List"

    const v2, 0x7f0200ea

    const v3, 0x7f07010d

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_LIST:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 91
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "MediaCenter"

    const v2, 0x7f0200ec

    const v3, 0x7f07010e

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MEDIA_CENTER:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 93
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Live"

    const v2, 0x7f020164

    const v3, 0x7f07010f

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_LIVE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 95
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Record"

    const v2, 0x7f020128

    const v3, 0x7f070110

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RECORD:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 97
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Timer"

    const v2, 0x7f02015a

    const v3, 0x7f070111

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TIMER:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 100
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "A"

    const v2, 0x7f020062

    const v3, 0x7f070112

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_A:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 102
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "B"

    const v2, 0x7f020063

    const v3, 0x7f070113

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_B:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 104
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "C"

    const v2, 0x7f020064

    const v3, 0x7f070114

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_C:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 106
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "D"

    const v2, 0x7f020065

    const v3, 0x7f070115

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_D:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 108
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Red"

    const v2, 0x7f020129

    const v3, 0x7f070116

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RED:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 110
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Green"

    const v2, 0x7f0200ba

    const v3, 0x7f070117

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GREEN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 112
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Yellow"

    const v2, 0x7f020171

    const v3, 0x7f070118

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_YELLOW:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 114
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Blue"

    const v2, 0x7f02000e

    const v3, 0x7f070119

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_BLUE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 116
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Teletext"

    const v2, 0x7f020156

    const v3, 0x7f07011a

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TELETEXT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 118
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "TiVo"

    const v2, 0x7f02015c

    const v3, 0x7f07011b

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TIVO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 120
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "ThumbsUp"

    const v2, 0x7f020158

    const v3, 0x7f07011c

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_THUMBS_UP:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 122
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "ThumbsDown"

    const v2, 0x7f020157

    const v3, 0x7f07011d

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_THUMBS_DOWN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 124
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "MyTV"

    const v2, 0x7f0200f3

    const v3, 0x7f07011e

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_TV:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 126
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "MyVideos"

    const v2, 0x7f0200f4

    const v3, 0x7f07011f

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_VIDEO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 128
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "MyMusic"

    const v2, 0x7f0200ef

    const v3, 0x7f070120

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_MUSIC:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 130
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "MyPictures"

    const v2, 0x7f0200f0

    const v3, 0x7f070121

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_PICS:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 132
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "MyRadio"

    const v2, 0x7f0200f1

    const v3, 0x7f070122

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_RADIO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 134
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "RecordedTV"

    const v2, 0x7f070124

    invoke-direct {v0, v1, v7, v2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RECORDED_TV:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 136
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Aspect"

    const v2, 0x7f02000a

    const v3, 0x7f070125

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_ASPECT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 138
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Size"

    const/4 v2, -0x1

    const v3, 0x7f070126

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_SIZE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 140
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "NowPlaying"

    const v2, 0x7f0200f7

    const v3, 0x7f070127

    invoke-direct {v0, v1, v2, v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_NOWPLAYING:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 142
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const-string v1, "Search"

    const v3, 0x7f070128

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->SEARCH_TAB:Ljava/lang/Integer;

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_SEARCH:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 153
    const-class v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->LOG_TAG:Ljava/lang/String;

    .line 156
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    const/4 v1, 0x0

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_Y:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    sget-object v1, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_X:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_A:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_XBOX_B:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_TRI:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_SQR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_CIR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PLAYSTN_X:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTVLIVE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTVHOME:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTVSEARCH:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTV_BACK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GTV_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_BOOKMARK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_PIP:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_SWITCH_WINDOW:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TOP_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_STB_MENU:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GUIDE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_INFO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_EXIT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_DVR:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RETURN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_BACK:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_LIST:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MEDIA_CENTER:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_LIVE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RECORD:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TIMER:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_A:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_B:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_C:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_D:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RED:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_GREEN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_YELLOW:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_BLUE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TELETEXT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_TIVO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_THUMBS_UP:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_THUMBS_DOWN:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_TV:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_VIDEO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_MUSIC:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_PICS:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_MY_RADIO:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_RECORDED_TV:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_ASPECT:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_SIZE:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_NOWPLAYING:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->BTN_SEARCH:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aput-object v2, v0, v1

    sput-object v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;)V
    .locals 5
    .parameter "mCurrentActivity"

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->buttonEnabled:Z

    .line 151
    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->vgrpSliderButtons:Landroid/view/ViewGroup;

    .line 152
    iput-object v3, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    .line 426
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mScrollHandler:Landroid/os/Handler;

    .line 217
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 218
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getCommands()Lcom/logitech/harmonylink/harmony/Commands;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mActivityCommands:Lcom/logitech/harmonylink/harmony/Commands;

    .line 220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    .line 221
    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    array-length v1, v2

    .line 222
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    sget-object v2, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    sget-object v3, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getID()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mImageButtonDefArray:[Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0           #index:I
    .end local v1           #length:I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mScrollHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;)Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    return-object v0
.end method

.method private setPrimaryButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V
    .locals 7
    .parameter "dom"
    .parameter "button"
    .parameter "command"
    .parameter "tabNumber"
    .parameter "pageNumber"
    .parameter "baseView"

    .prologue
    .line 320
    new-instance v0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$CustomTouchListener;-><init>(Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    return-void
.end method


# virtual methods
.method public commandsEnable(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;Ljava/lang/String;Lcom/logitech/harmonylink/harmony/Command;)V
    .locals 8
    .parameter "baseView"
    .parameter "buttonDef"
    .parameter "buttonLabel"
    .parameter "newCmd"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f070004

    .line 271
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->vgrpSliderButtons:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getViewID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 273
    .local v3, primaryControlButton:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x30

    invoke-static {v2, v4}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 276
    const v1, 0x7f02004c

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android menu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "home"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    :cond_0
    const-string v1, "swapview"

    invoke-virtual {v3, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 290
    :goto_0
    instance-of v1, v3, Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 291
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object v4, v0

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object v4, v0

    const/4 v1, -0x1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 293
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 306
    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "switchWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    sget-object v4, Lcom/logitech/harmonylink/harmony/Command;->HOME:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getTabNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getPageNumber()Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->setKeyboardLongPressKeyButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 315
    :cond_2
    :goto_2
    return-void

    .line 284
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    const-string v1, "keyboard"

    invoke-virtual {v3, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_4
    const-string v1, "default"

    invoke-virtual {v3, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_5
    instance-of v1, v3, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 296
    if-eqz p2, :cond_1

    .line 297
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageButton;

    move-object v4, v0

    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getIconResourceID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 299
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageButton;

    move-object v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 310
    :cond_6
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getTabNumber()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getPageNumber()Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v4, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->setPrimaryButtonHandler(Lcom/logitech/harmonylink/harmony/Dom;Landroid/view/View;Lcom/logitech/harmonylink/harmony/Command;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V

    goto :goto_2
.end method

.method public getDom()Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method

.method public getFakePrimaryControls(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflatePrimaryControlView(Landroid/view/ViewGroup;Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "vgrpParent"
    .parameter "watchGtv"
    .parameter "watchGtvActivityContainer"

    .prologue
    .line 328
    invoke-virtual {p2}, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030055

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->vgrpSliderButtons:Landroid/view/ViewGroup;

    .line 330
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->vgrpSliderButtons:Landroid/view/ViewGroup;

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    .line 331
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->init()V

    .line 332
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->scrollView:Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/CustomHorizintalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 333
    invoke-virtual {p0, p2}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->retrieveButtons(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V

    .line 334
    return-void
.end method

.method public retrieveButtons(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V
    .locals 8
    .parameter "watchGtv"

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    const/4 v2, 0x0

    .line 245
    .local v2, buttonLabel:Ljava/lang/String;
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    if-eqz v6, :cond_2

    .line 246
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, activityType:Ljava/lang/String;
    const-string v6, "WatchGTV"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->buttonEnabled:Z

    if-nez v6, :cond_0

    .line 249
    sget-object v6, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    const-string v7, "switchWindow"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    check-cast v1, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 250
    .restart local v1       #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;->getID()Ljava/lang/String;

    move-result-object v2

    .line 251
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->buttonEnabled:Z

    .line 252
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v1, v2, v6}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->commandsEnable(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;Ljava/lang/String;Lcom/logitech/harmonylink/harmony/Command;)V

    .line 255
    :cond_0
    const/4 v3, 0x0

    .line 256
    .local v3, cmdName:Ljava/lang/String;
    iget-object v6, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mActivityCommands:Lcom/logitech/harmonylink/harmony/Commands;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/harmony/Commands;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/harmony/Command;

    .line 257
    .local v5, newCmd:Lcom/logitech/harmonylink/harmony/Command;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Command;->getName()Ljava/lang/String;

    move-result-object v3

    .line 258
    sget-object v6, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    sget-object v6, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mMapImageButtonDef:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    check-cast v1, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;

    .line 260
    .restart local v1       #buttonDef:Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Command;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {p0, p1, v1, v2, v5}, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->commandsEnable(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;Lcom/logitech/harmonylink/context/view/PrimaryControlInflator$PrimaryControlButtonDef;Ljava/lang/String;Lcom/logitech/harmonylink/harmony/Command;)V

    goto :goto_0

    .line 266
    .end local v0           #activityType:Ljava/lang/String;
    .end local v3           #cmdName:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #newCmd:Lcom/logitech/harmonylink/harmony/Command;
    :cond_2
    return-void
.end method

.method public setDom(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter "dom"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/PrimaryControlInflator;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 232
    return-void
.end method
