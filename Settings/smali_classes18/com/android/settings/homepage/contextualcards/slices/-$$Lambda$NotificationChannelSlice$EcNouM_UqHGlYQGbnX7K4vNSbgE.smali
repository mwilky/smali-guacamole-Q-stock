.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$EcNouM_UqHGlYQGbnX7K4vNSbgE;

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

    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->lambda$getDisplayableChannels$3(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method
