.class public Lcom/logitech/harmonylink/harmony/KbdKeycode;
.super Ljava/lang/Object;
.source "KbdKeycode.java"


# static fields
.field public static final BACK:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final BACKSPACE:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final BOOKMARK:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final CLOSE:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final DPAD_DOWN:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final DPAD_LEFT:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final DPAD_RIGHT:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final DPAD_UP:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final DVR:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final ENTER:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final GUIDE:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final HOME:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final LIVE_TV:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final MENU:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final PAGE_DOWN:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final PAGE_UP:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final PIP:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final SEARCH:Lcom/logitech/harmonylink/harmony/KbdKeycode;

.field public static final SWITCH_WINDOW:Lcom/logitech/harmonylink/harmony/KbdKeycode;


# instance fields
.field private mKey:B

.field private mMeta:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/16 v2, -0x5e

    .line 7
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->ENTER:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 8
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->DPAD_RIGHT:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 9
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->DPAD_LEFT:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 10
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->DPAD_UP:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 11
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->DPAD_DOWN:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 12
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    invoke-direct {v0, v2}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->BACK:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 13
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    invoke-direct {v0, v3}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->BACKSPACE:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 17
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, -0x59

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->DVR:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 18
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, -0x5a

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->GUIDE:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 19
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->PAGE_DOWN:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 20
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->PAGE_UP:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 24
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(II)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->SEARCH:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 25
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0xa3

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->MENU:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 26
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, 0xa5

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->PIP:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 27
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, -0x60

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->LIVE_TV:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 28
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    invoke-direct {v0, v2}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->CLOSE:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 29
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, -0x55

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->BOOKMARK:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 30
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, -0x5f

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->HOME:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    .line 31
    new-instance v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/harmony/KbdKeycode;-><init>(I)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->SWITCH_WINDOW:Lcom/logitech/harmonylink/harmony/KbdKeycode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "key"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->mMeta:B

    .line 39
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->mKey:B

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "meta"
    .parameter "key"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->mMeta:B

    .line 44
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->mKey:B

    .line 45
    return-void
.end method


# virtual methods
.method public getKey()B
    .locals 1

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->mKey:B

    return v0
.end method

.method public getMeta()B
    .locals 1

    .prologue
    .line 48
    iget-byte v0, p0, Lcom/logitech/harmonylink/harmony/KbdKeycode;->mMeta:B

    return v0
.end method
