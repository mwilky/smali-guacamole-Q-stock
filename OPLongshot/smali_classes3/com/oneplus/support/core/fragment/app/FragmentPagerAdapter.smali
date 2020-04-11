.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;
.super Lcom/oneplus/support/viewpager/widget/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

.field private final mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-object v1, p3

    check-cast v1, Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->detach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lcom/oneplus/support/core/fragment/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    invoke-virtual {v4, v3}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->attach(Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->getItem(I)Lcom/oneplus/support/core/fragment/app/Fragment;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurTransaction:Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->add(ILcom/oneplus/support/core/fragment/app/Fragment;Ljava/lang/String;)Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    :goto_0
    iget-object v4, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v3, v4}, Lcom/oneplus/support/core/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    move-object v0, p3

    check-cast v0, Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/oneplus/support/core/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
