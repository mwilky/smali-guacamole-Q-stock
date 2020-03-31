.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/palette/graphics/Palette$Filter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;->INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$oWRwwE503YseXSqqQUwqkZxEskY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$new$0(I[F)Z

    move-result p0

    return p0
.end method
