.class Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$4;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, addmoreintent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method
