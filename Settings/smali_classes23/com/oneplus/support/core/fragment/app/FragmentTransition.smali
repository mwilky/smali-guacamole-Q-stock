.class Lcom/oneplus/support/core/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    invoke-static {}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->resolveSupportImpl()Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v10, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget v11, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainerId:I

    if-nez v11, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v5, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    aget v4, v4, v5

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;->cmd:I

    :goto_0
    move v12, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v12, v9, :cond_e

    const/4 v13, 0x3

    if-eq v12, v13, :cond_a

    const/4 v13, 0x4

    if-eq v12, v13, :cond_6

    const/4 v13, 0x5

    if-eq v12, v13, :cond_3

    const/4 v13, 0x6

    if-eq v12, v13, :cond_a

    const/4 v13, 0x7

    if-eq v12, v13, :cond_e

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto/16 :goto_6

    :cond_3
    if-eqz p4, :cond_5

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_4

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_4

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_4

    move v8, v9

    :cond_4
    move v4, v8

    goto :goto_1

    :cond_5
    iget-boolean v4, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    :goto_1
    const/4 v7, 0x1

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto/16 :goto_6

    :cond_6
    if-eqz p4, :cond_8

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_7

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_7

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_7

    move v8, v9

    :cond_7
    move v6, v8

    goto :goto_2

    :cond_8
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_9

    move v8, v9

    :cond_9
    move v6, v8

    :goto_2
    const/4 v5, 0x1

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_c

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_b

    iget-object v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v13, :cond_b

    iget-object v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_b

    iget v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_b

    move v8, v9

    goto :goto_3

    :cond_b
    nop

    :goto_3
    move v6, v8

    goto :goto_4

    :cond_c
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_d

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_d

    move v8, v9

    :cond_d
    move v6, v8

    :goto_4
    const/4 v5, 0x1

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    goto :goto_6

    :cond_e
    if-eqz p4, :cond_f

    iget-boolean v4, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_5

    :cond_f
    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_10

    iget-boolean v13, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_10

    move v8, v9

    :cond_10
    move v4, v8

    :goto_5
    const/4 v7, 0x1

    move v13, v4

    move v15, v5

    move/from16 v16, v6

    move v14, v7

    :goto_6
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz v13, :cond_11

    nop

    invoke-static {v4, v2, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->ensureContainer(Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v4

    iput-object v10, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-boolean v3, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object v0, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object v8, v4

    goto :goto_7

    :cond_11
    move-object v8, v4

    :goto_7
    const/4 v7, 0x0

    if-nez p4, :cond_14

    if-eqz v14, :cond_14

    if-eqz v8, :cond_12

    iget-object v4, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v4, v10, :cond_12

    iput-object v7, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    :cond_12
    iget-object v6, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget v4, v10, Lcom/oneplus/support/core/fragment/app/Fragment;->mState:I

    if-ge v4, v9, :cond_13

    iget v4, v6, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v4, v9, :cond_13

    iget-boolean v4, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_13

    invoke-virtual {v6, v10}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->makeActive(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v5, v10

    move-object/from16 v20, v6

    move v6, v9

    move-object v9, v7

    move/from16 v7, v17

    move-object/from16 v21, v8

    move/from16 v8, v18

    move-object v1, v9

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    goto :goto_8

    :cond_13
    move-object/from16 v20, v6

    move-object v1, v7

    move-object/from16 v21, v8

    goto :goto_8

    :cond_14
    move-object v1, v7

    move-object/from16 v21, v8

    :goto_8
    if-eqz v16, :cond_16

    move-object/from16 v4, v21

    if-eqz v4, :cond_15

    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-nez v5, :cond_17

    :cond_15
    nop

    invoke-static {v4, v2, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->ensureContainer(Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v8

    iput-object v10, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    iput-boolean v3, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object v0, v8, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object v4, v8

    goto :goto_9

    :cond_16
    move-object/from16 v4, v21

    :cond_17
    :goto_9
    if-nez p4, :cond_18

    if-eqz v15, :cond_18

    if-eqz v4, :cond_18

    iget-object v5, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-ne v5, v10, :cond_18

    iput-object v1, v4, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    :cond_18
    return-void
.end method

.method public static calculateFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/oneplus/support/collection/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    add-int/lit8 v1, p4, -0x1

    :goto_0
    if-lt v1, p3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-virtual {v2, p0}, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v3, :cond_1

    iget-object v5, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    invoke-virtual {v0, v8, v10}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v8, v9}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static calculatePopFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;

    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addToFirstInLastOut(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Lcom/oneplus/support/core/fragment/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Z",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v0

    :goto_0
    nop

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {p3, v4}, Lcom/oneplus/support/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v4}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {v0, v2, v1, v4}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2, v1, v4}, Lcom/oneplus/support/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v2}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v3, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean v4, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v4

    iget-object v5, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v4

    iget-object v5, v3, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v2, v5}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v4, :cond_7

    invoke-virtual {v4, v5, v2}, Lcom/oneplus/support/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-nez v8, :cond_3

    invoke-static {p1, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->findKeyForValue(Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p1, v9}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v8}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p1, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->findKeyForValue(Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_6
    goto :goto_4

    :cond_7
    invoke-static {p1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->retainValues(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/collection/ArrayMap;)V

    :goto_4
    return-object v2

    :cond_8
    :goto_5
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v2, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    iget-boolean v3, p3, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v3

    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransitionCallback()Lcom/oneplus/support/core/app/SharedElementCallback;

    move-result-object v3

    iget-object v4, v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v1, v4}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/support/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_2

    invoke-virtual {p1, v6}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1, v6}, Lcom/oneplus/support/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Lcom/oneplus/support/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Lcom/oneplus/support/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/oneplus/support/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/oneplus/support/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :goto_3
    return-object v1

    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_7

    invoke-static {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-object v1

    :cond_7
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_8

    invoke-static {v1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->canHandleAll(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    return-object v1

    :cond_8
    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez v1, :cond_9

    sget-object v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez v1, :cond_9

    return-object v2

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Transition types"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_2
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v12, p7

    iget-object v11, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v10, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v11, :cond_6

    if-nez v10, :cond_0

    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_3

    :cond_0
    iget-boolean v9, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v13, v11, v10, v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    move-object/from16 v8, p3

    invoke-static {v13, v8, v1, v14}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    :goto_1
    if-nez v12, :cond_3

    if-nez p8, :cond_3

    if-nez v6, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v11, v10, v9, v7, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    if-eqz v6, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v0

    move-object/from16 v4, p2

    invoke-virtual {v13, v6, v4, v15}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v3, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iget-object v2, v14, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move/from16 v17, v3

    move-object v3, v7

    move/from16 v4, v17

    move-object/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    if-eqz v12, :cond_4

    invoke-virtual {v13, v12, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_4
    move-object/from16 v16, v7

    goto :goto_2

    :cond_5
    move-object/from16 v18, v7

    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_2
    move-object v3, v6

    new-instance v7, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v17, v6

    move-object/from16 v6, p2

    move-object v13, v7

    move-object v7, v11

    move-object v8, v10

    move/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v10, p5

    move-object/from16 v21, v11

    move-object/from16 v11, p7

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$4;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v13}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    return-object v17

    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_3
    return-object v0
.end method

.method private static configureSharedElementsReordered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    iget-object v15, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v7, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v15, :cond_9

    if-nez v7, :cond_1

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    goto/16 :goto_3

    :cond_1
    iget-boolean v6, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v8, v15, v7, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    invoke-static {v8, v10, v1, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureOutSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v5

    invoke-static {v8, v10, v1, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->captureInSharedElements(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/oneplus/support/collection/ArrayMap;->clear()V

    :cond_4
    move-object v3, v1

    goto :goto_1

    :cond_5
    nop

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v12, v5, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V

    nop

    invoke-virtual/range {p3 .. p3}, Lcom/oneplus/support/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v13, v4, v2}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/oneplus/support/collection/ArrayMap;Ljava/util/Collection;)V

    move-object v3, v1

    :goto_1
    if-nez v14, :cond_6

    if-nez p8, :cond_6

    if-nez v3, :cond_6

    return-object v0

    :cond_6
    const/4 v0, 0x1

    invoke-static {v15, v7, v6, v5, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Z)V

    if-eqz v3, :cond_8

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3, v9, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v2, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iget-object v1, v11, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object v1, v3

    move/from16 v17, v2

    move-object/from16 v2, p8

    move-object/from16 v18, v3

    move-object v3, v5

    move-object v9, v4

    move/from16 v4, v17

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v9, v11, v14, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v8, v14, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object/from16 v17, v0

    move-object/from16 v16, v1

    goto :goto_2

    :cond_8
    move-object/from16 v18, v3

    move-object v9, v4

    move-object/from16 v19, v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    :goto_2
    new-instance v5, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;

    move-object v0, v5

    move-object v1, v15

    move-object v2, v7

    move v3, v6

    move-object v4, v9

    move-object v8, v5

    move-object/from16 v5, v16

    move/from16 v20, v6

    move-object/from16 v6, p0

    move-object/from16 v21, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$3;-><init>(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;ZLcom/oneplus/support/collection/ArrayMap;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v8}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    return-object v18

    :cond_9
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    :goto_3
    return-object v0
.end method

.method private static configureTransitionsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "I",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v14, v1

    goto :goto_0

    :cond_0
    move/from16 v13, p1

    move-object v14, v1

    :goto_0
    if-nez v14, :cond_1

    return-void

    :cond_1
    iget-object v15, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v9, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v9, v15}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    if-nez v8, :cond_2

    return-void

    :cond_2
    iget-boolean v7, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iget-boolean v6, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    invoke-static {v8, v15, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v9, v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    move-object v1, v8

    move-object/from16 v24, v2

    move-object v2, v14

    move-object/from16 v25, v3

    move-object/from16 v3, p3

    move-object/from16 v16, v4

    move-object/from16 v4, p4

    move-object/from16 v26, v5

    move-object/from16 v5, p2

    move/from16 v27, v6

    move-object/from16 v6, v25

    move/from16 v28, v7

    move-object/from16 v7, v24

    move-object v0, v8

    move-object/from16 v8, v26

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v9, v26

    if-nez v9, :cond_3

    if-nez v29, :cond_3

    move-object/from16 v1, v16

    if-nez v1, :cond_4

    return-void

    :cond_3
    move-object/from16 v1, v16

    :cond_4
    move-object/from16 v8, v25

    invoke-static {v0, v1, v13, v8, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v25

    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v26, v1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v26, v1

    :goto_2
    invoke-virtual {v0, v9, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    iget-boolean v6, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object v5, v15

    invoke-static/range {v1 .. v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v29

    move-object/from16 v23, v24

    invoke-virtual/range {v16 .. v23}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v1, v0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object v6, v9

    move-object v10, v7

    move-object/from16 v7, v19

    move-object/from16 v16, v8

    move-object/from16 v8, v26

    move-object/from16 v17, v9

    move-object/from16 v9, v25

    invoke-static/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->scheduleTargetChange(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-virtual {v0, v14, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v0, v14, v1, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_3

    :cond_7
    move-object v10, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v1, v24

    :goto_3
    return-void
.end method

.method private static configureTransitionsReordered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "I",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mContainer:Lcom/oneplus/support/core/fragment/app/FragmentContainer;

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    move-object v13, v1

    goto :goto_0

    :cond_0
    move/from16 v12, p1

    move-object v13, v1

    :goto_0
    if-nez v13, :cond_1

    return-void

    :cond_1
    iget-object v14, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/oneplus/support/core/fragment/app/Fragment;

    iget-object v15, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-static {v15, v14}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->chooseImpl(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;)Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    move-result-object v9

    if-nez v9, :cond_2

    return-void

    :cond_2
    iget-boolean v8, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iget-boolean v7, v10, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    invoke-static {v9, v14, v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v15, v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    move-object/from16 v17, v4

    move-object/from16 v4, p4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    move/from16 v20, v7

    move-object/from16 v7, v19

    move/from16 v21, v8

    move-object/from16 v8, v17

    move-object v0, v9

    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureSharedElementsReordered(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    move-object/from16 v7, v16

    if-nez v7, :cond_4

    return-void

    :cond_3
    move-object/from16 v7, v16

    :cond_4
    move-object/from16 v6, v18

    invoke-static {v0, v7, v15, v6, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v4, v19

    invoke-static {v0, v8, v14, v4, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x4

    invoke-static {v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object v1, v0

    move-object v2, v8

    move-object/from16 v16, v3

    move-object v3, v7

    move-object v10, v4

    move-object v4, v9

    move-object v11, v5

    move-object v5, v14

    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v0, v7, v15, v11}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->replaceHide(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;)V

    nop

    invoke-virtual {v0, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    move-object v1, v0

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v12, v6

    move-object v6, v11

    move-object/from16 v19, v7

    move-object v7, v9

    move-object/from16 v22, v8

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v13, v12}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    move-object/from16 v2, v16

    invoke-static {v2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1, v10}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    move-object v12, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v8

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    :goto_1
    return-void
.end method

.method private static ensureContainer(Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Lcom/oneplus/support/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getInEpicenterView(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    nop

    invoke-virtual {p0, v1}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mergeTransitions(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private static replaceHide(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->setHideReplaced(Z)V

    nop

    invoke-virtual {p2}, Lcom/oneplus/support/core/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v0, p2, Lcom/oneplus/support/core/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;

    invoke-direct {v1, p3}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    .locals 3

    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private static retainValues(Lcom/oneplus/support/collection/ArrayMap;Lcom/oneplus/support/collection/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/support/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/oneplus/support/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Landroid/view/ViewGroup;",
            "Lcom/oneplus/support/core/fragment/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v9, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/support/core/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lcom/oneplus/support/collection/ArrayMap;ZLcom/oneplus/support/core/fragment/app/BackStackRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/oneplus/support/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object v1, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p5, Lcom/oneplus/support/core/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    nop

    invoke-virtual {p3, v0}, Lcom/oneplus/support/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static startTransitions(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/core/fragment/app/BackStackRecord;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, v0, p5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->calculatePopFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_1
    invoke-static {v2, v0, p5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->calculateFragments(Lcom/oneplus/support/core/fragment/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mHost:Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/oneplus/support/collection/ArrayMap;

    move-result-object v5

    nop

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;

    if-eqz p5, :cond_3

    invoke-static {p0, v4, v6, v1, v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureTransitionsReordered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V

    goto :goto_3

    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->configureTransitionsOrdered(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;ILcom/oneplus/support/core/fragment/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/oneplus/support/collection/ArrayMap;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static supportsTransition()Z
    .locals 1

    sget-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/support/core/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lcom/oneplus/support/core/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
