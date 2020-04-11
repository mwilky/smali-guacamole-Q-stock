.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

.field private final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field private final synthetic f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

.field private final synthetic f$3:Landroidx/slice/Slice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$3:Landroidx/slice/Slice;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$2:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;->f$3:Landroidx/slice/Slice;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->lambda$bindView$0$SliceFullCardRendererHelper(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method
