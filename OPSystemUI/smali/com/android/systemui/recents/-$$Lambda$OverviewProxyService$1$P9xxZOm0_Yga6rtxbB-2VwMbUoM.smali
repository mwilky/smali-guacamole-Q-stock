.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$P9xxZOm0_Yga6rtxbB-2VwMbUoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$P9xxZOm0_Yga6rtxbB-2VwMbUoM;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$P9xxZOm0_Yga6rtxbB-2VwMbUoM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$P9xxZOm0_Yga6rtxbB-2VwMbUoM;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$P9xxZOm0_Yga6rtxbB-2VwMbUoM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyGestureEnded$8$OverviewProxyService$1(I)V

    return-void
.end method
