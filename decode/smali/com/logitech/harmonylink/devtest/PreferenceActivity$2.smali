.class Lcom/logitech/harmonylink/devtest/PreferenceActivity$2;
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
    .line 48
    iput-object p1, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity$2;->this$0:Lcom/logitech/harmonylink/devtest/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/devtest/PreferenceActivity$2;->this$0:Lcom/logitech/harmonylink/devtest/PreferenceActivity;

    #calls: Lcom/logitech/harmonylink/devtest/PreferenceActivity;->reloadData()V
    invoke-static {v0}, Lcom/logitech/harmonylink/devtest/PreferenceActivity;->access$100(Lcom/logitech/harmonylink/devtest/PreferenceActivity;)V

    .line 51
    return-void
.end method
