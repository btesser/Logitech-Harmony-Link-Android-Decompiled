.class Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;
.super Ljava/lang/Object;
.source "BaseHarmonyView.java"

# interfaces
.implements Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/BaseHarmonyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowWatchGTVviewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/BaseHarmonyView;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 301
    return-void
.end method

.method public showWatchGTVDPadView()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView$ShowWatchGTVviewObserver;->this$0:Lcom/logitech/harmonylink/context/view/BaseHarmonyView;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/view/BaseHarmonyView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method
