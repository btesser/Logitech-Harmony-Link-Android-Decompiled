.class public Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;
.super Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
.source "UserDefinedPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

.field private mContext:Landroid/content/Context;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;-><init>(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V

    .line 1005
    iget-object v0, p1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    .line 1006
    iget-object v0, p1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mContext:Landroid/content/Context;

    .line 1007
    iget-object v0, p1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 1008
    iget-object v0, p1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 1009
    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 1
    .parameter "userDefinedPageView"
    .parameter "context"
    .parameter "dom"

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;-><init>()V

    .line 996
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->itemType:I

    .line 997
    iput-object p2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mContext:Landroid/content/Context;

    .line 998
    iput-object p3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 999
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 1000
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    return-object v0
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)Lcom/logitech/harmonylink/harmony/Dom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    .line 1029
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1031
    .local v0, button:Landroid/widget/Button;
    iput-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mCell:Landroid/view/View;

    .line 1033
    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1035
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1036
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1037
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLongClickable(Z)V

    .line 1038
    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1040
    new-instance v1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo$1;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1080
    return-object v0
.end method

.method public getHashKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->getHashKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1092
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1094
    const-string v0, "title"

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-string v0, "intent"

    iget-object v1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;->getHashKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public setButtonDef(Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;)V
    .locals 0
    .parameter "buttonDef"

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ButtonInfo;->mButtonDef:Lcom/logitech/harmonylink/context/view/UserDefinedPageView$DraggableButtonDef;

    .line 1013
    return-void
.end method
