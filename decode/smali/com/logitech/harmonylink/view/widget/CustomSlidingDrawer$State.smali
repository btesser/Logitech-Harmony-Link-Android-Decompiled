.class final enum Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
.super Ljava/lang/Enum;
.source "CustomSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

.field public static final enum ABOUT_TO_ANIMATE:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

.field public static final enum ANIMATING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

.field public static final enum FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

.field public static final enum READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

.field public static final enum TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    const-string v1, "ABOUT_TO_ANIMATE"

    invoke-direct {v0, v1, v2}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ABOUT_TO_ANIMATE:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 82
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    const-string v1, "ANIMATING"

    invoke-direct {v0, v1, v3}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ANIMATING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 83
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 84
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v5}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 85
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    const-string v1, "FLYING"

    invoke-direct {v0, v1, v6}, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ABOUT_TO_ANIMATE:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->ANIMATING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->READY:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->TRACKING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->FLYING:Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->$VALUES:[Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 80
    const-class v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    return-object p0
.end method

.method public static final values()[Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->$VALUES:[Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    invoke-virtual {v0}, [Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/logitech/harmonylink/view/widget/CustomSlidingDrawer$State;

    return-object v0
.end method
