.class Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;,
        Lcom/android/server/wm/DisplayWindowSettings$Entry;,
        Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;,
        Lcom/android/server/wm/DisplayWindowSettings$DisplayIdentifierType;
    }
.end annotation


# static fields
.field private static final IDENTIFIER_PORT:I = 0x1

.field private static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplayWindowSettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifier:I
    .annotation build Lcom/android/server/wm/DisplayWindowSettings$DisplayIdentifierType;
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->readSettings()V

    return-void
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    return v1

    :catch_0
    move-exception v0

    return p3
.end method

.method private getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/DisplayWindowSettings;->updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    return v1

    :catch_0
    move-exception v0

    return p3
.end method

.method private getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    :goto_0
    return-object v1
.end method

.method private getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    nop

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v4, :cond_1

    return v3

    :cond_1
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    move v0, v3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    move v1, v2

    :cond_5
    return v1
.end method

.method private readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "identifier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    move-object v0, v2

    const-string v2, "overscanLeft"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v2, "overscanTop"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v2, "overscanRight"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v2, "overscanBottom"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const/4 v2, 0x0

    const-string v3, "windowingMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "userRotationMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "userRotation"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "forcedWidth"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "forcedHeight"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "forcedDensity"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "forcedScalingMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v3, "removeContentMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    const-string v2, "shouldShowWithInsecureKeyguard"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    const-string v2, "shouldShowSystemDecors"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    const-string v2, "shouldShowIme"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    const-string v2, "fixedToUserRotation"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private readSettings()V
    .locals 11

    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    nop

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v6, v8, :cond_8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_1
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_6

    :cond_2
    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "display"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_4
    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readConfig(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <display-settings>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_8
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v4

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    if-nez v3, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_a
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    if-nez v3, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_b
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    :catch_4
    move-exception v4

    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    nop

    if-nez v3, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_c
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3

    :catch_5
    move-exception v4

    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    nop

    if-nez v3, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_d
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    :catch_6
    move-exception v4

    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    nop

    if-nez v3, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_e
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_3

    :goto_4
    return-void

    :goto_5
    if-nez v3, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_f
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    :goto_6
    throw v0

    :catch_8
    move-exception v0

    const-string v2, "No existing display settings, starting empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeEntry(Landroid/view/DisplayInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    return v0
.end method

.method private updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .locals 3

    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private writeSettings()V
    .locals 11

    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v4}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    iget v9, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "name"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "overscanLeft"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "overscanTop"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "overscanRight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "overscanBottom"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "windowingMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "userRotationMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "userRotation"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "forcedWidth"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "forcedHeight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "forcedDensity"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "forcedScalingMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "removeContentMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "shouldShowWithInsecureKeyguard"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "shouldShowSystemDecors"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "shouldShowIme"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "fixedToUserRotation"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    goto/16 :goto_0

    :cond_f
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v0, v4, v6}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Failed to write display window settings."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write display settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettings()V

    return-void
.end method


# virtual methods
.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    return-void
.end method

.method getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    return v2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    return v2

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    return v2
.end method

.method setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_scaling_force"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setOverscanLocked(Landroid/view/DisplayInfo;IIII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-static {v0, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-static {v0, p4}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-static {v0, p5}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Default display should show IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Default display should show system decors"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Public display can\'t be allowed to show content when locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
