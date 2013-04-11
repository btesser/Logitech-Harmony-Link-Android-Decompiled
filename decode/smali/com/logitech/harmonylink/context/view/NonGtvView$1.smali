.class Lcom/logitech/harmonylink/context/view/NonGtvView$1;
.super Ljava/lang/Object;
.source "NonGtvView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/view/NonGtvView;->inflateBasicHarmonyView(Landroid/content/Context;Lcom/logitech/harmonylink/context/BaseHarmonyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/NonGtvView;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/view/NonGtvView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/NonGtvView$1;->this$0:Lcom/logitech/harmonylink/context/view/NonGtvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 77
    if-eqz p1, :cond_1

    const-string v0, "tab_keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, "tab_commands"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
