.class Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;
.super Ljava/lang/Object;
.source "SliceDeferredSetupCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceDSCRendererHelper"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->getPrimaryAction()Landroidx/slice/core/SliceAction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->button:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;

    invoke-direct {v4, p0, v2, p2, v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceDeferredSetupCardRendererHelper$D-OZ-0A1lMkUzCRoBbUlbd_xrjQ;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public synthetic lambda$bindView$0$SliceDeferredSetupCardRendererHelper(Landroidx/slice/core/SliceAction;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;Landroid/view/View;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SliceDSCRendererHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p3}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper$DeferredSetupCardViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 v3, 0x682

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
