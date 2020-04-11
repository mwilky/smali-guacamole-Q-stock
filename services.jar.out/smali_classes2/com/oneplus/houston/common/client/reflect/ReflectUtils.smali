.class public Lcom/oneplus/houston/common/client/reflect/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIActivityManager()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v1

    const-string v2, "android.app.ActivityManagerNative"

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ReflectUtils"

    const-string v3, "getIActivityManager exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getIAppOpsManager()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "com.android.internal.app.IAppOpsService$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "appops"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIAppOpsManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIBatteryStats()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "com.android.internal.app.IBatteryStats$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "batterystats"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIBatteryStats exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.ServiceManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIBinder exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIDeviceIdleController()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.IDeviceIdleController$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "deviceidle"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIDeviceIdleController exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIFlymePermissionService()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "meizu.security.IFlymePermissionService$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "flyme_permission"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIFlymePermissionService exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIPackageManager()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "package"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIPackageManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIPowerManager()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.IPowerManager$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "power"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIPowerManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getITelephonyExt()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.telephony.ITelephonyExt$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "phone_ext"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getITelephonyExt exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIVoiceSenseService()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.IVoiceSenseService$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "voicesense"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIVoiceSenseService exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIWindowManager()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.view.IWindowManager$Stub"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "window"

    invoke-static {v3}, Lcom/oneplus/houston/common/client/reflect/ReflectUtils;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIBatteryStats exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.ServiceManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaticVariableInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static getStaticVariableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTelephonyManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.telephony.TelephonyManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTelephonyManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWifiManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.net.WifiManager"

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const-string v1, "from"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v5, v3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiManager exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReflectUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
