.class public Lcom/logitech/harmonylink/view/widget/CustomTabView;
.super Landroid/widget/RelativeLayout;
.source "CustomTabView.java"


# instance fields
.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContentViews:Landroid/widget/ViewAnimator;

.field private mTabIndicatorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTabIndicatorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->initialize()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->initialize()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/view/widget/CustomTabView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getCurrentTabTag(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "currentView"

    .prologue
    .line 117
    const-string v0, ""

    .line 118
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    return-object v0
.end method

.method private invokeOnTabChangeListener(Landroid/view/View;)V
    .locals 2
    .parameter "shownView"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->getCurrentTabTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "tabIndicatorView"
    .parameter "tabContentView"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p2}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/logitech/harmonylink/view/widget/CustomTabView$2;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/view/widget/CustomTabView$2;-><init>(Lcom/logitech/harmonylink/view/widget/CustomTabView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->getCurrentTabTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public setContentView(ILandroid/view/View;)V
    .locals 1
    .parameter "tabIndex"
    .parameter "contentView"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 77
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, p2, p1}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "tabIndex"

    .prologue
    .line 94
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 95
    .local v1, selectedTabView:Landroid/view/View;
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 97
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v4}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, shownView:Landroid/view/View;
    iget-object v4, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 100
    .local v3, tabView:Landroid/view/View;
    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 103
    .end local v3           #tabView:Landroid/view/View;
    :cond_1
    invoke-direct {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->invokeOnTabChangeListener(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public setCurrentTab(Ljava/lang/String;)V
    .locals 3
    .parameter "tabTag"

    .prologue
    .line 81
    if-eqz p1, :cond_1

    .line 82
    const/4 v0, 0x0

    .local v0, tabIndex:I
    :goto_0
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, tabView:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->setCurrentTab(I)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0           #tabIndex:I
    .end local v1           #tabView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 133
    return-void
.end method

.method public setup()V
    .locals 4

    .prologue
    .line 46
    const v2, 0x1020013

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 49
    .local v1, vgrpTabs:Landroid/view/ViewGroup;
    const v2, 0x1020011

    invoke-virtual {p0, v2}, Lcom/logitech/harmonylink/view/widget/CustomTabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabContentViews:Landroid/widget/ViewAnimator;

    .line 51
    const/4 v0, 0x0

    .local v0, childIndex:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorView:Landroid/view/View;

    .line 53
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v2, p0, Lcom/logitech/harmonylink/view/widget/CustomTabView;->mTabIndicatorView:Landroid/view/View;

    new-instance v3, Lcom/logitech/harmonylink/view/widget/CustomTabView$1;

    invoke-direct {v3, p0}, Lcom/logitech/harmonylink/view/widget/CustomTabView$1;-><init>(Lcom/logitech/harmonylink/view/widget/CustomTabView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method
