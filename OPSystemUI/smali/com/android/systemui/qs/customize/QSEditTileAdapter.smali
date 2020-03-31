.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QSEditTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;,
        Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static mGoToPage:I = 0x0

.field private static mLastPageTime:J = 0x0L

.field private static mPositionSource:I = -0x1

.field private static mPositionTarget:I = -0x1

.field private static mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

.field private mShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditPageManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            "Lcom/android/systemui/qs/customize/QSEditPageManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/view/View$DragShadowBuilder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getIndexInPage(Landroid/view/View;Landroid/view/DragEvent;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getTargetPage(Landroid/view/View;Landroid/view/DragEvent;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200()Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 0

    sput-object p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mSelectedItem:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)Lcom/android/systemui/qs/customize/QSEditPageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionSource:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionSource:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionTarget:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mPositionTarget:I

    return p0
.end method

.method static synthetic access$700()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mLastPageTime:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .locals 0

    sput-wide p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mLastPageTime:J

    return-wide p0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mGoToPage:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    sput p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mGoToPage:I

    return p0
.end method

.method private getIndexInPage(Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->getPositionIndex(II)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method private getTargetPage(Landroid/view/View;Landroid/view/DragEvent;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/ItemLocations;->isGoingToNextPage(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->isGoingToPrevPage(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;
    .locals 2

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p0, p2

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    return-object p0
.end method

.method public getItemLocations()Lcom/android/systemui/qs/customize/ItemLocations;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    return-object p0
.end method

.method public isPageEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageFull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageMoreThanFull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mItemLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setData(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;-><init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;)V

    return-object p2
.end method
