.class public interface abstract Le/a/a/a/a/c;
.super Ljava/lang/Object;
.source "IMiSys.java"

# interfaces
.implements La/b/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/a/c$b;,
        Le/a/a/a/a/c$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "vendor.xiaomi.hardware.misys@1.0::IMiSys"


# direct methods
.method public static a(Landroid/os/IHwBinder;)Le/a/a/a/a/c;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    .line 1
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    instance-of v3, v2, Le/a/a/a/a/c;

    if-eqz v3, :cond_1

    .line 3
    check-cast v2, Le/a/a/a/a/c;

    return-object v2

    .line 4
    :cond_1
    new-instance v2, Le/a/a/a/a/c$a;

    invoke-direct {v2, p0}, Le/a/a/a/a/c$a;-><init>(Landroid/os/IHwBinder;)V

    .line 5
    :try_start_0
    invoke-interface {v2}, Le/a/a/a/a/c;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Le/a/a/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    .line 1
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Le/a/a/a/a/c;->a(Landroid/os/IHwBinder;)Le/a/a/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static h()Le/a/a/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 1
    invoke-static {v0}, Le/a/a/a/a/c;->d(Ljava/lang/String;)Le/a/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;Z)Le/a/a/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.xiaomi.hardware.misys@1.0::IMiSys"

    .line 1
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Le/a/a/a/a/c;->a(Landroid/os/IHwBinder;)Le/a/a/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/os/IHwInterface;)Le/a/a/a/a/c;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Le/a/a/a/a/c;->a(Landroid/os/IHwBinder;)Le/a/a/a/a/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static n(Z)Le/a/a/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 1
    invoke-static {v0, p0}, Le/a/a/a/a/c;->j(Ljava/lang/String;Z)Le/a/a/a/a/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract c()La/b/a/a/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract e()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract g()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract i()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract l(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/String;)Le/a/a/a/a/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;Ljava/lang/String;)Le/a/a/a/a/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
