.class public abstract Landroidx/leanback/widget/ObjectAdapter;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ObjectAdapter$DataObservable;,
        Landroidx/leanback/widget/ObjectAdapter$DataObserver;
    }
.end annotation


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

.field private mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/Presenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    new-instance v0, Landroidx/leanback/widget/SinglePresenterSelector;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/SinglePresenterSelector;-><init>(Landroidx/leanback/widget/Presenter;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
.end method

.method public getId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Presenter selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public final hasObserver()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->hasObserver()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyChanged()V

    return-void
.end method

.method protected final notifyItemMoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method protected final notifyItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method protected final notifyItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method protected onHasStableIdsChanged()V
    .locals 0

    return-void
.end method

.method protected onPresenterSelectorChanged()V
    .locals 0

    return-void
.end method

.method public final registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->onHasStableIdsChanged()V

    :cond_1
    return-void
.end method

.method public final setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-object p1, p0, Landroidx/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->onPresenterSelectorChanged()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->notifyChanged()V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Presenter selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract size()I
.end method

.method public final unregisterAllObservers()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->unregisterAll()V

    return-void
.end method

.method public final unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ObjectAdapter;->mObservable:Landroidx/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ObjectAdapter$DataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
