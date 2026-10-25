import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A223100: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223100, there is no canonical definition to state claims against.
-/

/-! ## A223100.P434795420430566364

`A223104(A141214(n+1))`
-/

namespace A223100.P434795420430566364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A141214 (n + 1)).toNat

end

end A223100.P434795420430566364

/-! ## A223100.P6938834195409561517

`A223104(A055998(n+2))`
-/

namespace A223100.P6938834195409561517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A055998 (n + 2)).toNat

end

end A223100.P6938834195409561517

/-! ## A223100.P13658811317938675279

`A223104(A155212(n)+5)`
-/

namespace A223100.P13658811317938675279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A155212 n + 5).toNat

end

end A223100.P13658811317938675279

/-! ## A223100.P13739515995326793621

`A223104(eq[3, A193592(n)])`
-/

namespace A223100.P13739515995326793621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223100.P13739515995326793621

/-! ## A223100.P7472022356698369593

`A223104(A052905(n+1)+2)`
-/

namespace A223100.P7472022356698369593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A052905 (n + 1) + 2).toNat

end

end A223100.P7472022356698369593

/-!
# A223101: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223101, there is no canonical definition to state claims against.
-/

/-! ## A223101.P11680847562930379196

`A223104(Δ[A264443(n)])`
-/

namespace A223101.P11680847562930379196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (f1 (n + 1) - f1 n).toNat

end

end A223101.P11680847562930379196

/-! ## A223101.P9061089807660838822

`A223104(A046691(n+3))`
-/

namespace A223101.P9061089807660838822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A046691 (n + 3)).toNat

end

end A223101.P9061089807660838822

/-! ## A223101.P15468459649895473621

`A223104(eq[4, A193592(n)])`
-/

namespace A223101.P15468459649895473621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223101.P15468459649895473621

/-! ## A223101.P13981763602586257570

`A223104(eq[5, A239144(n)])`
-/

namespace A223101.P13981763602586257570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223101.P13981763602586257570

/-! ## A223101.P14792525481427148431

`A223104(Δ[A023545(n+1)])`
-/

namespace A223101.P14792525481427148431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (f1 (n + 1) - f1 n).toNat

end

end A223101.P14792525481427148431

/-!
# A223102: Number of n X 6 0..2 arrays with exactly floor((n X 6)/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223102, there is no canonical definition to state claims against.
-/

/-! ## A223102.P14233274993122064410

`A223104(A052905(n+3))`
-/

namespace A223102.P14233274993122064410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A052905 (n + 3)).toNat

end

end A223102.P14233274993122064410

/-! ## A223102.P11768963005952906088

`A223104(eq[5, A193592(n)])`
-/

namespace A223102.P11768963005952906088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223102.P11768963005952906088

/-! ## A223102.P10941753387048597346

`A223104(eq[8, A185782(n+1)])`
-/

namespace A223102.P10941753387048597346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223102.P10941753387048597346

/-! ## A223102.P14424771435210181865

`A223104(Δ[A023551(n+1)]+1)`
-/

namespace A223102.P14424771435210181865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (f1 (n + 1) - f1 n + 1).toNat

end

end A223102.P14424771435210181865

/-!
# A223103: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223103, there is no canonical definition to state claims against.
-/

/-! ## A223103.P10494717443483714351

`A223104(A055999(n+4))`
-/

namespace A223103.P10494717443483714351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A055999 (n + 4)).toNat

end

end A223103.P10494717443483714351

/-! ## A223103.P10611969391330809743

`A223104(eq[6, A193592(n)])`
-/

namespace A223103.P10611969391330809743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223103.P10611969391330809743

/-! ## A223103.P9376115487440037321

`A223104(Δ[A023551(n+2)])`
-/

namespace A223103.P9376115487440037321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (f1 (n + 1) - f1 n).toNat

end

end A223103.P9376115487440037321

/-! ## A223103.P17807168356844915415

`A223104(A000124(n+7)-7)`
-/

namespace A223103.P17807168356844915415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A000124 (n + 7) - 7).toNat

end

end A223103.P17807168356844915415

/-! ## A223103.P4106028205082335701

`A223104(eq[6, A243060(n+1)])`
-/

namespace A223103.P4106028205082335701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223103.P4106028205082335701

/-!
# A223105: Number of 2Xn 0..2 arrays with exactly floor(2Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223105, there is no canonical definition to state claims against.
-/

/-! ## A223105.P4601506391510593695

`A223104(∑[n+1]+2)`
-/

namespace A223105.P4601506391510593695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223105.P4601506391510593695

/-! ## A223105.P9230361962244789337

`record[char[A000124(n)]*A223104(n+1)]`
-/

namespace A223105.P9230361962244789337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223105.P9230361962244789337

/-! ## A223105.P10079354942464543039

`A158388(n)*A223104(A167499(n)-3)`
-/

namespace A223105.P10079354942464543039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A223104 (A167499 n - 3).toNat

end

end A223105.P10079354942464543039

/-! ## A223105.P6879345287587365216

`A223104(A255552(2*(n+2)))+A178780(n)`
-/

namespace A223105.P6879345287587365216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A255552 (2 * (n + 2))).toNat + A178780 n

end

end A223105.P6879345287587365216

/-! ## A223105.P3147329029991744968

`A223104(A152948(n+3))+A010052(3*n+2)`
-/

namespace A223105.P3147329029991744968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A152948 (n + 3)).toNat + A010052 (3 * n + 2)

end

end A223105.P3147329029991744968

/-!
# A223106: Number of 3Xn 0..2 arrays with exactly floor(3Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223106, there is no canonical definition to state claims against.
-/

/-! ## A223106.P14538904625636946705

`A223104(∑[n+2]+4)`
-/

namespace A223106.P14538904625636946705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223106.P14538904625636946705

/-! ## A223106.P9481053414736042550

`ceil(acot(n))*A223104(A167614(n+1))`
-/

namespace A223106.P9481053414736042550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A223104 (A167614 (n + 1)).toNat

end

end A223106.P9481053414736042550

/-! ## A223106.P10699256562181100990

`record[char[A000124(n+1)]*A223104(n+2)]`
-/

namespace A223106.P10699256562181100990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223104 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223106.P10699256562181100990

/-! ## A223106.P14168347105701114984

`A223104(A167614(n+1))+A185203(n)`
-/

namespace A223106.P14168347105701114984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A167614 (n + 1)).toNat + A185203 n

end

end A223106.P14168347105701114984

/-! ## A223106.P11959220575652063248

`A057427(n)*A223104(A167614(n+1))`
-/

namespace A223106.P11959220575652063248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A223104 (A167614 (n + 1)).toNat

end

end A223106.P11959220575652063248

/-!
# A223107: Number of 4Xn 0..2 arrays with exactly floor(4Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223107, there is no canonical definition to state claims against.
-/

/-! ## A223107.P190310758302274073

`A223104(A141214(n)+7)`
-/

namespace A223107.P190310758302274073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A141214 n + 7).toNat

end

end A223107.P190310758302274073

/-! ## A223107.P8583103609438285209

`A223104(A052905(n)+9)`
-/

namespace A223107.P8583103609438285209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A052905 n + 9).toNat

end

end A223107.P8583103609438285209

/-! ## A223107.P839235702892028968

`A223104(A055999(n)+10)`
-/

namespace A223107.P839235702892028968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A055999 n + 10).toNat

end

end A223107.P839235702892028968

/-! ## A223107.P16447941490091357363

`A223104(A167614(n+2)+1)`
-/

namespace A223107.P16447941490091357363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A167614 (n + 2) + 1).toNat

end

end A223107.P16447941490091357363

/-! ## A223107.P229108955059093342

`A223104(eq[5, A131818(n+1)])`
-/

namespace A223107.P229108955059093342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223107.P229108955059093342

/-!
# A223108: Number of 5Xn 0..2 arrays with exactly floor(5Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223108, there is no canonical definition to state claims against.
-/

/-! ## A223108.P16112043555195954501

`A223104(A167499(n+3))`
-/

namespace A223108.P16112043555195954501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A167499 (n + 3)).toNat

end

end A223108.P16112043555195954501

/-! ## A223108.P17622558440209938873

`A223104(A155212(n)+13)`
-/

namespace A223108.P17622558440209938873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A155212 n + 13).toNat

end

end A223108.P17622558440209938873

/-! ## A223108.P3523792317354909887

`A223104(A056000(n)+15)`
-/

namespace A223108.P3523792317354909887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A056000 n + 15).toNat

end

end A223108.P3523792317354909887

/-! ## A223108.P12889095454159807082

`A223104(eq[6, A131818(n+1)])`
-/

namespace A223108.P12889095454159807082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223108.P12889095454159807082

/-! ## A223108.P3132895702679951170

`A223104(Δ[A023551(n+1)]-2*n)`
-/

namespace A223108.P3132895702679951170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A223108.P3132895702679951170

/-!
# A223109: Number of 6Xn 0..2 arrays with exactly floor(6Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223109, there is no canonical definition to state claims against.
-/

/-! ## A223109.P4280974051435210288

`A223104(eq[7, A131818(n+1)])`
-/

namespace A223109.P4280974051435210288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223109.P4280974051435210288

/-! ## A223109.P13186055930166643260

`A223104(Δ[A023545(n+1)]+10)`
-/

namespace A223109.P13186055930166643260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (f1 (n + 1) - f1 n + 10).toNat

end

end A223109.P13186055930166643260

/-!
# A223110: Number of 7Xn 0..2 arrays with exactly floor(7Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223110, there is no canonical definition to state claims against.
-/

/-! ## A223110.P17183285386164011723

`A223104(eq[8, A131818(n+1)])`
-/

namespace A223110.P17183285386164011723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223110.P17183285386164011723

/-!
# A223111: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223111, there is no canonical definition to state claims against.
-/

/-! ## A223111.P7774468534232729713

`A223114(∑[n+3]+1)`
-/

namespace A223111.P7774468534232729713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223111.P7774468534232729713

/-! ## A223111.P7288786378229625498

`record[char[A027379(n)]*A223114(n+1)]`
-/

namespace A223111.P7288786378229625498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223111.P7288786378229625498

/-! ## A223111.P8704491261358870501

`record[char[A141214(n)]*A223114(n+1)]`
-/

namespace A223111.P8704491261358870501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223111.P8704491261358870501

/-! ## A223111.P17772527048610717700

`char[A002487(n)]*A223114(A052905(n)+3)`
-/

namespace A223111.P17772527048610717700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223114 (A052905 n + 3).toNat

end

end A223111.P17772527048610717700

/-! ## A223111.P13454933884213585123

`char[A302234(n)]*A223114(A052905(n)+3)`
-/

namespace A223111.P13454933884213585123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302234 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223114 (A052905 n + 3).toNat

end

end A223111.P13454933884213585123

/-!
# A223112: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223112, there is no canonical definition to state claims against.
-/

/-! ## A223112.P9154885360567718195

`A223114(∑[n+4]+3)`
-/

namespace A223112.P9154885360567718195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223112.P9154885360567718195

/-!
# A223113: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223113, there is no canonical definition to state claims against.
-/

/-! ## A223113.P9967115769619822103

`A223114(Δ[A264443(n)])`
-/

namespace A223113.P9967115769619822103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (f1 (n + 1) - f1 n).toNat

end

end A223113.P9967115769619822103

/-! ## A223113.P5344778054974747446

`A223114(A046691(n+3))`
-/

namespace A223113.P5344778054974747446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (A046691 (n + 3)).toNat

end

end A223113.P5344778054974747446

/-! ## A223113.P7966379012865066916

`A223114(A056115(n)+11)`
-/

namespace A223113.P7966379012865066916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (A056115 n + 11).toNat

end

end A223113.P7966379012865066916

/-!
# A223115: Number of 2 X n 0..2 arrays with exactly floor(2*n/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223115, there is no canonical definition to state claims against.
-/

/-! ## A223115.P15876291207455796853

`A223114(∑[n+1]+2)`
-/

namespace A223115.P15876291207455796853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223115.P15876291207455796853

/-! ## A223115.P18319312943352386579

`record[A223114(n+3)/A038255(n)]`
-/

namespace A223115.P18319312943352386579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223114 (n + 3) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223115.P18319312943352386579

/-! ## A223115.P10682089611764806758

`record[A223114(n+3)/A126331(n)]`
-/

namespace A223115.P10682089611764806758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223114 (n + 3) : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223115.P10682089611764806758

/-! ## A223115.P13554459296511344980

`record[char[A000124(n)]*A223114(n+1)]`
-/

namespace A223115.P13554459296511344980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223115.P13554459296511344980

/-! ## A223115.P2168915006107473401

`record[A223114(n+3)/A011801(n+1)]`
-/

namespace A223115.P2168915006107473401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223114 (n + 3) : ℚ) / (A011801 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223115.P2168915006107473401

/-!
# A223116: Number of 3Xn 0..2 arrays with exactly floor(3Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223116, there is no canonical definition to state claims against.
-/

/-! ## A223116.P13771822368835693073

`A223114(∑[n+2]+4)`
-/

namespace A223116.P13771822368835693073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223116.P13771822368835693073

/-! ## A223116.P17410428565458854586

`and(-1, A223114(A167614(n+1)))`
-/

namespace A223116.P17410428565458854586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223114 (A167614 (n + 1)).toNat)

end

end A223116.P17410428565458854586

/-! ## A223116.P15203713653688363586

`record[A010054(n)*A223114(n+3)]`
-/

namespace A223116.P15203713653688363586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223114 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223116.P15203713653688363586

/-! ## A223116.P14356152027264878300

`record[char[A000124(n+1)]*A223114(n+2)]`
-/

namespace A223116.P14356152027264878300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223116.P14356152027264878300

/-! ## A223116.P12782759479977865583

`A223114(A167614(n+1))+A011728(n)`
-/

namespace A223116.P12782759479977865583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (A167614 (n + 1)).toNat + A011728 n

end

end A223116.P12782759479977865583

/-!
# A223117: Number of 4Xn 0..2 arrays with exactly floor(4Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223117, there is no canonical definition to state claims against.
-/

/-! ## A223117.P1441702860918683709

`A223114(∑[n+3]+7)`
-/

namespace A223117.P1441702860918683709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223117.P1441702860918683709

/-!
# A223118: Number of 5Xn 0..2 arrays with exactly floor(5Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223118, there is no canonical definition to state claims against.
-/

/-! ## A223118.P15405871806462788908

`A223114(A167499(n+3))`
-/

namespace A223118.P15405871806462788908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (A167499 (n + 3)).toNat

end

end A223118.P15405871806462788908

/-! ## A223118.P14391031718195712963

`A223114(A155212(n)+13)`
-/

namespace A223118.P14391031718195712963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (A155212 n + 13).toNat

end

end A223118.P14391031718195712963

/-! ## A223118.P10055181767611412453

`A223114(A056000(n)+15)`
-/

namespace A223118.P10055181767611412453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (A056000 n + 15).toNat

end

end A223118.P10055181767611412453

/-! ## A223118.P11788734034039016329

`A223114(eq[7, A066657(n)])`
-/

namespace A223118.P11788734034039016329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223118.P11788734034039016329

/-!
# A223119: Number of n X n 0..2 arrays with no more than floor(n X n/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223119, there is no canonical definition to state claims against.
-/

/-! ## A223119.P3034555151847360635

`A223126((n+1)²+n²)`
-/

namespace A223119.P3034555151847360635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 ((n + 1) ^ 2 + n ^ 2)

end

end A223119.P3034555151847360635

/-!
# A223120: Number of n X 2 0..2 arrays with no more than floor(nX2/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223120, there is no canonical definition to state claims against.
-/

/-! ## A223120.P14180296822544469104

`A222848(2*(n+1))`
-/

namespace A223120.P14180296822544469104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222848 (2 * (n + 1))

end

end A223120.P14180296822544469104

/-! ## A223120.P17634422543315221336

`record[A222848(A014681(n+1))]`
-/

namespace A223120.P17634422543315221336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222848 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P17634422543315221336

/-! ## A223120.P10647305333534432458

`record[A222848(A141310(n+1)-1)]`
-/

namespace A223120.P10647305333534432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222848 (A141310 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P10647305333534432458

/-! ## A223120.P1017049083973669630

`record[A222848(n+2)/A033999(n)]`
-/

namespace A223120.P1017049083973669630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222848 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P1017049083973669630

/-! ## A223120.P11518405714984456046

`record[gcd(A077896(n), A222848(n+1))]`
-/

namespace A223120.P11518405714984456046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077896 n) (A222848 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P11518405714984456046

/-! ## A223120.P5860587612033355230

`record[and(A033999(n), A222848(n+1))]`
-/

namespace A223120.P5860587612033355230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A222848 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P5860587612033355230

/-! ## A223120.P16255505460824972390

`record[A222848(n+1)^Δ[A008619(n)]]`
-/

namespace A223120.P16255505460824972390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222848 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P16255505460824972390

/-! ## A223120.P12769531865637635846

`record[A222848(A003963(A008458(n)))]`
-/

namespace A223120.P12769531865637635846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222848 (A003963 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P12769531865637635846

/-! ## A223120.P169942297970694537

`record[A222848(n+1)/A222848(A141310(n))]`
-/

namespace A223120.P169942297970694537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222848 (n + 1) : ℚ) / (A222848 (A141310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223120.P169942297970694537

/-!
# A223121: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223121, there is no canonical definition to state claims against.
-/

/-! ## A223121.P792530140209905435

`A223126(∑[n+3]+1)`
-/

namespace A223121.P792530140209905435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223121.P792530140209905435

/-! ## A223121.P7466864946274938439

`A223126(A034856(n+2))+A000007(2*(n+2))`
-/

namespace A223121.P7466864946274938439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A034856 (n + 2)).toNat + A000007 (2 * (n + 2))

end

end A223121.P7466864946274938439

/-!
# A223122: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223122, there is no canonical definition to state claims against.
-/

/-! ## A223122.P17839754772538217240

`A223126(A141214(n+1))`
-/

namespace A223122.P17839754772538217240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A141214 (n + 1)).toNat

end

end A223122.P17839754772538217240

/-! ## A223122.P16310074415006481126

`A223126(A055998(n+2))`
-/

namespace A223122.P16310074415006481126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A055998 (n + 2)).toNat

end

end A223122.P16310074415006481126

/-! ## A223122.P10278547319953899080

`A223126(A056000(n)+7)`
-/

namespace A223122.P10278547319953899080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A056000 n + 7).toNat

end

end A223122.P10278547319953899080

/-! ## A223122.P14518360928366876636

`A223126(eq[3, A193592(n)])`
-/

namespace A223122.P14518360928366876636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223122.P14518360928366876636

/-! ## A223122.P18395855897339490286

`A223126(A052905(n+1)+2)`
-/

namespace A223122.P18395855897339490286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A052905 (n + 1) + 2).toNat

end

end A223122.P18395855897339490286

/-!
# A223123: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223123, there is no canonical definition to state claims against.
-/

/-! ## A223123.P9863515547033351780

`A223126(A046691(n+3))`
-/

namespace A223123.P9863515547033351780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A046691 (n + 3)).toNat

end

end A223123.P9863515547033351780

/-! ## A223123.P16164811558107013114

`A223126(A056115(n)+11)`
-/

namespace A223123.P16164811558107013114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A056115 n + 11).toNat

end

end A223123.P16164811558107013114

/-! ## A223123.P2251038691244442336

`A223126(eq[4, A193592(n)])`
-/

namespace A223123.P2251038691244442336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223123.P2251038691244442336

/-! ## A223123.P2838952371404170013

`A223126(Δ[A023545(n+1)])`
-/

namespace A223123.P2838952371404170013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (f1 (n + 1) - f1 n).toNat

end

end A223123.P2838952371404170013

/-! ## A223123.P4878697203437938360

`A223126(eq[5, A200370(n+1)])`
-/

namespace A223123.P4878697203437938360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223123.P4878697203437938360

/-!
# A223124: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223124, there is no canonical definition to state claims against.
-/

/-! ## A223124.P18105853117717728614

`A223126(A052905(n+3))`
-/

namespace A223124.P18105853117717728614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A052905 (n + 3)).toNat

end

end A223124.P18105853117717728614

/-! ## A223124.P5473446005286545606

`A223126(Δ[A023545(n+2)]-1)`
-/

namespace A223124.P5473446005286545606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (f1 (n + 1) - f1 n - 1).toNat

end

end A223124.P5473446005286545606

/-!
# A223125: Number of nX7 0..2 arrays with no more than floor(nX7/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223125, there is no canonical definition to state claims against.
-/

/-! ## A223125.P745095262643518733

`A223126(A055999(n+4))`
-/

namespace A223125.P745095262643518733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A055999 (n + 4)).toNat

end

end A223125.P745095262643518733

/-!
# A223127: Number of 2Xn 0..2 arrays with no more than floor(2Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223127, there is no canonical definition to state claims against.
-/

/-! ## A223127.P2006046851728582790

`A223126(∑[n+1]+2)`
-/

namespace A223127.P2006046851728582790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223127.P2006046851728582790

/-! ## A223127.P3839012539371106766

`record[A223126(record[A091995(n+3)])]`
-/

namespace A223127.P3839012539371106766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223127.P3839012539371106766

/-! ## A223127.P17121133619176553606

`record[A223126(n+3)/A132382(n)]`
-/

namespace A223127.P17121133619176553606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223126 (n + 3) : ℚ) / (A132382 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223127.P17121133619176553606

/-! ## A223127.P4532920750818399055

`record[A223126(n+3)/A121634(n+1)]`
-/

namespace A223127.P4532920750818399055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223126 (n + 3) : ℚ) / (A121634 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223127.P4532920750818399055

/-! ## A223127.P18225694257285935984

`record[A223126(n+3)/A199577(n)]`
-/

namespace A223127.P18225694257285935984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223126 (n + 3) : ℚ) / (A199577 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223127.P18225694257285935984

/-!
# A223128: Number of 3Xn 0..2 arrays with no more than floor(3Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223128, there is no canonical definition to state claims against.
-/

/-! ## A223128.P9313389417061416605

`A223126(∑[n+2]+4)`
-/

namespace A223128.P9313389417061416605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223128.P9313389417061416605

/-! ## A223128.P9230665856327798930

`A223126(A167614(n+1))+A025442(n)`
-/

namespace A223128.P9230665856327798930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A167614 (n + 1)).toNat + A025442 n

end

end A223128.P9230665856327798930

/-! ## A223128.P6988465550637100111

`A223126(A167614(n+1))+A178798(n)`
-/

namespace A223128.P6988465550637100111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A167614 (n + 1)).toNat + A178798 n

end

end A223128.P6988465550637100111

/-! ## A223128.P18341056089611040854

`lcm(A020985(n), A223126(A167614(n+1)))`
-/

namespace A223128.P18341056089611040854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A223126 (A167614 (n + 1)).toNat)

end

end A223128.P18341056089611040854

/-! ## A223128.P5503145930105092930

`or(A000007(n), A223126(A167614(n+1)))`
-/

namespace A223128.P5503145930105092930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223126 (A167614 (n + 1)).toNat)

end

end A223128.P5503145930105092930

/-!
# A223129: Number of 4Xn 0..2 arrays with no more than floor(4Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223129, there is no canonical definition to state claims against.
-/

/-! ## A223129.P198346320784765041

`A223126(A141214(n)+7)`
-/

namespace A223129.P198346320784765041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A141214 n + 7).toNat

end

end A223129.P198346320784765041

/-! ## A223129.P17821908124533177351

`A223126(A052905(n)+9)`
-/

namespace A223129.P17821908124533177351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A052905 n + 9).toNat

end

end A223129.P17821908124533177351

/-! ## A223129.P16304113935641600729

`A223126(A055999(n)+10)`
-/

namespace A223129.P16304113935641600729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A055999 n + 10).toNat

end

end A223129.P16304113935641600729

/-! ## A223129.P6325108145379376635

`A223126(A167614(n+2)+1)`
-/

namespace A223129.P6325108145379376635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A167614 (n + 2) + 1).toNat

end

end A223129.P6325108145379376635

/-! ## A223129.P12456653703092064542

`A223126(eq[5, A131818(n+1)])`
-/

namespace A223129.P12456653703092064542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223129.P12456653703092064542

/-!
# A223130: Number of 5Xn 0..2 arrays with no more than floor(5Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223130, there is no canonical definition to state claims against.
-/

/-! ## A223130.P6468705110036602004

`A223126(A167499(n+3))`
-/

namespace A223130.P6468705110036602004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A167499 (n + 3)).toNat

end

end A223130.P6468705110036602004

/-! ## A223130.P7524837931392210714

`A223126(A155212(n)+13)`
-/

namespace A223130.P7524837931392210714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A155212 n + 13).toNat

end

end A223130.P7524837931392210714

/-! ## A223130.P9540684266650893658

`A223126(A056000(n)+15)`
-/

namespace A223130.P9540684266650893658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A056000 n + 15).toNat

end

end A223130.P9540684266650893658

/-! ## A223130.P10398525736780311574

`A223126(A167614(n+3)+2)`
-/

namespace A223130.P10398525736780311574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A167614 (n + 3) + 2).toNat

end

end A223130.P10398525736780311574

/-! ## A223130.P16936125408516671793

`A223126(eq[6, A131818(n+1)])`
-/

namespace A223130.P16936125408516671793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223130.P16936125408516671793

/-!
# A223131: Number of 6Xn 0..2 arrays with no more than floor(6Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223131, there is no canonical definition to state claims against.
-/

/-! ## A223131.P693376994460107180

`A223126(eq[7, A131818(n+1)])`
-/

namespace A223131.P693376994460107180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223131.P693376994460107180

/-!
# A223132: Number of 7Xn 0..2 arrays with no more than floor(7Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223132, there is no canonical definition to state claims against.
-/

/-! ## A223132.P9305372363738291699

`A223126(eq[8, A131818(n+1)])`
-/

namespace A223132.P9305372363738291699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223132.P9305372363738291699

/-!
# A223133: Number of distinct sums i+j+k with i,j,k >= 0, i*j*k <= n and gcd(i,j,k) <= 1.

The programs for A223133, the canonical program `A223133.P1179702594897451371` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223133 has offset 0).

The definition of A223133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223133.P1179702594897451371

`∑[abs(a(n%2))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223133

/-- `∑[abs(a(n%2))]` -/
def P1179702594897451371.Spec : Prop :=
  ∀ n, (P1179702594897451371.a n : ℤ) = A223133 n

theorem P1179702594897451371.correct : P1179702594897451371.Spec := by
  intro n
  simp only [A223133]

end A223133

/-! ## A223133.P807325140210753883

`∑[floor(a(a(n-1)))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A223133.P807325140210753883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 1, 2, 2] fun n f1 =>
  f1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223133.P807325140210753883

namespace A223133

/-- `∑[floor(a(a(n-1)))]` -/
def P807325140210753883.Spec : Prop :=
  ∀ n, (P807325140210753883.a n : ℤ) = A223133 n

end A223133

/-! ## A223133.P14870203348755660715

`∑[ceil(a(a(n-1)))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A223133.P14870203348755660715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 1, 2, 2] fun n f1 =>
  f1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223133.P14870203348755660715

namespace A223133

/-- `∑[ceil(a(a(n-1)))]` -/
def P14870203348755660715.Spec : Prop :=
  ∀ n, (P14870203348755660715.a n : ℤ) = A223133 n

end A223133

/-! ## A223133.P2566450237289545904

`∑[3/a(n-1)]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=1`
-/

namespace A223133.P2566450237289545904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 1, 1, 2, 2, 1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223133.P2566450237289545904

namespace A223133

/-- `∑[3/a(n-1)]` -/
def P2566450237289545904.Spec : Prop :=
  ∀ n, P2566450237289545904.a n = (A223133 n : ℚ)

end A223133

/-! ## A223133.P8402549000811456801

`∑[gcd(3, a(a(n-1)))]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2`
-/

namespace A223133.P8402549000811456801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 1, 2, 2] fun n f1 =>
  Nat.gcd 3 (f1 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223133.P8402549000811456801

namespace A223133

/-- `∑[gcd(3, a(a(n-1)))]` -/
def P8402549000811456801.Spec : Prop :=
  ∀ n, (P8402549000811456801.a n : ℤ) = A223133 n

end A223133

/-! ## A223133.P2910461877272661481

`∑[a(a(n-1))%n]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=2, a(5)=2`
-/

namespace A223133.P2910461877272661481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 1, 2, 2] fun n f1 =>
  f1 (f1 (n - 1)) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223133.P2910461877272661481

namespace A223133

/-- `∑[a(a(n-1))%n]` -/
def P2910461877272661481.Spec : Prop :=
  ∀ n, (P2910461877272661481.a n : ℤ) = A223133 n

end A223133

/-! ## A223133.P165232608102753422

`ceil(A222947(n)/2)`
-/

namespace A223133.P165232608102753422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222947 n : ℚ) / 2⌉

end

end A223133.P165232608102753422

namespace A223133

/-- `ceil(A222947(n)/2)` -/
def P165232608102753422.Spec : Prop :=
  ∀ n, P165232608102753422.a n = A223133 n

end A223133

/-! ## A223133.P13584549321200038046

`A000463(A222947(n))`
-/

namespace A223133.P13584549321200038046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A222947 n).toNat

end

end A223133.P13584549321200038046

namespace A223133

/-- `A000463(A222947(n))` -/
def P13584549321200038046.Spec : Prop :=
  ∀ n, P13584549321200038046.a n = A223133 n

end A223133

/-! ## A223133.P497889445124117821

`A025480(A222947(n)+1)`
-/

namespace A223133.P497889445124117821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A222947 n + 1).toNat

end

end A223133.P497889445124117821

namespace A223133

/-- `A025480(A222947(n)+1)` -/
def P497889445124117821.Spec : Prop :=
  ∀ n, P497889445124117821.a n = A223133 n

end A223133

/-! ## A223133.P203325153180780022

`A003602(2*A222947(n))`
-/

namespace A223133.P203325153180780022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A222947 n).toNat

end

end A223133.P203325153180780022

namespace A223133

/-- `A003602(2*A222947(n))` -/
def P203325153180780022.Spec : Prop :=
  ∀ n, P203325153180780022.a n = A223133 n

end A223133

/-! ## A223133.P9831474717872220926

`A003602(A222947(n)+2)-1`
-/

namespace A223133.P9831474717872220926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A222947 n + 2).toNat - 1

end

end A223133.P9831474717872220926

namespace A223133

/-- `A003602(A222947(n)+2)-1` -/
def P9831474717872220926.Spec : Prop :=
  ∀ n, P9831474717872220926.a n = A223133 n

end A223133

/-! ## A223133.P14436381936283815475

`A222947(n)-A025480(A222947(n)-1)`
-/

namespace A223133.P14436381936283815475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222947 n - A025480 (A222947 n - 1).toNat

end

end A223133.P14436381936283815475

namespace A223133

/-- `A222947(n)-A025480(A222947(n)-1)` -/
def P14436381936283815475.Spec : Prop :=
  ∀ n, P14436381936283815475.a n = A223133 n

end A223133

/-!
# A223134: Number of distinct sums i+j+k with i,j,k >= 0, i*j*k <= n.

The programs for A223134, the canonical program `A223134.P58091194559180882` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223134 has offset 0).

The definition of A223134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223134.P58091194559180882

`char[1]+Δ[n²]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223134

/-- `char[1]+Δ[n²]` -/
def P58091194559180882.Spec : Prop :=
  ∀ n, P58091194559180882.a n = A223134 n

theorem P58091194559180882.correct : P58091194559180882.Spec := by
  intro n
  simp only [A223134]

end A223134

/-!
# A223135: Number of distinct sums i + j + k with i, j, k >= 0, i*j*k = n and gcd(i,j,k) <= 1.

The programs for A223135, there is no canonical definition to state claims against.
-/

/-! ## A223135.P2366926567316353016

`A026806(A226602(n))%(A140582(n)+10)`
-/

namespace A223135.P2366926567316353016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026806 (A226602 n).toNat) (A140582 n + 10)

end

end A223135.P2366926567316353016

/-! ## A223135.P12513557455342321831

`A026806(A226602(n))+A000007(A140582(n))`
-/

namespace A223135.P12513557455342321831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat + A000007 (A140582 n).toNat

end

end A223135.P12513557455342321831

/-! ## A223135.P4685141742568343717

`A026806(A226602(n))+A000038(A140582(n)²)`
-/

namespace A223135.P4685141742568343717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat + A000038 (A140582 n ^ 2).toNat

end

end A223135.P4685141742568343717

/-! ## A223135.P13741266631201772384

`A026806(A226602(n))-A000007(A140582(n)²)`
-/

namespace A223135.P13741266631201772384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat - A000007 (A140582 n ^ 2).toNat

end

end A223135.P13741266631201772384

/-! ## A223135.P11992238153965853916

`A026806(A226602(n))-A061397(A140582(n)²)`
-/

namespace A223135.P11992238153965853916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat - A061397 (A140582 n ^ 2).toNat

end

end A223135.P11992238153965853916

/-! ## A223135.P6681491558276872920

`A026806(A226602(n))*A057427(A140582(n)²)`
-/

namespace A223135.P6681491558276872920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat * A057427 (A140582 n ^ 2).toNat

end

end A223135.P6681491558276872920

/-! ## A223135.P13929525694451861716

`A026806(A226602(n))-A112315(A140582(n)+1)`
-/

namespace A223135.P13929525694451861716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat - A112315 (A140582 n + 1).toNat

end

end A223135.P13929525694451861716

/-! ## A223135.P13834730493563144392

`A026806(A226602(n))*A057427(A140582(n)+1)`
-/

namespace A223135.P13834730493563144392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat * A057427 (A140582 n + 1).toNat

end

end A223135.P13834730493563144392

/-! ## A223135.P13453964569252574006

`A026806(A226602(n))-A326072(A140582(n)²+1)`
-/

namespace A223135.P13453964569252574006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat - A326072 (A140582 n ^ 2 + 1).toNat

end

end A223135.P13453964569252574006

/-! ## A223135.P10406713245374356433

`A026806(A226602(n))*A336651(A140582(n)²+1)`
-/

namespace A223135.P10406713245374356433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A226602 n).toNat * A336651 (A140582 n ^ 2 + 1).toNat

end

end A223135.P10406713245374356433

/-!
# A223136: Numbers n such that sigma(n+1) - sigma(n) = k*n for some integer k, where sigma(n) = A000203 (sum of divisors of n).

The programs for A223136, there is no canonical definition to state claims against.
-/

/-! ## A223136.P9239825412242062528

`record[gcd(n, A340793(n+1))]`
-/

namespace A223136.P9239825412242062528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A340793 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223136.P9239825412242062528

/-! ## A223136.P4177113320936681811

`record[gcd(n+1, A053222(n+1))]`
-/

namespace A223136.P4177113320936681811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223136.P4177113320936681811

/-! ## A223136.P14788623644515176715

`record[gcd(1-A163553(n+1), A000027(n+1))]`
-/

namespace A223136.P14788623644515176715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A163553 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223136.P14788623644515176715

/-!
# A223137: Numbers n such that sigma(n+1) - sigma(n-1) = k*n for some integer k, where sigma(n) = A000203 (sum of divisors of n).

The programs for A223137, there is no canonical definition to state claims against.
-/

/-! ## A223137.P1964976431399187012

`A055574(n%a(n-1))` with `a(0)=5`
-/

namespace A223137.P1964976431399187012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A055574 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A223137.P1964976431399187012

/-! ## A223137.P17586178697866713817

`A055574(A028310(n))%A091646(2*n+3)`
-/

namespace A223137.P17586178697866713817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055574 (A028310 n).toNat) (A091646 (2 * n + 3))

end

end A223137.P17586178697866713817

/-!
# A223138: Numbers n such that sigma(n+1) - sigma(n-1) = n / k for some integer, where sigma(n) = A000203 (sum of divisors of n).

The programs for A223138, there is no canonical definition to state claims against.
-/

/-! ## A223138.P4774095911310405155

`A195918(record[xor(1, A197187(n+1))])`
-/

namespace A223138.P4774095911310405155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A197187 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223138.P4774095911310405155

/-! ## A223138.P11636105653998160103

`record[A000005(A096258(n)+A071904(n+1))]`
-/

namespace A223138.P11636105653998160103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A096258 n + A071904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223138.P11636105653998160103

/-!
# A223139: Decimal expansion of (sqrt(13) - 1)/2.

The programs for A223139, there is no canonical definition to state claims against.
-/

/-! ## A223139.P11481381458916073353

`A209927(n)/ceil(2/(n+1))`
-/

namespace A223139.P11481381458916073353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209927 (n + 1) : ℚ) / (⌈2 / (n + 1 : ℚ)⌉ : ℚ)

end

end A223139.P11481381458916073353

/-! ## A223139.P15054265558130469129

`A098316(n)-A000038(n)`
-/

namespace A223139.P15054265558130469129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - A000038 n

end

end A223139.P15054265558130469129

/-! ## A223139.P10497498125960280524

`A209927(n)-A000007(n)`
-/

namespace A223139.P10497498125960280524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (n + 1) - A000007 n

end

end A223139.P10497498125960280524

/-! ## A223139.P8284263100227978075

`gcd(A098316(n), A209927(n))`
-/

namespace A223139.P8284263100227978075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098316 (n + 1)) (A209927 (n + 1))

end

end A223139.P8284263100227978075

/-! ## A223139.P10424380685962972003

`A098316(n)%A040002(n)!`
-/

namespace A223139.P10424380685962972003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098316 (n + 1)) (Nat.factorial (A040002 n).toNat : ℤ)

end

end A223139.P10424380685962972003

/-! ## A223139.P13951083134335171335

`A098316(n)-2*A000007(n)`
-/

namespace A223139.P13951083134335171335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - 2 * A000007 n

end

end A223139.P13951083134335171335

/-! ## A223139.P15382743584618684626

`A209927(n)+A255176(n)-4`
-/

namespace A223139.P15382743584618684626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (n + 1) + (A255176 n - 4)

end

end A223139.P15382743584618684626

/-! ## A223139.P9425411291930071149

`A209927(n)-floor(1/A002522(n))`
-/

namespace A223139.P9425411291930071149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (n + 1) - ⌊1 / (A002522 n : ℚ)⌋

end

end A223139.P9425411291930071149

/-! ## A223139.P10904625321246492142

`A157532(n+1)+A209927(n)-3`
-/

namespace A223139.P10904625321246492142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + (A209927 (n + 1) - 3)

end

end A223139.P10904625321246492142

/-! ## A223139.P16619260065610541666

`A098316(n)^A001221(A267584(n))`
-/

namespace A223139.P16619260065610541666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098316 (n + 1) : ℚ) ^ (A001221 (A267584 n).toNat : ℤ)

end

end A223139.P16619260065610541666

/-! ## A223139.P17978453356150268623

`A209927(n)^A001221(A267584(n))`
-/

namespace A223139.P17978453356150268623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209927 (n + 1) : ℚ) ^ (A001221 (A267584 n).toNat : ℤ)

end

end A223139.P17978453356150268623

/-! ## A223139.P6081532252726112577

`A098316(n)-2*A008683(A008574(n))`
-/

namespace A223139.P6081532252726112577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - 2 * A008683 (A008574 n).toNat

end

end A223139.P6081532252726112577

/-! ## A223139.P6658109214895909934

`A098316(n)-2*A010051(A017089(n))`
-/

namespace A223139.P6658109214895909934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - 2 * A010051 (A017089 n).toNat

end

end A223139.P6658109214895909934

/-! ## A223139.P16948350978364630143

`A002163(n)+A098316(n)-A098317(n)`
-/

namespace A223139.P16948350978364630143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A098316 (n + 1) - A098317 (n + 1))

end

end A223139.P16948350978364630143

/-! ## A223139.P6164418889434490395

`A057427(A000041(a(n-1)))*A098316(n)` with `a(0)=1`
-/

namespace A223139.P6164418889434490395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057427 (A000041 (a (n - 1)).toNat).toNat * A098316 (n + 1)

end

end A223139.P6164418889434490395

/-! ## A223139.P7974186522368905280

`A158799(n)/A156752(n+1)*A209927(n)`
-/

namespace A223139.P7974186522368905280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158799 n : ℚ) / (A156752 (n + 1) : ℚ) * (A209927 (n + 1) : ℚ)

end

end A223139.P7974186522368905280

/-! ## A223139.P17096714413160755895

`A209927(n)-A035363(A004273(n))`
-/

namespace A223139.P17096714413160755895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (n + 1) - A035363 (A004273 n).toNat

end

end A223139.P17096714413160755895

/-! ## A223139.P7283108656784386013

`A156752(n)+A209927(n)-A165020(n+1)`
-/

namespace A223139.P7283108656784386013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n + (A209927 (n + 1) - A165020 (n + 1))

end

end A223139.P7283108656784386013

/-!
# A223140: Decimal expansion of (sqrt(29) + 1)/2.

The programs for A223140, there is no canonical definition to state claims against.
-/

/-! ## A223140.P7595693998627949854

`A223141(n)+A000007(n)`
-/

namespace A223140.P7595693998627949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + A000007 n

end

end A223140.P7595693998627949854

/-! ## A223140.P8232466234820265249

`A098318(n)-A000038(n)`
-/

namespace A223140.P8232466234820265249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) - A000038 n

end

end A223140.P8232466234820265249

/-! ## A223140.P7034319917502663971

`A223141(n)+C(A151759(n), n)`
-/

namespace A223140.P7034319917502663971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + (Nat.choose (A151759 n).toNat n : ℤ)

end

end A223140.P7034319917502663971

/-! ## A223140.P18184505704120569636

`A223141(n)+A010051(2*(n+1))`
-/

namespace A223140.P18184505704120569636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + A010051 (2 * (n + 1))

end

end A223140.P18184505704120569636

/-! ## A223140.P319435511339526884

`A223141(n)+A209229(2*n+1)`
-/

namespace A223140.P319435511339526884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + A209229 (2 * n + 1)

end

end A223140.P319435511339526884

/-! ## A223140.P2130872720130477318

`A098318(n)-A010673(A001316(n))`
-/

namespace A223140.P2130872720130477318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) - A010673 (A001316 n).toNat

end

end A223140.P2130872720130477318

/-! ## A223140.P4489610960446832731

`or(A000007(A000194(n)), A223141(n))`
-/

namespace A223140.P4489610960446832731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000194 n).toNat) (A223141 (n + 1))

end

end A223140.P4489610960446832731

/-! ## A223140.P16286049768991637697

`A054977(n)+A098318(n)-A054977(n)²`
-/

namespace A223140.P16286049768991637697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A098318 (n + 1) - A054977 n ^ 2)

end

end A223140.P16286049768991637697

/-! ## A223140.P8828715537344545527

`or(A000007(A004956(n)), A223141(n))`
-/

namespace A223140.P8828715537344545527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A004956 n).toNat) (A223141 (n + 1))

end

end A223140.P8828715537344545527

/-! ## A223140.P6778431547307100555

`A223141(n)+A084099(2*n)`
-/

namespace A223140.P6778431547307100555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + A084099 (2 * n)

end

end A223140.P6778431547307100555

/-! ## A223140.P11243660980496776224

`or(A000007(A005843(n)), A223141(n))`
-/

namespace A223140.P11243660980496776224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A005843 n).toNat) (A223141 (n + 1))

end

end A223140.P11243660980496776224

/-! ## A223140.P11447982229150556229

`A098318(n)-A084099(A103517(n))`
-/

namespace A223140.P11447982229150556229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) - A084099 (A103517 n).toNat

end

end A223140.P11447982229150556229

/-! ## A223140.P3136210806915330357

`A098318(n)+A084099(A103517(n)+2)`
-/

namespace A223140.P3136210806915330357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) + A084099 (A103517 n + 2).toNat

end

end A223140.P3136210806915330357

/-! ## A223140.P18081747410715691680

`or(A000007(A008585(n)), A223141(n))`
-/

namespace A223140.P18081747410715691680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A008585 n).toNat) (A223141 (n + 1))

end

end A223140.P18081747410715691680

/-! ## A223140.P56298188505313980

`A098318(n)-A084099(A008579(n))`
-/

namespace A223140.P56298188505313980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) - A084099 (A008579 n).toNat

end

end A223140.P56298188505313980

/-! ## A223140.P15077460111127192807

`A098318(n)+A084099(A008579(n)+2)`
-/

namespace A223140.P15077460111127192807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) + A084099 (A008579 n + 2).toNat

end

end A223140.P15077460111127192807

/-! ## A223140.P8731784509323788134

`A098318(n)-A084099(A008458(n))`
-/

namespace A223140.P8731784509323788134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) - A084099 (A008458 n).toNat

end

end A223140.P8731784509323788134

/-! ## A223140.P6589053430257179419

`A098318(n)+A084099(A008458(n)+2)`
-/

namespace A223140.P6589053430257179419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1) + A084099 (A008458 n + 2).toNat

end

end A223140.P6589053430257179419

/-!
# A223141: Decimal expansion of (sqrt(29) - 1)/2.

The programs for A223141, there is no canonical definition to state claims against.
-/

/-! ## A223141.P7606199135708321735

`floor(A098318(n)/A054977(n))`
-/

namespace A223141.P7606199135708321735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098318 (n + 1) : ℚ) / (A054977 n : ℚ)⌋

end

end A223141.P7606199135708321735

/-! ## A223141.P16677888300411196943

`A223140(3*A000038(n)+n)`
-/

namespace A223141.P16677888300411196943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 ((3 * A000038 n + (n : ℤ)).toNat + 1)

end

end A223141.P16677888300411196943

/-! ## A223141.P14660417729197991440

`A223140(n)-A000038(n)/2`
-/

namespace A223141.P14660417729197991440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223140 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A223141.P14660417729197991440

/-! ## A223141.P9891897842996617984

`A098318(n)%(A040030(n)²/12)`
-/

namespace A223141.P9891897842996617984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098318 (n + 1)) (SequenceMachineLib.roundAway ((A040030 n ^ 2 : ℚ) / 12))

end

end A223141.P9891897842996617984

/-! ## A223141.P2014936708816671715

`A223140(n)-A010051(2*(n+1))`
-/

namespace A223141.P2014936708816671715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - A010051 (2 * (n + 1))

end

end A223141.P2014936708816671715

/-! ## A223141.P15534729463778556219

`A223140(n)-A010054(A001316(n))`
-/

namespace A223141.P15534729463778556219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - A010054 (A001316 n).toNat

end

end A223141.P15534729463778556219

/-! ## A223141.P64436599185047052

`A223140(n)-A010054(A010054(n)+n)`
-/

namespace A223141.P64436599185047052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - A010054 (A010054 n + (n : ℤ)).toNat

end

end A223141.P64436599185047052

/-! ## A223141.P9480621867621182253

`(A304726(n)+A098318(n))%A304726(n)`
-/

namespace A223141.P9480621867621182253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304726 n + A098318 (n + 1)) (A304726 n)

end

end A223141.P9480621867621182253

/-! ## A223141.P16622942896995392191

`lcm(A223140(n), A295259(A295259(a(n-1)+1)+1))` with `a(0)=2`
-/

namespace A223141.P16622942896995392191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (A223140 (n + 1)) (A295259 (A295259 (a (n - 1) + 1) + 1).toNat)

end

end A223141.P16622942896995392191

/-! ## A223141.P3543700303143920858

`A223140(n)-A084099(2*n)`
-/

namespace A223141.P3543700303143920858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - A084099 (2 * n)

end

end A223141.P3543700303143920858

/-! ## A223141.P11670511305614214650

`A223140(n)-A084099(A005843(n))²`
-/

namespace A223141.P11670511305614214650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - A084099 (A005843 n).toNat ^ 2

end

end A223141.P11670511305614214650

/-! ## A223141.P17135226716924897339

`A223140(n)-A010673(A103517(n))/2`
-/

namespace A223141.P17135226716924897339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223140 (n + 1) : ℚ) - (A010673 (A103517 n).toNat : ℚ) / 2

end

end A223141.P17135226716924897339

/-! ## A223141.P7278087979704826963

`A223140(n)-A010673(A008579(n))/2`
-/

namespace A223141.P7278087979704826963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223140 (n + 1) : ℚ) - (A010673 (A008579 n).toNat : ℚ) / 2

end

end A223141.P7278087979704826963

/-! ## A223141.P6346447151166673978

`A223140(n)-A010673(A008458(n))/2`
-/

namespace A223141.P6346447151166673978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223140 (n + 1) : ℚ) - (A010673 (A008458 n).toNat : ℚ) / 2

end

end A223141.P6346447151166673978

/-! ## A223141.P8863620631491852051

`A223140(n)-A010054(A000096(n))`
-/

namespace A223141.P8863620631491852051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - A010054 (A000096 n).toNat

end

end A223141.P8863620631491852051

/-!
# A223142: G.f. satisfies: A(x)^2 = A(x^2)^2 + 4*x.

The programs for A223142, there is no canonical definition to state claims against.
-/

/-! ## A223142.P4387791697058617675

`2*(-1)^p?[A169985(n+3)]*a(n-1)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A223142.P4387791697058617675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0, 0, 2] fun n a =>
  2 * (-1 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ) * a (n - 1)

end

end A223142.P4387791697058617675

/-!
# A223143: G.f. satisfies: A(x)^3 = A(x^2)^3 + 9*x.

The programs for A223143, there is no canonical definition to state claims against.
-/

/-! ## A223143.P8741891228848702135

`xor(A009586(n), A172471(A009592(n+1)))`
-/

namespace A223143.P8741891228848702135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009586 n) (A172471 (A009592 (n + 1)).toNat)

end

end A223143.P8741891228848702135

/-!
# A223144: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223144, there is no canonical definition to state claims against.
-/

/-! ## A223144.P15233848708200672797

`A223149(∑[n+1]+2)`
-/

namespace A223144.P15233848708200672797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223144.P15233848708200672797

/-! ## A223144.P4561224833740358179

`record[gcd(A223149(n+1), A264405(n))]`
-/

namespace A223144.P4561224833740358179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223149 (n + 1)) (A264405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223144.P4561224833740358179

/-! ## A223144.P5521029838038439461

`record[gcd(A223149(n+2), A354794(n))]`
-/

namespace A223144.P5521029838038439461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223149 (n + 2)) (A354794 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223144.P5521029838038439461

/-! ## A223144.P2613801878765908693

`record[A223149(n+3)/A302889(n+2)]`
-/

namespace A223144.P2613801878765908693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223149 (n + 3) : ℚ) / (A302889 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223144.P2613801878765908693

/-! ## A223144.P9872426580519210049

`record[A223149(∑[A152271(n)])]`
-/

namespace A223144.P9872426580519210049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223144.P9872426580519210049

/-!
# A223145: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223145, there is no canonical definition to state claims against.
-/

/-! ## A223145.P3710078768417853494

`A223149(∑[n+2]+4)`
-/

namespace A223145.P3710078768417853494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223145.P3710078768417853494

/-! ## A223145.P18380038805660141007

`A223149(A167614(n+1))%(((n+1)^3+n+1)*6^(n+1))`
-/

namespace A223145.P18380038805660141007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223149 (A167614 (n + 1)).toNat) (((n + 1) ^ 3 + (n + 1)) * 6 ^ (n + 1) : ℤ)

end

end A223145.P18380038805660141007

/-! ## A223145.P17880867663488850016

`A223149(A167614(n+1))+A025439(n)`
-/

namespace A223145.P17880867663488850016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A167614 (n + 1)).toNat + A025439 n

end

end A223145.P17880867663488850016

/-! ## A223145.P9707303736704567474

`A223149(A167614(n+1))+A025442(n)`
-/

namespace A223145.P9707303736704567474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A167614 (n + 1)).toNat + A025442 n

end

end A223145.P9707303736704567474

/-! ## A223145.P10887210936252919876

`A223149(A167614(n+1))+A025444(n)`
-/

namespace A223145.P10887210936252919876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A167614 (n + 1)).toNat + A025444 n

end

end A223145.P10887210936252919876

/-!
# A223146: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223146, there is no canonical definition to state claims against.
-/

/-! ## A223146.P7518826597998325081

`A223149(A374004(n+1))`
-/

namespace A223146.P7518826597998325081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A374004 (n + 1)).toNat

end

end A223146.P7518826597998325081

/-! ## A223146.P1032508175214849880

`A223149(A141214(n)+7)`
-/

namespace A223146.P1032508175214849880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A141214 n + 7).toNat

end

end A223146.P1032508175214849880

/-! ## A223146.P16063766990814664750

`A223149(A052905(n)+9)`
-/

namespace A223146.P16063766990814664750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A052905 n + 9).toNat

end

end A223146.P16063766990814664750

/-! ## A223146.P4627997143975273395

`A223149(A055999(n)+10)`
-/

namespace A223146.P4627997143975273395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A055999 n + 10).toNat

end

end A223146.P4627997143975273395

/-! ## A223146.P16409458023276373278

`A223149(eq[5, A066657(n)])`
-/

namespace A223146.P16409458023276373278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223146.P16409458023276373278

/-!
# A223147: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223147, there is no canonical definition to state claims against.
-/

/-! ## A223147.P18428463200100527978

`A223149(A374005(n+1))`
-/

namespace A223147.P18428463200100527978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A374005 (n + 1)).toNat

end

end A223147.P18428463200100527978

/-! ## A223147.P14779910660956388786

`A223149(A167499(n+3))`
-/

namespace A223147.P14779910660956388786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A167499 (n + 3)).toNat

end

end A223147.P14779910660956388786

/-! ## A223147.P4733164317210399674

`A223149(A155212(n)+13)`
-/

namespace A223147.P4733164317210399674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A155212 n + 13).toNat

end

end A223147.P4733164317210399674

/-! ## A223147.P7244275157079673021

`A223149(A056000(n)+15)`
-/

namespace A223147.P7244275157079673021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A056000 n + 15).toNat

end

end A223147.P7244275157079673021

/-! ## A223147.P1867180625833608089

`A223149(eq[7, A066657(n)])`
-/

namespace A223147.P1867180625833608089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223147.P1867180625833608089

/-!
# A223148: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223148, there is no canonical definition to state claims against.
-/

/-! ## A223148.P10504011015968947365

`A223149(C(n+7, 2)-n)`
-/

namespace A223148.P10504011015968947365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (Nat.choose (n + 7) 2 - n)

end

end A223148.P10504011015968947365

/-! ## A223148.P7996035373991003186

`A223149(A374007(n+1))`
-/

namespace A223148.P7996035373991003186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A374007 (n + 1)).toNat

end

end A223148.P7996035373991003186

/-! ## A223148.P15757135911587737502

`A223149(A056115(n)+21)`
-/

namespace A223148.P15757135911587737502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (A056115 n + 21).toNat

end

end A223148.P15757135911587737502

/-! ## A223148.P8448722154694553243

`A223149(Δ[A264443(n)]+10)`
-/

namespace A223148.P8448722154694553243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (f1 (n + 1) - f1 n + 10).toNat

end

end A223148.P8448722154694553243

/-!
# A223150: Number of nX2 0..1 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223150, there is no canonical definition to state claims against.
-/

/-! ## A223150.P12164262320497831404

`A223154(∑[n+1]+2)`
-/

namespace A223150.P12164262320497831404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223150.P12164262320497831404

/-! ## A223150.P18127204636371876166

`record[A223154(n+2)-A223179(n+1)]`
-/

namespace A223150.P18127204636371876166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (n + 2) - A223179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223150.P18127204636371876166

/-! ## A223150.P17090147296213277649

`record[A223154(Δ[A003453(n+5)])]`
-/

namespace A223150.P17090147296213277649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223150.P17090147296213277649

/-! ## A223150.P14238018898506620635

`record[and(A180051(n+1), A223154(n+1))]`
-/

namespace A223150.P14238018898506620635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180051 (n + 1)) (A223154 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223150.P14238018898506620635

/-!
# A223151: Number of nX3 0..1 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223151, there is no canonical definition to state claims against.
-/

/-! ## A223151.P14089114165855550470

`A223154(∑[n+2]+4)`
-/

namespace A223151.P14089114165855550470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223151.P14089114165855550470

/-! ## A223151.P16958430973536198480

`lcm(2, A223154(A167614(n+1)))`
-/

namespace A223151.P16958430973536198480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223154 (A167614 (n + 1)).toNat)

end

end A223151.P16958430973536198480

/-! ## A223151.P8707713116111714462

`A223154(A167614(n+1))+A185264(n)`
-/

namespace A223151.P8707713116111714462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A167614 (n + 1)).toNat + A185264 n

end

end A223151.P8707713116111714462

/-! ## A223151.P13249620785583376133

`A223154(A373663(n+1))+A025439(n)`
-/

namespace A223151.P13249620785583376133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A373663 (n + 1)).toNat + A025439 n

end

end A223151.P13249620785583376133

/-! ## A223151.P15463917061604633824

`A054977(n)*A223154(A167614(n+1))`
-/

namespace A223151.P15463917061604633824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A223154 (A167614 (n + 1)).toNat

end

end A223151.P15463917061604633824

/-!
# A223152: Number of nX4 0..1 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223152, there is no canonical definition to state claims against.
-/

/-! ## A223152.P8079844158232412987

`A223154(A374004(n+1))`
-/

namespace A223152.P8079844158232412987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A374004 (n + 1)).toNat

end

end A223152.P8079844158232412987

/-! ## A223152.P12273616641574304127

`A223154(A141214(n)+7)`
-/

namespace A223152.P12273616641574304127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A141214 n + 7).toNat

end

end A223152.P12273616641574304127

/-! ## A223152.P4121075328757404295

`A223154(A052905(n)+9)`
-/

namespace A223152.P4121075328757404295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A052905 n + 9).toNat

end

end A223152.P4121075328757404295

/-! ## A223152.P14494034231091111845

`A223154(A055999(n)+10)`
-/

namespace A223152.P14494034231091111845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A055999 n + 10).toNat

end

end A223152.P14494034231091111845

/-! ## A223152.P2252358786727820491

`A223154(eq[5, A066657(n)])`
-/

namespace A223152.P2252358786727820491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223152.P2252358786727820491

/-!
# A223153: Number of n X 5 0..1 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223153, there is no canonical definition to state claims against.
-/

/-! ## A223153.P7917597745533246762

`A223154(∑[n+4]+11)`
-/

namespace A223153.P7917597745533246762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223153.P7917597745533246762

/-! ## A223153.P1371858133134089310

`A223154(A374005(n+1))+A025439(n)`
-/

namespace A223153.P1371858133134089310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A374005 (n + 1)).toNat + A025439 n

end

end A223153.P1371858133134089310

/-! ## A223153.P9335270793486902882

`A223154(A374005(n+1))*A224813(n)`
-/

namespace A223153.P9335270793486902882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A374005 (n + 1)).toNat * A224813 n

end

end A223153.P9335270793486902882

/-! ## A223153.P12495615620563467720

`A223154(A374005(n+1))+A000007(3*n+2)`
-/

namespace A223153.P12495615620563467720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223154 (A374005 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A223153.P12495615620563467720

/-!
# A223155: Number of (n+2)X3 0..2 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223155, there is no canonical definition to state claims against.
-/

/-! ## A223155.P10592317816300444490

`A223157(∑[n]+1)`
-/

namespace A223155.P10592317816300444490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223155.P10592317816300444490

/-! ## A223155.P9417233369779882645

`or(1, A223157(A000124(n)))`
-/

namespace A223155.P9417233369779882645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223157 (A000124 n).toNat)

end

end A223155.P9417233369779882645

/-! ## A223155.P17733217985427930687

`record[A223157(A114091(n+1))]`
-/

namespace A223155.P17733217985427930687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223155.P17733217985427930687

/-! ## A223155.P11199922228360061765

`record[A223157(A246276(n+1))]`
-/

namespace A223155.P11199922228360061765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223155.P11199922228360061765

/-!
# A223156: Number of (n+2)X4 0..2 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223156, there is no canonical definition to state claims against.
-/

/-! ## A223156.P1890012910732382436

`A223157(∑[n+1]+2)`
-/

namespace A223156.P1890012910732382436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223156.P1890012910732382436

/-! ## A223156.P1742130100637034593

`record[A223157(C(val(n+1, 2)+2, 2)+2)]`
-/

namespace A223156.P1742130100637034593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 2) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223156.P1742130100637034593

/-! ## A223156.P14193226371306857149

`record[A223157(A114091(n+1)+1)]`
-/

namespace A223156.P14193226371306857149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223156.P14193226371306857149

/-!
# A223158: Number of (n+2)X3 0..3 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223158, there is no canonical definition to state claims against.
-/

/-! ## A223158.P6815458063363468112

`A223159(∑[n]+1)`
-/

namespace A223158.P6815458063363468112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223158.P6815458063363468112

/-! ## A223158.P17310109066403958061

`record[A010054(n)*A223159(n+1)]`
-/

namespace A223158.P17310109066403958061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223158.P17310109066403958061

/-! ## A223158.P14688363674362266409

`record[A103451(n)*A223159(n+1)]`
-/

namespace A223158.P14688363674362266409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A223159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223158.P14688363674362266409

/-!
# A223160: Number of nX1 0..3 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223160, there is no canonical definition to state claims against.
-/

/-! ## A223160.P7690422773130170053

`A223748(n+1)/A223045(n+1)`
-/

namespace A223160.P7690422773130170053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223748 (n + 1) : ℚ) / (A223045 (n + 1) : ℚ)

end

end A223160.P7690422773130170053

/-! ## A223160.P14863996790330973634

`A223162(n+1)/A223161(n+1)`
-/

namespace A223160.P14863996790330973634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223162 (n + 1) : ℚ) / (A223161 (n + 1) : ℚ)

end

end A223160.P14863996790330973634

/-! ## A223160.P15645555328281752551

`A223044(n+1)/A223046(n+1)*A223748(n+1)`
-/

namespace A223160.P15645555328281752551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223044 (n + 1) : ℚ) / (A223046 (n + 1) : ℚ) * (A223748 (n + 1) : ℚ)

end

end A223160.P15645555328281752551

/-! ## A223160.P16572322766883272990

`A223165(∑[n]+1)`
-/

namespace A223160.P16572322766883272990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223160.P16572322766883272990

/-! ## A223160.P4608401573153738685

`record[root(A223165(n+1), A076112(n+1))]`
-/

namespace A223160.P4608401573153738685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223165 (n + 1) : ℝ) ^ (1 / (A076112 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223160.P4608401573153738685

/-!
# A223161: Number of n X 2 0..3 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223161, there is no canonical definition to state claims against.
-/

/-! ## A223161.P15414411642403024513

`A223162(n+1)/A223160(n+1)`
-/

namespace A223161.P15414411642403024513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223162 (n + 1) : ℚ) / (A223160 (n + 1) : ℚ)

end

end A223161.P15414411642403024513

/-! ## A223161.P13058957404686497510

`A223045(n+1)*A223162(n+1)/A223748(n+1)`
-/

namespace A223161.P13058957404686497510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223045 (n + 1) * A223162 (n + 1) : ℚ) / (A223748 (n + 1) : ℚ)

end

end A223161.P13058957404686497510

/-! ## A223161.P8798524514588833764

`A223162(n+1)/A223165(A000124(n))`
-/

namespace A223161.P8798524514588833764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223162 (n + 1) : ℚ) / (A223165 (A000124 n).toNat : ℚ)

end

end A223161.P8798524514588833764

/-! ## A223161.P5745478804505142903

`A223165(∑[n+1]+2)`
-/

namespace A223161.P5745478804505142903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223161.P5745478804505142903

/-! ## A223161.P10758448380251397705

`record[root(A223165(n+2), A076112(n+1))]`
-/

namespace A223161.P10758448380251397705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223165 (n + 2) : ℝ) ^ (1 / (A076112 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223161.P10758448380251397705

/-!
# A223162: Number of n X 3 0..3 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223162, there is no canonical definition to state claims against.
-/

/-! ## A223162.P11384561066467177731

`A223160(n+1)*A223161(n+1)`
-/

namespace A223162.P11384561066467177731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223160 (n + 1) * A223161 (n + 1)

end

end A223162.P11384561066467177731

/-! ## A223162.P4952190057033545476

`A223161(n+1)/A223045(n+1)*A223748(n+1)`
-/

namespace A223162.P4952190057033545476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223161 (n + 1) : ℚ) / (A223045 (n + 1) : ℚ) * (A223748 (n + 1) : ℚ)

end

end A223162.P4952190057033545476

/-! ## A223162.P3852824686219356875

`A223161(n+1)*A223165(∑[n]+1)`
-/

namespace A223162.P3852824686219356875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223161 (n + 1) * A223165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223162.P3852824686219356875

/-! ## A223162.P2027069095463552343

`A223160(n+1)*A223165(∑[n+1]+2)`
-/

namespace A223162.P2027069095463552343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223160 (n + 1) * A223165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223162.P2027069095463552343

/-! ## A223162.P17175765111344282497

`A223165(∑[n+2]+4)`
-/

namespace A223162.P17175765111344282497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223162.P17175765111344282497

/-!
# A223163: Number of nX4 0..3 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223163, there is no canonical definition to state claims against.
-/

/-! ## A223163.P10213908622321520532

`A223165(A052905(n)+9)`
-/

namespace A223163.P10213908622321520532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (A052905 n + 9).toNat

end

end A223163.P10213908622321520532

/-! ## A223163.P11928794917960355183

`A223165(A055999(n)+10)`
-/

namespace A223163.P11928794917960355183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (A055999 n + 10).toNat

end

end A223163.P11928794917960355183

/-! ## A223163.P9180336608179700314

`A223165(eq[5, A066657(n)])`
-/

namespace A223163.P9180336608179700314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223163.P9180336608179700314

/-! ## A223163.P3319774638549996877

`A223165(A167614(n+2)+1)`
-/

namespace A223163.P3319774638549996877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (A167614 (n + 2) + 1).toNat

end

end A223163.P3319774638549996877

/-! ## A223163.P7240960768914262938

`A223165(A000124(n+3)+3)`
-/

namespace A223163.P7240960768914262938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (A000124 (n + 3) + 3).toNat

end

end A223163.P7240960768914262938

/-!
# A223164: Number of nX5 0..3 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223164, there is no canonical definition to state claims against.
-/

/-! ## A223164.P5524631631777612774

`A223165(A374005(n+1))`
-/

namespace A223164.P5524631631777612774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (A374005 (n + 1)).toNat

end

end A223164.P5524631631777612774

/-! ## A223164.P6008064602806111608

`A223165(Δ[A023545(n+1)])`
-/

namespace A223164.P6008064602806111608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223165 (f1 (n + 1) - f1 n).toNat

end

end A223164.P6008064602806111608

/-!
# A223166: Integer nearest to Li(10^n) - Li(3), where Li(x) = integral(0..x, dt/log(t)).

The programs for A223166, there is no canonical definition to state claims against.
-/

/-! ## A223166.P2155602165262445096

`A223167(n+1)+A006880(n+1)`
-/

namespace A223166.P2155602165262445096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223167 (n + 1) + A006880 (n + 1)

end

end A223166.P2155602165262445096

/-! ## A223166.P16045122170671520691

`A223167(n+1)+∑[A006879(n+1)]`
-/

namespace A223166.P16045122170671520691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223167 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223166.P16045122170671520691

/-! ## A223166.P15132744033317119905

`A057754(n+1)+A223167(n+1)-A057752(n+1)`
-/

namespace A223166.P15132744033317119905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) + (A223167 (n + 1) - A057752 (n + 1))

end

end A223166.P15132744033317119905

/-! ## A223166.P14486922132650724224

`A057793(n+1)+A223167(n+1)-A057794(n+1)`
-/

namespace A223166.P14486922132650724224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057793 (n + 1) + (A223167 (n + 1) - A057794 (n + 1))

end

end A223166.P14486922132650724224

/-! ## A223166.P18378611230388608369

`A190802(n+1)+A223167(n+1)-A106313(n+1)`
-/

namespace A223166.P18378611230388608369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) + (A223167 (n + 1) - A106313 (n + 1))

end

end A223166.P18378611230388608369

/-!
# A223167: Difference between nearest integer to (Li(10^n)-Li(3)) and pi(10^n), where Li(10^n)-Li(3) = integral(3.. 10^n, dt/log(t)) (A223166) and pi(10^n) = number of primes <= 10^n (A006880).

The programs for A223167, there is no canonical definition to state claims against.
-/

/-! ## A223167.P5556368354429323716

`A223166(n+1)-A006880(n+1)`
-/

namespace A223167.P5556368354429323716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) - A006880 (n + 1)

end

end A223167.P5556368354429323716

/-! ## A223167.P16161848491636764489

`A223166(n+1)-∑[A006879(n+1)]`
-/

namespace A223167.P16161848491636764489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223167.P16161848491636764489

/-! ## A223167.P12263939707036583784

`A057752(n+1)+A223166(n+1)-A057754(n+1)`
-/

namespace A223167.P12263939707036583784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057752 (n + 1) + (A223166 (n + 1) - A057754 (n + 1))

end

end A223167.P12263939707036583784

/-! ## A223167.P1602608308881398237

`A057794(n+1)+A223166(n+1)-A057793(n+1)`
-/

namespace A223167.P1602608308881398237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057794 (n + 1) + (A223166 (n + 1) - A057793 (n + 1))

end

end A223167.P1602608308881398237

/-! ## A223167.P9514511506067614137

`A106313(n+1)+A223166(n+1)-A190802(n+1)`
-/

namespace A223167.P9514511506067614137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106313 (n + 1) + (A223166 (n + 1) - A190802 (n + 1))

end

end A223167.P9514511506067614137

/-!
# A223173: Poly-Cauchy numbers c_3^(-n).

The programs for A223173, the canonical program `A223173.P15784814532122000459` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223173 has offset 1).

The definition of A223173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223173.P15784814532122000459

`2^(n+2)-3^(n+2)+4^(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223173

/-- `2^(n+2)-3^(n+2)+4^(n+1)` -/
def P15784814532122000459.Spec : Prop :=
  ∀ n, P15784814532122000459.a n = A223173 (n + 1)

theorem P15784814532122000459.correct : P15784814532122000459.Spec := by
  intro n
  simp only [A223173, Nat.add_sub_cancel]

end A223173

/-! ## A223173.P4028773727231397131

`∑[Δ[A137786(n)]-A166060(n)]`
-/

namespace A223173.P4028773727231397131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A166060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223173.P4028773727231397131

namespace A223173

/-- `∑[Δ[A137786(n)]-A166060(n)]` -/
def P4028773727231397131.Spec : Prop :=
  ∀ n, P4028773727231397131.a n = A223173 (n + 1)

end A223173

/-!
# A223175: Smallest prime q such that 2n+1 = p + 8*q for some odd prime p, or 0 if no such prime exists.

The programs for A223175, there is no canonical definition to state claims against.
-/

/-! ## A223175.P10951727133861614112

`A211396(A337206(n)^3)`
-/

namespace A223175.P10951727133861614112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A337206 n ^ 3).toNat

end

end A223175.P10951727133861614112

/-! ## A223175.P7006380414150793552

`A211396(A337206(n)²*A337206(n))`
-/

namespace A223175.P7006380414150793552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A337206 n ^ 2 * A337206 n).toNat

end

end A223175.P7006380414150793552

/-! ## A223175.P604161800423360381

`p?[A095407(n+1)]%A055642(A137811(n+1))`
-/

namespace A223175.P604161800423360381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A055642 (A137811 (n + 1)).toNat)

end

end A223175.P604161800423360381

/-!
# A223176: Number of (n+2)X4 0..1 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223176, there is no canonical definition to state claims against.
-/

/-! ## A223176.P11464576796251238379

`A223179(∑[n+1]+2)`
-/

namespace A223176.P11464576796251238379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223176.P11464576796251238379

/-! ## A223176.P9158592133136478039

`record[A223179(A252752(n+1))]`
-/

namespace A223176.P9158592133136478039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A252752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223176.P9158592133136478039

/-! ## A223176.P10848282524907723176

`record[A223179(A133263(n))-char[1]]`
-/

namespace A223176.P10848282524907723176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A133263 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223176.P10848282524907723176

/-! ## A223176.P6288939448755429547

`record[A223179(n+1)/A144048(n)²]`
-/

namespace A223176.P6288939448755429547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223179 (n + 1) : ℚ) / (A144048 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223176.P6288939448755429547

/-! ## A223176.P6671258904373674829

`record[A223179(A133263(n^(char[n²]/2)))]`
-/

namespace A223176.P6671258904373674829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A133263 (SequenceMachineLib.roundAway ((n : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223176.P6671258904373674829

/-!
# A223177: Number of (n+2)X5 0..1 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223177, there is no canonical definition to state claims against.
-/

/-! ## A223177.P3614224540356898047

`A223179(∑[n+2]+4)`
-/

namespace A223177.P3614224540356898047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223177.P3614224540356898047

/-! ## A223177.P13484373599772579295

`record[∑{e}[n, A223179(A167614(#))]]`
-/

namespace A223177.P13484373599772579295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A223179 (A167614 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223177.P13484373599772579295

/-! ## A223177.P9698038366689997007

`lcm(2, A223179(A167614(n+1)))`
-/

namespace A223177.P9698038366689997007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223179 (A167614 (n + 1)).toNat)

end

end A223177.P9698038366689997007

/-! ## A223177.P13952839664148914056

`record[char[A133263(n)]*A223179(n+1)]`
-/

namespace A223177.P13952839664148914056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223177.P13952839664148914056

/-! ## A223177.P16468359150331286049

`A223179(A167614(n+1))+A184946(n)`
-/

namespace A223177.P16468359150331286049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A167614 (n + 1)).toNat + A184946 n

end

end A223177.P16468359150331286049

/-!
# A223178: Number of (n+2)X6 0..1 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223178, there is no canonical definition to state claims against.
-/

/-! ## A223178.P2220506096044822427

`A223179(A141214(n+1))`
-/

namespace A223178.P2220506096044822427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A141214 (n + 1)).toNat

end

end A223178.P2220506096044822427

/-! ## A223178.P10254841203673749349

`A223179(A374004(n+1))`
-/

namespace A223178.P10254841203673749349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A374004 (n + 1)).toNat

end

end A223178.P10254841203673749349

/-! ## A223178.P17340910639307491850

`A223179(A155212(n)+5)`
-/

namespace A223178.P17340910639307491850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A155212 n + 5).toNat

end

end A223178.P17340910639307491850

/-! ## A223178.P8969468701332012172

`A223179(A056000(n)+7)`
-/

namespace A223178.P8969468701332012172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A056000 n + 7).toNat

end

end A223178.P8969468701332012172

/-! ## A223178.P769437827689940074

`A223179(A052905(n)+9)`
-/

namespace A223178.P769437827689940074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223179 (A052905 n + 9).toNat

end

end A223178.P769437827689940074

/-!
# A223179: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with all rows and columns having a strictly positive second derivative in a quadratic least squares fit.

The programs for A223179, there is no canonical definition to state claims against.
-/

/-! ## A223179.P13754274755216904794

`A048865(A022177(n))`
-/

namespace A223179.P13754274755216904794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A022177 n).toNat

end

end A223179.P13754274755216904794

/-! ## A223179.P13449580289527797441

`A137744(A137897(n)+2)`
-/

namespace A223179.P13449580289527797441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137744 (A137897 n + 2).toNat

end

end A223179.P13449580289527797441

/-! ## A223179.P13946231174413242265

`A059995(C(A173047(n), 2))`
-/

namespace A223179.P13946231174413242265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Nat.choose (A173047 n).toNat 2)

end

end A223179.P13946231174413242265

/-! ## A223179.P17320421309052761086

`A005871(A270062(n))`
-/

namespace A223179.P17320421309052761086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005871 (A270062 n).toNat

end

end A223179.P17320421309052761086

/-! ## A223179.P8988176543321460433

`A028714(A352701(n))`
-/

namespace A223179.P8988176543321460433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028714 (A352701 n).toNat

end

end A223179.P8988176543321460433

/-!
# A223180: Rolling icosahedron footprints: number of n X n 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223180, there is no canonical definition to state claims against.
-/

/-! ## A223180.P13866863951909693756

`A223186(∑[4*n]+1)`
-/

namespace A223180.P13866863951909693756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223180.P13866863951909693756

/-! ## A223180.P3694008891527833758

`record[gcd(A114327(n), A223186(n+1))]`
-/

namespace A223180.P3694008891527833758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223186 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223180.P3694008891527833758

/-! ## A223180.P11905409813125379132

`A223186(A001844(n))+A036426(n)`
-/

namespace A223180.P11905409813125379132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A001844 n).toNat + A036426 n

end

end A223180.P11905409813125379132

/-! ## A223180.P13796901008738342313

`A223186(A001844(n))*A291168(n)`
-/

namespace A223180.P13796901008738342313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A001844 n).toNat * A291168 n

end

end A223180.P13796901008738342313

/-! ## A223180.P10933193209608648770

`lcm(A007318(n), A223186(A001844(n)))`
-/

namespace A223180.P10933193209608648770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A223186 (A001844 n).toNat)

end

end A223180.P10933193209608648770

/-!
# A223181: Rolling icosahedron footprints: number of n X 3 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223181, the canonical program `A223181.P862468845761076528` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223181 has offset 1).

The definition of A223181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223181.P862468845761076528

`6*a(n-1)-4*a(n-2)` with `a(0)=25, a(1)=80, a(2)=400`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223181

/-- `6*a(n-1)-4*a(n-2)` -/
def P862468845761076528.Spec : Prop :=
  ∀ n, P862468845761076528.a n = A223181 (n + 1)

theorem P862468845761076528.correct : P862468845761076528.Spec := by
  intro n
  simp only [A223181, Nat.add_sub_cancel]

end A223181

/-! ## A223181.P18077085033085623974

`5*A122367(n)*Δ[A134067(n)]`
-/

namespace A223181.P18077085033085623974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122367 n * (f1 (n + 1) - f1 n)

end

end A223181.P18077085033085623974

namespace A223181

/-- `5*A122367(n)*Δ[A134067(n)]` -/
def P18077085033085623974.Spec : Prop :=
  ∀ n, P18077085033085623974.a n = A223181 (n + 1)

end A223181

/-! ## A223181.P7624939787741887875

`(A005248(n+1)+A005248(n))*A258935(n+2)`
-/

namespace A223181.P7624939787741887875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) + A005248 n) * A258935 (n + 2)

end

end A223181.P7624939787741887875

namespace A223181

/-- `(A005248(n+1)+A005248(n))*A258935(n+2)` -/
def P7624939787741887875.Spec : Prop :=
  ∀ n, P7624939787741887875.a n = A223181 (n + 1)

end A223181

/-! ## A223181.P17448335191808316263

`A223186(∑[n+2]+4)`
-/

namespace A223181.P17448335191808316263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223181.P17448335191808316263

namespace A223181

/-- `A223186(∑[n+2]+4)` -/
def P17448335191808316263.Spec : Prop :=
  ∀ n, P17448335191808316263.a n = A223181 (n + 1)

end A223181

/-! ## A223181.P4574042938647953534

`lcm(5, A223186(A167614(n+1)))`
-/

namespace A223181.P4574042938647953534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A223186 (A167614 (n + 1)).toNat)

end

end A223181.P4574042938647953534

namespace A223181

/-- `lcm(5, A223186(A167614(n+1)))` -/
def P4574042938647953534.Spec : Prop :=
  ∀ n, (P4574042938647953534.a n : ℤ) = A223181 (n + 1)

end A223181

/-!
# A223182: Rolling icosahedron footprints: number of n X 4 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223182, there is no canonical definition to state claims against.
-/

/-! ## A223182.P14637254839087852587

`A223186(A141214(n)+7)`
-/

namespace A223182.P14637254839087852587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A141214 n + 7).toNat

end

end A223182.P14637254839087852587

/-! ## A223182.P9498652174390588262

`A223186(A052905(n)+9)`
-/

namespace A223182.P9498652174390588262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A052905 n + 9).toNat

end

end A223182.P9498652174390588262

/-! ## A223182.P17274473914771421075

`A223186(A167614(n+2)+1)`
-/

namespace A223182.P17274473914771421075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A167614 (n + 2) + 1).toNat

end

end A223182.P17274473914771421075

/-! ## A223182.P4176969028263456566

`A223186(Δ[A023545(n+1)-n²])`
-/

namespace A223182.P4176969028263456566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (f1 (n + 1) - f1 n).toNat

end

end A223182.P4176969028263456566

/-! ## A223182.P17691817793668036443

`A223186(A374004(n+1))`
-/

namespace A223182.P17691817793668036443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A374004 (n + 1)).toNat

end

end A223182.P17691817793668036443

/-!
# A223183: Rolling icosahedron footprints: number of nX5 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223183, there is no canonical definition to state claims against.
-/

/-! ## A223183.P4312888809109320864

`A223186(A000124(n+4)+4)`
-/

namespace A223183.P4312888809109320864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A000124 (n + 4) + 4).toNat

end

end A223183.P4312888809109320864

/-! ## A223183.P3153625660000609722

`A223186(A141214(n+1)+8)`
-/

namespace A223183.P3153625660000609722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A141214 (n + 1) + 8).toNat

end

end A223183.P3153625660000609722

/-! ## A223183.P18318261199039388371

`A223186(eq[6, A131818(n+1)])`
-/

namespace A223183.P18318261199039388371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223183.P18318261199039388371

/-! ## A223183.P9538723209547013458

`A223186(A374005(n+1))`
-/

namespace A223183.P9538723209547013458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A374005 (n + 1)).toNat

end

end A223183.P9538723209547013458

/-! ## A223183.P13898017322056802779

`A223186(eq[4, A193592(n)])`
-/

namespace A223183.P13898017322056802779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223183.P13898017322056802779

/-!
# A223184: Rolling icosahedron footprints: number of nX6 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223184, there is no canonical definition to state claims against.
-/

/-! ## A223184.P16605310433900314292

`A223186(eq[7, A131818(n+1)])`
-/

namespace A223184.P16605310433900314292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223184.P16605310433900314292

/-! ## A223184.P11681634485586135279

`A223186(A374007(n+1))`
-/

namespace A223184.P11681634485586135279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A374007 (n + 1)).toNat

end

end A223184.P11681634485586135279

/-! ## A223184.P17727802372999842949

`A223186(eq[3, A219347(n)])`
-/

namespace A223184.P17727802372999842949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223184.P17727802372999842949

/-! ## A223184.P17727750564437374420

`A223186(eq[5, A193592(n)])`
-/

namespace A223184.P17727750564437374420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223184.P17727750564437374420

/-! ## A223184.P15279299262863647355

`A223186(eq[6, A200370(n+1)])`
-/

namespace A223184.P15279299262863647355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223184.P15279299262863647355

/-!
# A223185: Rolling icosahedron footprints: number of nX7 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223185, there is no canonical definition to state claims against.
-/

/-! ## A223185.P8397903945291726776

`A223186(eq[11, A066657(n)])`
-/

namespace A223185.P8397903945291726776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223185.P8397903945291726776

/-! ## A223185.P9823884218335238226

`A223186(A052905(n+3)+12)`
-/

namespace A223185.P9823884218335238226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A052905 (n + 3) + 12).toNat

end

end A223185.P9823884218335238226

/-! ## A223185.P18445538702343399147

`A223186(eq[8, A131818(n+1)])`
-/

namespace A223185.P18445538702343399147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223185.P18445538702343399147

/-! ## A223185.P6483244764437397672

`A223186(A374008(n+1))`
-/

namespace A223185.P6483244764437397672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (A374008 (n + 1)).toNat

end

end A223185.P6483244764437397672

/-! ## A223185.P9076627257523401935

`A223186(eq[4, A219347(n)])`
-/

namespace A223185.P9076627257523401935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223185.P9076627257523401935

/-!
# A223186: T(n,k) = Rolling icosahedron footprints: number of n X k 0..11 arrays starting with 0 where 0..11 label vertices of an icosahedron and every array movement to a horizontal, vertical or antidiagonal neighbor moves along an icosahedral edge.

The programs for A223186, there is no canonical definition to state claims against.
-/

/-! ## A223186.P2730223137196819898

`A071785(A223263(n+1))`
-/

namespace A223186.P2730223137196819898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A223263 (n + 1)).toNat

end

end A223186.P2730223137196819898

/-! ## A223186.P7821475668853481339

`∏{e}[A278934(n), 6-#]`
-/

namespace A223186.P7821475668853481339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (6 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A223186.P7821475668853481339

/-! ## A223186.P4823151772074485465

`∏{e}[A308128(n), or(4, #)]`
-/

namespace A223186.P4823151772074485465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 4 (Nat.factorization (f1 n).natAbs p)

end

end A223186.P4823151772074485465

/-!
# A223187: Number of n X n 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223187, there is no canonical definition to state claims against.
-/

/-! ## A223187.P14294763465538990773

`A223195(∑[4*n]+1)`
-/

namespace A223187.P14294763465538990773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223187.P14294763465538990773

/-!
# A223188: Number of n X 1 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223188, there is no canonical definition to state claims against.
-/

/-! ## A223188.P5874743870621150675

`sqrt(A223189(n+1))`
-/

namespace A223188.P5874743870621150675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223189 (n + 1) : ℝ)

end

end A223188.P5874743870621150675

/-! ## A223188.P11659595668027063692

`root(A223189(n+1), 2%A223195(n+1))`
-/

namespace A223188.P11659595668027063692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223189 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A223195 (n + 1)) : ℝ))

end

end A223188.P11659595668027063692

/-! ## A223188.P7064895371654523338

`A223189(n+1)^2^A223486(5*(n+1))`
-/

namespace A223188.P7064895371654523338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223189 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A223486 (5 * (n + 1)) : ℤ) : ℝ)

end

end A223188.P7064895371654523338

/-! ## A223188.P9896533548969023694

`A223189(n+1)^(A047653(n)/A000980(n))`
-/

namespace A223188.P9896533548969023694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223189 (n + 1) : ℝ) ^ ((A047653 n : ℚ) / (A000980 n : ℚ) : ℝ)

end

end A223188.P9896533548969023694

/-!
# A223189: Number of nX2 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223189, there is no canonical definition to state claims against.
-/

/-! ## A223189.P6573755028605236885

`A223188(n+1)²`
-/

namespace A223189.P6573755028605236885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223188 (n + 1) ^ 2

end

end A223189.P6573755028605236885

/-! ## A223189.P1249022721403743883

`A223188(n+1)^(A016825(n)%4)`
-/

namespace A223189.P1249022721403743883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223188 (n + 1) : ℚ) ^ (Int.tmod (A016825 n) 4 : ℤ)

end

end A223189.P1249022721403743883

/-! ## A223189.P12901969320458392880

`A223188(n+1)^A020639(4*(n+1))`
-/

namespace A223189.P12901969320458392880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223188 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A223189.P12901969320458392880

/-! ## A223189.P5317945223692724558

`A223188(n+1)^A000040(A007318(∑[n]))`
-/

namespace A223189.P5317945223692724558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223188 (n + 1) : ℚ) ^ (A000040 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A223189.P5317945223692724558

/-! ## A223189.P9054584744141522289

`A223188(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A223189.P9054584744141522289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223188 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A223189.P9054584744141522289

/-!
# A223190: Number of nX3 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223190, there is no canonical definition to state claims against.
-/

/-! ## A223190.P16200873674694352642

`A223195(∑[n+2]+4)`
-/

namespace A223190.P16200873674694352642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223190.P16200873674694352642

/-! ## A223190.P14582722131813517929

`A223195(A167614(n+1))+A137579(n)`
-/

namespace A223190.P14582722131813517929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (A167614 (n + 1)).toNat + A137579 n

end

end A223190.P14582722131813517929

/-! ## A223190.P14899850973517829703

`A321538(n)+A223195(A167614(n+1))`
-/

namespace A223190.P14899850973517829703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n + A223195 (A167614 (n + 1)).toNat

end

end A223190.P14899850973517829703

/-! ## A223190.P11872884665581194973

`A326685(n)+A223195(A167614(n+1))`
-/

namespace A223190.P11872884665581194973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A223195 (A167614 (n + 1)).toNat

end

end A223190.P11872884665581194973

/-! ## A223190.P912390598135655028

`A016126(n)*A223195(A167614(n+1))`
-/

namespace A223190.P912390598135655028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016126 n * A223195 (A167614 (n + 1)).toNat

end

end A223190.P912390598135655028

/-!
# A223191: Number of n X 4 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223191, there is no canonical definition to state claims against.
-/

/-! ## A223191.P8194291176698373041

`A223195(∑[n+4]+3)`
-/

namespace A223191.P8194291176698373041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223191.P8194291176698373041

/-! ## A223191.P3111912095843183992

`A326680(n)+A223195(A374004(n+1))`
-/

namespace A223191.P3111912095843183992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A223195 (A374004 (n + 1)).toNat

end

end A223191.P3111912095843183992

/-!
# A223192: Number of nX5 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223192, there is no canonical definition to state claims against.
-/

/-! ## A223192.P2137987724873102671

`A223195(∑[n+4]+11)`
-/

namespace A223192.P2137987724873102671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223192.P2137987724873102671

/-!
# A223193: Number of nX6 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223193, there is no canonical definition to state claims against.
-/

/-! ## A223193.P14639105896766782068

`A223195(A374007(n+1))`
-/

namespace A223193.P14639105896766782068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (A374007 (n + 1)).toNat

end

end A223193.P14639105896766782068

/-! ## A223193.P14165867743816398122

`A223195(A052905(n+3))`
-/

namespace A223193.P14165867743816398122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (A052905 (n + 3)).toNat

end

end A223193.P14165867743816398122

/-!
# A223194: Number of nX7 0..2 arrays with all rows and columns having a nonnegative second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223194, there is no canonical definition to state claims against.
-/

/-! ## A223194.P2129978885013383283

`A223195(A374008(n+1))`
-/

namespace A223194.P2129978885013383283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223195 (A374008 (n + 1)).toNat

end

end A223194.P2129978885013383283

/-!
# A223196: Rolling cube footprints: number of n X n 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or vertical neighbor moves across a corresponding cube edge.

The programs for A223196, there is no canonical definition to state claims against.
-/

/-! ## A223196.P9741076980556322644

`A223202((n+1)²+n²)`
-/

namespace A223196.P9741076980556322644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 ((n + 1) ^ 2 + n ^ 2)

end

end A223196.P9741076980556322644

/-!
# A223197: Rolling cube footprints: number of n X 3 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or vertical neighbor moves across a corresponding cube edge.

The programs for A223197, there is no canonical definition to state claims against.
-/

/-! ## A223197.P8321246793727986840

`40*a(n-1)-128*a(n-2)` with `a(0)=16, a(1)=576`
-/

namespace A223197.P8321246793727986840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 576] fun n a =>
  40 * a (n - 1) - 128 * a (n - 2)

end

end A223197.P8321246793727986840

/-! ## A223197.P817931668454505819

`Δ[A107839(n)]*A013731(n)`
-/

namespace A223197.P817931668454505819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013731 n

end

end A223197.P817931668454505819

/-! ## A223197.P16746331033549083706

`A020698(n)*A020707(A016777(n))`
-/

namespace A223197.P16746331033549083706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n * A020707 (A016777 n).toNat

end

end A223197.P16746331033549083706

/-! ## A223197.P2602320205123342839

`2*A000079(n)²*A000079(n+1)*A052913(n+1)`
-/

namespace A223197.P2602320205123342839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 * A000079 (n + 1) * A052913 (n + 1)

end

end A223197.P2602320205123342839

/-! ## A223197.P10167613948739081204

`A000079(2*n+1)*A000079(n+1)*A052913(n+1)`
-/

namespace A223197.P10167613948739081204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A000079 (n + 1) * A052913 (n + 1)

end

end A223197.P10167613948739081204

/-! ## A223197.P2072497896410367977

`A155559(2*n+1)*A155559(n+1)*A052913(n+1)`
-/

namespace A223197.P2072497896410367977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (2 * n + 1) * A155559 (n + 1) * A052913 (n + 1)

end

end A223197.P2072497896410367977

/-!
# A223198: Rolling cube footprints: number of n X 4 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or vertical neighbor moves across a corresponding cube edge.

The programs for A223198, there is no canonical definition to state claims against.
-/

/-! ## A223198.P9906163988697744203

`A223202(A374004(n+1))`
-/

namespace A223198.P9906163988697744203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A374004 (n + 1)).toNat

end

end A223198.P9906163988697744203

/-! ## A223198.P14767259181022327779

`A223202(A141214(n)+7)`
-/

namespace A223198.P14767259181022327779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A141214 n + 7).toNat

end

end A223198.P14767259181022327779

/-! ## A223198.P16386484796488610476

`A223202(A052905(n)+9)`
-/

namespace A223198.P16386484796488610476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A052905 n + 9).toNat

end

end A223198.P16386484796488610476

/-! ## A223198.P2797208867306239943

`A223202(A055999(n)+10)`
-/

namespace A223198.P2797208867306239943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A055999 n + 10).toNat

end

end A223198.P2797208867306239943

/-! ## A223198.P3676617934454767147

`A223202(A167614(n+2)+1)`
-/

namespace A223198.P3676617934454767147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A167614 (n + 2) + 1).toNat

end

end A223198.P3676617934454767147

/-!
# A223199: Rolling cube footprints: number of n X 5 0..5 arrays starting with 0 where 0..5 label faces of a cube and every array movement to a horizontal or vertical neighbor moves across a corresponding cube edge.

The programs for A223199, there is no canonical definition to state claims against.
-/

/-! ## A223199.P2889680652559528717

`A223202(A374005(n+1))`
-/

namespace A223199.P2889680652559528717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A374005 (n + 1)).toNat

end

end A223199.P2889680652559528717

/-! ## A223199.P5555873951089649495

`A223202(A046691(n+3))`
-/

namespace A223199.P5555873951089649495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A046691 (n + 3)).toNat

end

end A223199.P5555873951089649495

/-! ## A223199.P6916561537302874690

`A223202(A014132(Δ[A006416(n+2)]))`
-/

namespace A223199.P6916561537302874690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223202 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A223199.P6916561537302874690

