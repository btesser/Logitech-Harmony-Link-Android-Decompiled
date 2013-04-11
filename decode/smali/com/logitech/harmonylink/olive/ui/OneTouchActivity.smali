.class public Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "OneTouchActivity.java"

# interfaces
.implements Lcom/logitech/harmonylink/harmony/IDomObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;
    }
.end annotation


# static fields
.field public static final NOTIFY_GRID:Ljava/lang/String; = "notify gridview"

.field public static final REMOVE_ICON_PATH:Ljava/lang/String; = "remove icon path"

.field public static final SOURCEONETOUCH:Ljava/lang/String; = "fromonetouch"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field addNewFavouritesClicked:Landroid/view/View$OnClickListener;

.field editNDoneButtonClicked:Landroid/view/View$OnClickListener;

.field private mActivityContext:Landroid/content/Context;

.field private mAddNewFavourites:Landroid/widget/Button;

.field private mAppContext:Landroid/content/Context;

.field private mEditNDoneButton:Landroid/widget/Button;

.field private mHarmonyLinkUID:Ljava/lang/String;

.field private mIsInEditMode:Z

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mNoActivityTextView:Landroid/widget/TextView;

.field private mNumberOfActivities:I

.field private mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

.field private mOneTouchContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation
.end field

.field private mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

.field private mServerIdentity:Ljava/lang/String;

.field private mSpinny:Landroid/widget/ProgressBar;

.field private mTitleBar:Landroid/widget/TextView;

.field private mTrashView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 73
    const-class v0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->LOG_TAG:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->editNDoneButtonClicked:Landroid/view/View$OnClickListener;

    .line 243
    new-instance v0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$4;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$4;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->addNewFavouritesClicked:Landroid/view/View$OnClickListener;

    .line 614
    return-void
.end method

.method static synthetic access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/util/AttributeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getTextViewAttributes()Landroid/util/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mHarmonyLinkUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mIsInEditMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$700(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/util/AttributeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getButtonAttributes()Landroid/util/AttributeSet;

    move-result-object v0

    return-object v0
.end method

.method private addNewActivitiesToDb(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, activityIdsFromHub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, activityIdsFromDb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v2, newActivityIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/logitech/harmonylink/dao/OneTouchDao;->getTotalOneTouchItems(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 530
    .local v4, numberOfOneTouchItems:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 534
    invoke-direct {p0, v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->createOneTouchContent(Ljava/lang/String;)Lcom/logitech/harmonylink/model/OneTouchContent;

    move-result-object v3

    .line 535
    .local v3, newOneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    sget-object v5, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    sget-object v6, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v6, v3, v4}, Lcom/logitech/harmonylink/dao/OneTouchDao;->insert(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;I)Z

    .line 538
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #newOneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_1
    return-object v2
.end method

.method private createOneTouchContent(Ljava/lang/String;)Lcom/logitech/harmonylink/model/OneTouchContent;
    .locals 7
    .parameter "activityId"

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 554
    .local v0, activitiesFromHub:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-virtual {v0, p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v1

    .line 555
    .local v1, activity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, activityName:Ljava/lang/String;
    new-instance v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    const-string v5, "activities"

    invoke-direct {v3, v2, v5}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .local v3, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v4

    .line 561
    .local v4, resourceId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/model/OneTouchContent;->setResourceId(I)V

    .line 563
    invoke-virtual {v3, p1}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 565
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    return-object v3
.end method

.method private deleteActivitiesFromDb(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, activityIdsFromHub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, activityIdsFromDb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, activitiesToBeDeleted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 499
    .local v3, id:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 501
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "activities"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 502
    .local v5, whereArgs:[Ljava/lang/String;
    const-string v6, "revue_uuid = ? AND category = ? AND launcher_parameter = ?"

    invoke-static {p0, v6, v5}, Lcom/logitech/harmonylink/dao/OneTouchDao;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 508
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 509
    .local v4, item:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v4}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    .end local v4           #item:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 519
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private displayNoActivityMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 433
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNoActivityTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    return-void
.end method

.method private fetchActivityIdsFromHub()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v1

    .line 478
    .local v1, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v2, activityIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 481
    .local v0, a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v0           #a:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    :cond_0
    return-object v2
.end method

.method private getButtonAttributes()Landroid/util/AttributeSet;
    .locals 7

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, attributes:Landroid/util/AttributeSet;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 260
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x7f030040

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 262
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    .line 265
    .local v4, state:I
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 271
    :goto_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 272
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 279
    :goto_1
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e1:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v1           #e1:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 269
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v1           #e1:Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1
.end method

.method private getOneTouchContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)Ljava/util/ArrayList;
    .locals 9
    .parameter "harmonyActivities"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .restart local v3       #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    invoke-virtual {p1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    .line 446
    .local v4, harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, activityName:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, activityId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, activityType:Ljava/lang/String;
    new-instance v6, Lcom/logitech/harmonylink/model/OneTouchContent;

    const-string v7, "activities"

    invoke-direct {v6, v1, v7}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .local v6, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-static {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/model/OneTouchContent;->setResourceId(I)V

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v6, v0}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    .end local v0           #activityId:Ljava/lang/String;
    .end local v1           #activityName:Ljava/lang/String;
    .end local v2           #activityType:Ljava/lang/String;
    .end local v4           #harmonyActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_0
    return-object v3
.end method

.method private getTextViewAttributes()Landroid/util/AttributeSet;
    .locals 7

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, attributes:Landroid/util/AttributeSet;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 291
    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x7f030040

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 293
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    .line 296
    .local v4, state:I
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 302
    :goto_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 303
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 310
    :goto_1
    return-object v0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, e1:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v1           #e1:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 300
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v1           #e1:Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1
.end method

.method private setAddNewFavoritesButton()V
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v0

    iput v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNumberOfActivities:I

    .line 421
    iget v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNumberOfActivities:I

    if-lez v0, :cond_0

    .line 422
    iget-boolean v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mIsInEditMode:Z

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method private showScreenContent()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v1

    .line 364
    .local v1, dom:Lcom/logitech/harmonylink/harmony/Dom;
    const/4 v3, 0x0

    .line 366
    .local v3, numberOfActivities:I
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 371
    .local v0, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->size()I

    move-result v3

    .line 373
    invoke-static {p0}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->getSharedPrefs(Landroid/content/Context;)Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;

    move-result-object v4

    .line 375
    .local v4, sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;->isPreviouslyPairedBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->storePairedFlag()V

    .line 378
    if-lez v3, :cond_0

    .line 379
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->showShadeScreen()V

    .line 380
    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getOneTouchContents(Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    .line 382
    :try_start_0
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    iget-object v7, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcom/logitech/harmonylink/dao/OneTouchDao;->bulkInsert(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0           #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .end local v4           #sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_0
    :goto_0
    if-lez v3, :cond_2

    .line 403
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNoActivityTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v5, v8}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVisibility(I)V

    .line 405
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyGridAdapter(Ljava/util/ArrayList;)V

    .line 406
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->enableVisibility()V

    .line 408
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 409
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->setAddNewFavoritesButton()V

    .line 414
    :goto_1
    return-void

    .line 386
    .restart local v0       #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .restart local v4       #sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 387
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onDomUpdated: Exception while inserting the One Touch items into db."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 391
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    if-lez v3, :cond_0

    .line 392
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNoActivityTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    sget-object v6, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v6}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "82"

    invoke-static {v5, v1, v6, v7}, Lcom/logitech/harmonylink/dao/OneTouchDao;->retrieveContents(Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchContents:Ljava/util/ArrayList;

    .line 397
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->updateOneTouchContentsInDb()V

    goto :goto_0

    .line 411
    .end local v0           #activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    .end local v4           #sharedPrefs:Lcom/logitech/harmonylink/provider/RemoteSharedPrefs;
    :cond_2
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->displayNoActivityMessage()V

    goto :goto_1
.end method

.method private updateActivityNamesInDb(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, activityIdsFromHub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, activityIdsFromDb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v11, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v11}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v11

    invoke-virtual {v11}, Lcom/logitech/harmonylink/harmony/Dom;->getActivities()Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;

    move-result-object v0

    .line 579
    .local v0, activities:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 580
    .local v6, hubActivityId:Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivities;->find(Ljava/lang/String;)Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;

    move-result-object v5

    .line 581
    .local v5, hubActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getName()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, hubActivityName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, activityType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 586
    .local v2, dbActivityId:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 587
    iget-object v11, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    invoke-static {v11, v12, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->retrieveActvityName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, dbActivityNameAndImageHash:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 590
    iget-object v11, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-static {v11, v12, v13, v7}, Lcom/logitech/harmonylink/dao/OneTouchDao;->updateDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 593
    :cond_2
    const/4 v11, 0x1

    aget-object v11, v3, v11

    const-string v12, "resource:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 594
    .local v10, imageResource:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getActivityType(I)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, dbActivityType:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 596
    iget-object v11, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resource:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;->getIconResourceIDbyActivityType(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v2, v13}, Lcom/logitech/harmonylink/dao/OneTouchDao;->updateImageHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 601
    .end local v1           #activityType:Ljava/lang/String;
    .end local v2           #dbActivityId:Ljava/lang/String;
    .end local v3           #dbActivityNameAndImageHash:[Ljava/lang/String;
    .end local v4           #dbActivityType:Ljava/lang/String;
    .end local v5           #hubActivity:Lcom/logitech/harmonylink/harmony/LogitechHarmonyActivity;
    .end local v6           #hubActivityId:Ljava/lang/String;
    .end local v7           #hubActivityName:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #imageResource:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateOneTouchContentsInDb()V
    .locals 3

    .prologue
    .line 464
    sget-object v2, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->fetchActivityIdsFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    .local v0, activityIdsFromDb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->fetchActivityIdsFromHub()Ljava/util/ArrayList;

    move-result-object v1

    .line 467
    .local v1, activityIdsFromHub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->deleteActivitiesFromDb(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 468
    invoke-direct {p0, v1, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->addNewActivitiesToDb(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 469
    invoke-direct {p0, v1, v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->updateActivityNamesInDb(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 470
    return-void
.end method


# virtual methods
.method public isContentToHaveIds()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAppContext:Landroid/content/Context;

    .line 102
    iput-object p0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mActivityContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0, v8}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->requestWindowFeature(I)Z

    .line 104
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v0, dsp:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .local v2, screenWidth:I
    const v4, 0x7f030040

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->setContentView(I)V

    .line 110
    iput-boolean v7, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mIsInEditMode:Z

    .line 112
    const v4, 0x7f0700cc

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    .line 113
    const v4, 0x7f0700ce

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    .line 115
    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    .line 117
    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    .line 118
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    const v5, 0x7f020112

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    const v4, 0x7f0700cf

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNoActivityTextView:Landroid/widget/TextView;

    .line 121
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mNoActivityTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const v4, 0x7f0700d0

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    .line 124
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setTrashItem(Landroid/widget/ImageView;)V

    .line 125
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v4, v2}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setWidth(I)V

    .line 127
    new-instance v4, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-direct {v4, v5, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;-><init>(Lcom/logitech/harmonylink/context/view/OneTouchGridView;Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    .line 128
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->setButtons(Landroid/widget/ProgressBar;)V

    .line 130
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    new-instance v5, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;)V

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v4, v7}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVerticalScrollBarEnabled(Z)V

    .line 132
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    new-instance v5, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$1;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 153
    const v4, 0x7f0700cd

    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;

    .line 154
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->editNDoneButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->addNewFavouritesClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setFocusable(Z)V

    .line 161
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v4, v10}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setVisibility(I)V

    .line 162
    iget-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mSpinny:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    const-string v4, "ConnectClient"

    invoke-virtual {p0, v4, v8}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, pref:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 167
    sget-object v4, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/logitech/connect/ConnectClient;->getServerIdentity()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, serverIdentity:Ljava/lang/String;
    const-string v4, "serverIdentity"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    .line 170
    sget-object v4, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mServerIdentity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setHarmonyLinkID(Ljava/lang/String;)V

    .line 173
    .end local v3           #serverIdentity:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    new-instance v5, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$2;

    invoke-direct {v5, p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$2;-><init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->addOneShotServiceStartObserver(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/logitech/harmonylink/harmony/Dom;->removeObserver(Lcom/logitech/harmonylink/harmony/IDomObserver;)V

    .line 606
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->setKeepAlive(Z)V

    .line 607
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->clear()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    .line 611
    :cond_0
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onDestroy()V

    .line 612
    return-void
.end method

.method public onDomUpdated(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->showScreenContent()V

    .line 360
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 316
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    move v0, v2

    .line 327
    :goto_0
    return v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->finish()V

    move v0, v2

    .line 324
    goto :goto_0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iput-object p0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;

    .line 333
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->canActivityResume()V

    .line 334
    sget-object v0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mApplication:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/logitech/connect/ConnectClient;->setKeepAlive(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->hashCheckForOlive(Lcom/logitech/connect/client/transport/IResponseHandler;)V

    .line 336
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onResume()V

    .line 337
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onStop()V

    .line 343
    return-void
.end method
