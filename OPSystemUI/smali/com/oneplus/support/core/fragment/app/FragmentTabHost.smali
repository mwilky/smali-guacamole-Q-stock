.class public Lcom/oneplus/support/core/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;,
        Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

.field private mLastTab:Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/FragmentTransaction;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mLastTab:Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    if-eq v0, p1, :cond_4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mLastTab:Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->detach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mContainerId:I

    iget-object v1, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v2, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->add(ILcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->attach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mLastTab:Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    :cond_4
    return-object p2
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    iget-object v3, v2, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100f3

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    iget-object v5, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    iget-object v6, v4, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/oneplus/support/core/fragment/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mLastTab:Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v2

    :cond_1
    iget-object v4, v4, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$TabInfo;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v2, v4}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->detach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mAttached:Z

    invoke-direct {p0, v0, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/FragmentTransaction;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commit()I

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/oneplus/support/core/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Lcom/oneplus/support/core/fragment/app/FragmentTransaction;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
