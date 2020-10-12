.class public Lcom/oneplus/screenshot/StitchViewService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "StitchViewService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "stitchViewService"

.field private static mInstance:Lcom/oneplus/screenshot/StitchViewService;


# instance fields
.field public mFirstPreview:Landroid/graphics/Bitmap;

.field mHeight:I

.field public mIsItFirstShot:Z

.field public mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mLastChildIndex:I

.field public mLastCropPosition:I

.field public mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

.field public mPreviousScollViewBottom:I

.field public mPreviousScollViewTop:I

.field public mScrollEndReached:Z

.field mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mScrollSearchPerformed:Z

.field public mScrollViewHeight:I

.field public mViewPropCallback:Lcom/oneplus/longshot/IViewPropCallback;

.field mWidth:I

.field public mWindowId:I

.field public providesScrollInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollEndReached:Z

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->providesScrollInfo:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Lcom/oneplus/longshot/IViewPropCallback;

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollViewHeight:I

    return-void
.end method

.method public static getInstance()Lcom/oneplus/screenshot/StitchViewService;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/StitchViewService;->mInstance:Lcom/oneplus/screenshot/StitchViewService;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized canFindScrollView()Z
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    if-eqz v0, :cond_2

    const-string v0, "stitchViewService"

    const-string v3, "canFindScrollView:got window id from server"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v5

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    sget-wide v7, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/StitchViewService;->findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canProvideScrollDistanceInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/StitchViewService;->providesScrollInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Lcom/oneplus/longshot/IViewPropCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollViewHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized findMatchedChildNodePosition()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "stitchViewService"

    const-string v2, "match found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "stitchViewService"

    const-string v1, "match not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/StitchViewService;->isValidScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "stitchViewService"

    const-string v1, "found in first check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/StitchViewService;->isValidScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "stitchViewService"

    const-string v2, "found in second check"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/StitchViewService;->findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    :try_start_0
    iget v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v2

    iget v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "stitchViewService"

    const-string v1, "could not get child from framework"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollEndReached:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->providesScrollInfo:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Lcom/oneplus/longshot/IViewPropCallback;

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollViewHeight:I

    return-void
.end method

.method isValidScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->isCompatibleScrollView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method protected onServiceConnected()V
    .locals 4

    const-string v0, "stitchViewService"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/oneplus/screenshot/StitchViewService;->mInstance:Lcom/oneplus/screenshot/StitchViewService;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mHeight:I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/StitchViewService;->mInstance:Lcom/oneplus/screenshot/StitchViewService;

    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startLongShot()Landroid/graphics/Rect;
    .locals 11

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->canProvideScrollDistanceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->takeScrollNodeContentViewShotByScrollDistance()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    const-string v2, "stitchViewService"

    if-eqz v1, :cond_1

    const-string v1, "got window id from server"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v4

    iget v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/StitchViewService;->findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    :try_start_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->takeScrollNodeContentViewShot()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot take long screenshot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method declared-synchronized takeScrollNodeContentViewShot()Landroid/graphics/Rect;
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getLastChildIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v5, :cond_0

    const/4 v0, 0x1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    iget v7, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto/16 :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v5

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->findMatchedChildNodePosition()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_2

    const-string v6, "stitchViewService"

    const-string v7, "last node incomplete"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    if-gez v6, :cond_1

    const-string v6, "stitchViewService"

    const-string v7, "top bound greater than bottom bound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginTop()I

    move-result v7

    if-ge v6, v7, :cond_2

    const-string v6, "stitchViewService"

    const-string v7, "Under title bar, have to stitch incomplete node"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_3

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v7, :cond_3

    const-string v6, "stitchViewService"

    const-string v7, "full size node"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v7, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    iget v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v7, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v7

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {v7, v2, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v7

    goto :goto_1

    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {v7, v2, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v7

    :goto_1
    const-string v6, "stitchViewService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "first- rect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "stitchViewService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "second -rect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "stitchViewService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scroll -rect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method takeScrollNodeContentViewShotByScrollDistance()Landroid/graphics/Rect;
    .locals 11

    const-string v0, "stitchViewService"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Lcom/oneplus/longshot/IViewPropCallback;

    invoke-interface {v6}, Lcom/oneplus/longshot/IViewPropCallback;->getViewProps()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "moveDistance"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v1, v8

    const-string v8, "top"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v2, v8

    const-string v8, "bottom"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    iget v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    sub-int v4, v8, v2

    :cond_0
    iget v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    sub-int v5, v8, v3

    :cond_1
    iput v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    iput v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollViewTopDelta:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollViewBottomDelta:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrolledDistance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    new-instance v7, Landroid/graphics/Rect;

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v9

    sub-int v9, v3, v9

    invoke-direct {v7, v8, v8, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v7

    iput-boolean v8, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v9

    sub-int v9, v3, v9

    sub-int/2addr v9, v5

    sub-int/2addr v9, v4

    sub-int/2addr v9, v1

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v10

    sub-int v10, v3, v10

    invoke-direct {v7, v8, v9, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v7

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shot bounds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    return-object v6
.end method
