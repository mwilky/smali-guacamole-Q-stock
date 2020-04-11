.class Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 7
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingUri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-virtual {v2, v1, v0}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v2, Landroidx/slice/SliceStructure;

    invoke-direct {v2, p1}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mStructure:Landroidx/slice/SliceStructure;

    invoke-virtual {v3, v2}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v3

    if-ne v3, v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingUri:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingUri:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {p1, v3}, Landroidx/slice/core/SliceQuery;->findItem(Landroidx/slice/Slice;Landroid/net/Uri;)Landroidx/slice/SliceItem;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v5, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v5, v5, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingContext:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v6, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v6, v6, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingIntent:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {v3, v5, v6}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v6, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-virtual {v6, v4, v5}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v5, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingUri:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingContext:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->mPendingIntent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$4;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-static {v0, p1}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->access$000(Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;Ljava/lang/Object;)V

    return-void
.end method
