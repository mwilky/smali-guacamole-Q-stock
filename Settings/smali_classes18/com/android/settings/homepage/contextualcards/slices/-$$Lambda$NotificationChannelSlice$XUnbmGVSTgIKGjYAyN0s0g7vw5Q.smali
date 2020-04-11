.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$XUnbmGVSTgIKGjYAyN0s0g7vw5Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;

    check-cast p2, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;

    invoke-static {p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->lambda$static$0(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;)I

    move-result p1

    return p1
.end method
