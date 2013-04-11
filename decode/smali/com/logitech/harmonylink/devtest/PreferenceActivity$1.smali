.class Lcom/logitech/harmonylink/devtest/PreferenceActivity$1;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/devtest/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/devtest/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/devtest/PreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/PreferenceActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity$1;->this$0:Lcom/logitech/harmonylink/devtest/PreferenceActivity;

    iget-object v1, v1, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->editTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/devtest/PreferenceActivity;->updateIp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->access$000(Lcom/logitech/harmonylink/devtest/PreferenceActivity;Ljava/lang/String;)V

    .line 42
    return-void
.end method
