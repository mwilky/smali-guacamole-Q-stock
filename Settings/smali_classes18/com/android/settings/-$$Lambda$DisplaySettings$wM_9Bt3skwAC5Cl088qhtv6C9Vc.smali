.class public final synthetic Lcom/android/settings/-$$Lambda$DisplaySettings$wM_9Bt3skwAC5Cl088qhtv6C9Vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/-$$Lambda$DisplaySettings$wM_9Bt3skwAC5Cl088qhtv6C9Vc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/-$$Lambda$DisplaySettings$wM_9Bt3skwAC5Cl088qhtv6C9Vc;

    invoke-direct {v0}, Lcom/android/settings/-$$Lambda$DisplaySettings$wM_9Bt3skwAC5Cl088qhtv6C9Vc;-><init>()V

    sput-object v0, Lcom/android/settings/-$$Lambda$DisplaySettings$wM_9Bt3skwAC5Cl088qhtv6C9Vc;->INSTANCE:Lcom/android/settings/-$$Lambda$DisplaySettings$wM_9Bt3skwAC5Cl088qhtv6C9Vc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p1

    return p1
.end method
