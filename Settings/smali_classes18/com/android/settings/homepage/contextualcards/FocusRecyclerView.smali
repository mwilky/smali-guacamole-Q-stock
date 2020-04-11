.class public Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FocusRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/FocusRecyclerView;->mListener:Lcom/android/settings/homepage/contextualcards/FocusRecyclerView$FocusListener;

    return-void
.end method
