.class public Lcom/oneplus/screenshot/longshot/preview/PreviewController;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;
    }
.end annotation


# static fields
.field private static final MSG_BG_CREATE_PREVIEW:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Longshot.PreviewController"


# instance fields
.field private isPreviewStop:Z

.field private isStarted:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

.field private mCurrentBitmapCacheIndex:I

.field private mCurrentpage:I

.field private mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

.field private mMoveDistance:I

.field private mPageHeight:I

.field private mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

.field private mRedyToPreviewCacheCount:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mRedyToPreviewCacheCount:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPageHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentpage:I

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mMoveDistance:I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {v0, p2, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->addBitmap(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapFinish(Z)V

    return-void
.end method

.method private addBitmap(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add bitmapCache index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, " w:"

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v2

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v8, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    const-string v8, " with top h:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v8, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    const-string v8, " with bitmap h:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v7

    add-int/lit8 v2, v7, 0x2

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v7, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    const-string v7, " with bottom h:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Longshot.PreviewController"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addBitmap time:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v3

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBitmapFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateFinish(Z)V

    return-void
.end method

.method private updateNextBitmapCache()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    if-gt v2, v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache()Z

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStithComplete()Z

    move-result v6

    invoke-virtual {v2, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setIndex(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateNextBitmapCache JoinCache size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentBitmapCacheIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isFirst:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isLastCache:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isStitched:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Longshot.PreviewController"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v4, v5}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updatePreview(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    if-eqz v6, :cond_2

    iget v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;->onPreviewComplete()V

    :cond_0
    return-void
.end method

.method public getCurrentBitmapCacheIndex()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    return v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewLength()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v0

    return v0
.end method

.method public isPreviewComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    return v0
.end method

.method public onBackgroundScrollcomplete()V
    .locals 2

    const-string v0, "Longshot.PreviewController"

    const-string v1, " onBackgroundScrollcomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onBackgroundScrollcomplete()V

    return-void
.end method

.method public onScrollChanged(II)V
    .locals 0

    return-void
.end method

.method public onScrollcomplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;->onPreviewComplete()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStart isStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " onStart:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onStart()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setFirstBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onStop isStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onStop()V

    :cond_0
    const-string v0, " onStop:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    return-void
.end method

.method public requestNextBitmapCache()V
    .locals 0

    return-void
.end method

.method public setNavibar(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setNavibarView(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setStatusbar(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setStatusbrView(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updateBitmapCache()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPageHeight:I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateNextBitmapCache()V

    :cond_1
    return-void
.end method

.method public updatePreview(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
