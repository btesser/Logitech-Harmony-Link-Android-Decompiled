.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$13;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->showDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$13;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$13;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 874
    return-void
.end method
