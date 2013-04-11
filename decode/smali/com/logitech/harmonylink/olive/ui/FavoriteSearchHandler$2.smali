.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableSearchButton(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$300(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$300(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;->enableSearchButton(Z)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$2;->enableSearchButton(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 104
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 98
    return-void
.end method
