.class Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SliceDeferredSetupCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeferredSetupCardViewHolder"
.end annotation


# instance fields
.field public final button:Landroid/widget/Button;

.field public final content:Landroid/widget/LinearLayout;

.field public final icon:Landroid/widget/ImageView;

.field public final summary:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->content:Landroid/widget/LinearLayout;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->summary:Landroid/widget/TextView;

    const v0, 0x7f0a0276

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->button:Landroid/widget/Button;

    return-void
.end method
