.class Lcom/logitech/harmonylink/context/EnterPinActivity$4;
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
    .line 136
    iput-object p1, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$4;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EnterPinActivity$4;->this$0:Lcom/logitech/harmonylink/context/EnterPinActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/EnterPinActivity;->finish()V

    .line 138
    return-void
.end method
