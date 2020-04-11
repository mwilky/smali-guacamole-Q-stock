.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

.field private final synthetic f$1:Landroidx/slice/core/SliceAction;

.field private final synthetic f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field private final synthetic f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$1:Landroidx/slice/core/SliceAction;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$1:Landroidx/slice/core/SliceAction;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;->f$3:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->lambda$bindView$0$SliceDeferredSetupCardRendererHelper(Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;Landroid/view/View;)V

    return-void
.end method
