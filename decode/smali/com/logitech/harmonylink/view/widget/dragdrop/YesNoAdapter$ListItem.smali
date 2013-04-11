.class public Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;
.super Ljava/lang/Object;
.source "YesNoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public final actionTag:I

.field public final image:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;Landroid/content/res/Resources;III)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 55
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 56
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 60
    :goto_0
    iput p5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->actionTag:I

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;Landroid/content/res/Resources;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "_text"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->this$0:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p3, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 65
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 66
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 70
    :goto_0
    iput p5, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->actionTag:I

    .line 71
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter$ListItem;->actionTag:I

    return v0
.end method
