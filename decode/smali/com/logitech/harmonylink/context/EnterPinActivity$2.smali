.class Lcom/logitech/harmonylink/context/EnterPinActivity$2;
.super Ljava/lang/Object;
.source "EnterPinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/EnterPinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/EnterPinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$2;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 116
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 117
    .local v1, button:Landroid/widget/Button;
    iget-object v2, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$2;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/logitech/harmonylink/context/EnterPinActivity;->doButtonPush(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/logitech/harmonylink/context/EnterPinActivity;->access$200(Lcom/logitech/harmonylink/context/EnterPinActivity;Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method
