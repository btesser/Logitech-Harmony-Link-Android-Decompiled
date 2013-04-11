.class Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;
.super Ljava/lang/Object;
.source "WatchGTVView.java"

# interfaces
.implements Lcom/logitech/harmonylink/context/view/IKeyboardViewObserver;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowWatchGTVviewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    #getter for: Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mDirectNavigationTabs:Lcom/logitech/harmonylink/view/widget/CustomTabView;
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->access$100(Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;)Lcom/logitech/harmonylink/view/widget/CustomTabView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 274
    return-void
.end method

.method public showWatchGTVDPadView()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView$ShowWatchGTVviewObserver;->this$0:Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;

    iget-object v0, v0, Lcom/logitech/harmonylink/ka1x/view/WatchGTVView;->mActualWatchGtvView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method
