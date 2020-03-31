.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method
