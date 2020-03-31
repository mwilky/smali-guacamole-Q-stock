.class public final synthetic Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

.field private final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;->f$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;->f$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/-$$Lambda$QSEditTileAdapter$DragListener$_3ph1ImMFmqk5BeISw3amC74Zvo;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->lambda$onDrag$0$QSEditTileAdapter$DragListener(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
