import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A358800: Number of (undirected) paths in the grid graph P_4 X P_n.

The programs for A358800, there is no canonical definition to state claims against.
-/

/-! ## A358800.P11239798506726416786

`A288518(A141214(n+1))`
-/

namespace A358800.P11239798506726416786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A141214 (n + 1)).toNat

end

end A358800.P11239798506726416786

/-! ## A358800.P17978278575919428901

`A288518(A374004(n+1))`
-/

namespace A358800.P17978278575919428901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A374004 (n + 1)).toNat

end

end A358800.P17978278575919428901

/-! ## A358800.P11410593021361094310

`A288518(A055998(n+2))`
-/

namespace A358800.P11410593021361094310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A055998 (n + 2)).toNat

end

end A358800.P11410593021361094310

/-! ## A358800.P14841609486695376015

`A288518(A155212(n)+5)`
-/

namespace A358800.P14841609486695376015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A155212 n + 5).toNat

end

end A358800.P14841609486695376015

/-! ## A358800.P10783482117935777070

`A288518(A055999(n)+10)`
-/

namespace A358800.P10783482117935777070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A055999 n + 10).toNat

end

end A358800.P10783482117935777070

/-!
# A358801: Number of (undirected) paths in the grid graph P_5 X P_n.

The programs for A358801, there is no canonical definition to state claims against.
-/

/-! ## A358801.P1815430322925487055

`A288518(A374005(n+1))`
-/

namespace A358801.P1815430322925487055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A374005 (n + 1)).toNat

end

end A358801.P1815430322925487055

/-! ## A358801.P15444578150348486843

`A288518(eq[4, A025581(n)]+1)`
-/

namespace A358801.P15444578150348486843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358801.P15444578150348486843

/-! ## A358801.P12079107874563286852

`A288518(lt[A360199(n+4), n])`
-/

namespace A358801.P12079107874563286852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360199 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358801.P12079107874563286852

/-! ## A358801.P18115155832468432458

`A288518(A000217(n+4)+n+1)`
-/

namespace A358801.P18115155832468432458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A358801.P18115155832468432458

/-! ## A358801.P529310399871976419

`A288518(A000124(n+5)-(n+1))`
-/

namespace A358801.P529310399871976419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A358801.P529310399871976419

/-!
# A358802: Number of (undirected) paths in the grid graph P_6 X P_n.

The programs for A358802, there is no canonical definition to state claims against.
-/

/-! ## A358802.P18316091730929187904

`A288518(A374007(n+1))`
-/

namespace A358802.P18316091730929187904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A374007 (n + 1)).toNat

end

end A358802.P18316091730929187904

/-! ## A358802.P2203485850682061141

`A288518(eq[3, A219347(n)])`
-/

namespace A358802.P2203485850682061141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358802.P2203485850682061141

/-! ## A358802.P16281543676401117614

`A288518(A055998(n+4)-2)`
-/

namespace A358802.P16281543676401117614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A055998 (n + 4) - 2).toNat

end

end A358802.P16281543676401117614

/-! ## A358802.P16016738374526521406

`A288518(A000124(n+6)-6)`
-/

namespace A358802.P16016738374526521406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A000124 (n + 6) - 6).toNat

end

end A358802.P16016738374526521406

/-! ## A358802.P5211375088948518951

`A288518(lt[A288518(n+5), n])`
-/

namespace A358802.P5211375088948518951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358802.P5211375088948518951

/-!
# A358803: Number of (undirected) paths in the grid graph P_7 X P_n.

The programs for A358803, there is no canonical definition to state claims against.
-/

/-! ## A358803.P3622508812378222555

`A288518(A374008(n+1))`
-/

namespace A358803.P3622508812378222555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A374008 (n + 1)).toNat

end

end A358803.P3622508812378222555

/-! ## A358803.P11548146225934024208

`A288518(eq[6, A193592(n)])`
-/

namespace A358803.P11548146225934024208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358803.P11548146225934024208

/-! ## A358803.P1371363387173260426

`A288518(A166136(n+5)+1)`
-/

namespace A358803.P1371363387173260426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A166136 (n + 5) + 1).toNat

end

end A358803.P1371363387173260426

/-! ## A358803.P11217742472833925750

`A288518(A167499(n+5)+2)`
-/

namespace A358803.P11217742472833925750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A167499 (n + 5) + 2).toNat

end

end A358803.P11217742472833925750

/-! ## A358803.P12905898197647453101

`A288518(A046691(n+5)-2)`
-/

namespace A358803.P12905898197647453101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (A046691 (n + 5) - 2).toNat

end

end A358803.P12905898197647453101

/-!
# A358804: a(n) is the least nonnegative integer k such that (k^2 + prime(n)^2)/2 is prime but (k^2 + prime(i)^2)/2 is not prime for i < n.

The programs for A358804, there is no canonical definition to state claims against.
-/

/-! ## A358804.P8884830498311236958

`A330110(record[A026814(n)*A170899(n)+1])`
-/

namespace A358804.P8884830498311236958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 n * A170899 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330110 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358804.P8884830498311236958

/-!
# A358807: a(n) is the maximal determinant of an n X n symmetric matrix using all the integers from 0 to n*(n + 1)/2 - 1.

The programs for A358807, there is no canonical definition to state claims against.
-/

/-! ## A358807.P16712256755337222055

`A057127(A305843(n))-A002262(2*n)`
-/

namespace A358807.P16712256755337222055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (A305843 n).toNat - A002262 (2 * n)

end

end A358807.P16712256755337222055

/-!
# A358808: a(n) is the minimal permanent of an n X n symmetric matrix using all the integers from 0 to n*(n + 1)/2 - 1.

The programs for A358808, there is no canonical definition to state claims against.
-/

/-! ## A358808.P18069280694796300734

`A000700(A007054(∑[∑{d}[n+1, #]-(n+1)]))`
-/

namespace A358808.P18069280694796300734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A007054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A358808.P18069280694796300734

/-!
# A358810: Number of spanning trees in C_5 X C_n.

The programs for A358810, there is no canonical definition to state claims against.
-/

/-! ## A358810.P8409067258091063549

`A212796(∑[n+4]+11)`
-/

namespace A358810.P8409067258091063549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212796 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A358810.P8409067258091063549

/-!
# A358811: Number of spanning trees in C_6 X C_n.

The programs for A358811, there is no canonical definition to state claims against.
-/

/-! ## A358811.P419635274639451243

`A212796(A374007(n+1))`
-/

namespace A358811.P419635274639451243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212796 (A374007 (n + 1)).toNat

end

end A358811.P419635274639451243

/-!
# A358816: Numbers k such that d + k/d is prime for any unitary divisor d of k.

The programs for A358816, there is no canonical definition to state claims against.
-/

/-! ## A358816.P2232583934049312931

`eq[A067824(n+1), A128365(A325355(n+4))]`
-/

namespace A358816.P2232583934049312931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128365 (A325355 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358816.P2232583934049312931

/-! ## A358816.P2873413134854066513

`eq[A257990(n+4), A317474(A000005(n+1))]`
-/

namespace A358816.P2873413134854066513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317474 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358816.P2873413134854066513

/-! ## A358816.P15735084783881018784

`eq[A003271(A236378(n+4)), A348983(n+1)]`
-/

namespace A358816.P15735084783881018784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003271 (A236378 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358816.P15735084783881018784

/-! ## A358816.P3910474368505984186

`eq[A001065(n+1), A324544(A324537(n+4))]`
-/

namespace A358816.P3910474368505984186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (A324537 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358816.P3910474368505984186

/-! ## A358816.P17966518036735898147

`eq[A010051(n+1), A332718(A323903(n+4))]`
-/

namespace A358816.P17966518036735898147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332718 (A323903 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358816.P17966518036735898147

/-!
# A358817: Numbers k such that A046660(k) = A046660(k+1).

The programs for A358817, the canonical program `A358817.P6080470734846673490` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358817 has offset 1).

The definition of A358817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358817.P16533797869445110080

`eq[A046660(n+1), A046660(n+2)]+1`
-/

namespace A358817.P16533797869445110080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358817.P16533797869445110080

namespace A358817

/-- `eq[A046660(n+1), A046660(n+2)]+1` -/
def P16533797869445110080.Spec : Prop :=
  ∀ n, (P16533797869445110080.a n : ℤ) = A358817 (n + 1)

end A358817

/-! ## A358817.P768092338854249765

`eq[A162510(n+2), A162510(n+1)]+1`
-/

namespace A358817.P768092338854249765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358817.P768092338854249765

namespace A358817

/-- `eq[A162510(n+2), A162510(n+1)]+1` -/
def P768092338854249765.Spec : Prop :=
  ∀ n, (P768092338854249765.a n : ℤ) = A358817 (n + 1)

end A358817

/-! ## A358817.P6080470734846673490

`eq[A351656(n+1), A351656(n+2)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A358817

/-- `eq[A351656(n+1), A351656(n+2)]+1` -/
def P6080470734846673490.Spec : Prop :=
  ∀ n, (P6080470734846673490.a n : ℤ) = A358817 (n + 1)

theorem P6080470734846673490.correct : P6080470734846673490.Spec := by
  intro n
  simp only [A358817, Nat.add_sub_cancel]

end A358817

/-! ## A358817.P2294694373979190421

`eq[0, Δ[A004877(∏{e}[n+1, #!]+1)]]+1`
-/

namespace A358817.P2294694373979190421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (∏ p ∈ Nat.primeFactors (f4 n), Nat.factorial (Nat.factorization (f4 n) p) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358817.P2294694373979190421

namespace A358817

/-- `eq[0, Δ[A004877(∏{e}[n+1, #!]+1)]]+1` -/
def P2294694373979190421.Spec : Prop :=
  ∀ n, (P2294694373979190421.a n : ℤ) = A358817 (n + 1)

end A358817

/-!
# A358818: a(n) is the least number k such that A046660(k) = A046660(k+1) = n.

The programs for A358818, there is no canonical definition to state claims against.
-/

/-! ## A358818.P15215354173431058075

`A059737(n)+A010815(∏[C(2, n²)+2*n])`
-/

namespace A358818.P15215354173431058075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059737 n + A010815 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A358818.P15215354173431058075

/-! ## A358818.P186963703046116015

`A059737(n)+A010815(A001412(n))`
-/

namespace A358818.P186963703046116015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059737 n + A010815 (A001412 n).toNat

end

end A358818.P186963703046116015

/-!
# A358821: a(n) is the largest square dividing n^2 - 1.

The programs for A358821, the canonical program `A358821.P15868055063124338799` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358821 has offset 2).

The definition of A358821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358821.P10491375461205096304

`((n+2)²-1)/A068310(n+2)`
-/

namespace A358821.P10491375461205096304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1 : ℚ) / (A068310 (n + 2) : ℚ)

end

end A358821.P10491375461205096304

namespace A358821

/-- `((n+2)²-1)/A068310(n+2)` -/
def P10491375461205096304.Spec : Prop :=
  ∀ n, P10491375461205096304.a n = (A358821 (n + 2) : ℚ)

end A358821

/-! ## A358821.P15868055063124338799

`A008833((n+2)²-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358821

/-- `A008833((n+2)²-1)` -/
def P15868055063124338799.Spec : Prop :=
  ∀ n, P15868055063124338799.a n = A358821 (n + 2)

theorem P15868055063124338799.correct : P15868055063124338799.Spec := by
  intro n
  simp only [A358821, Nat.add_sub_cancel]

end A358821

/-! ## A358821.P6273577306706351979

`((n+2)²-1)/A007913((n+2)²-1)`
-/

namespace A358821.P6273577306706351979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1 : ℚ) / (A007913 ((n + 2) ^ 2 - 1) : ℚ)

end

end A358821.P6273577306706351979

namespace A358821

/-- `((n+2)²-1)/A007913((n+2)²-1)` -/
def P6273577306706351979.Spec : Prop :=
  ∀ n, P6273577306706351979.a n = (A358821 (n + 2) : ℚ)

end A358821

/-! ## A358821.P5679563742738795992

`A053143(A089655(n+2))`
-/

namespace A358821.P5679563742738795992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A089655 (n + 2)).toNat

end

end A358821.P5679563742738795992

namespace A358821

/-- `A053143(A089655(n+2))` -/
def P5679563742738795992.Spec : Prop :=
  ∀ n, P5679563742738795992.a n = A358821 (n + 2)

end A358821

/-! ## A358821.P17413130421173065537

`A103164(A008833(∑[2*n+3]))`
-/

namespace A358821.P17413130421173065537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (A008833 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A358821.P17413130421173065537

namespace A358821

/-- `A103164(A008833(∑[2*n+3]))` -/
def P17413130421173065537.Spec : Prop :=
  ∀ n, P17413130421173065537.a n = A358821 (n + 2)

end A358821

/-! ## A358821.P16330453641115345158

`A000027(A008833(∑[2*(n+1)]+n+1))`
-/

namespace A358821.P16330453641115345158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008833 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A358821.P16330453641115345158

namespace A358821

/-- `A000027(A008833(∑[2*(n+1)]+n+1))` -/
def P16330453641115345158.Spec : Prop :=
  ∀ n, P16330453641115345158.a n = A358821 (n + 2)

end A358821

/-! ## A358821.P16974318541989452310

`A336642(A005563(n+1))+1`
-/

namespace A358821.P16974318541989452310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (A005563 (n + 1)).toNat + 1

end

end A358821.P16974318541989452310

namespace A358821

/-- `A336642(A005563(n+1))+1` -/
def P16974318541989452310.Spec : Prop :=
  ∀ n, P16974318541989452310.a n = A358821 (n + 2)

end A358821

/-! ## A358821.P1119440208027842089

`A336642(A336642((n+2)²))+1`
-/

namespace A358821.P1119440208027842089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (A336642 ((n + 2) ^ 2)).toNat + 1

end

end A358821.P1119440208027842089

namespace A358821

/-- `A336642(A336642((n+2)²))+1` -/
def P1119440208027842089.Spec : Prop :=
  ∀ n, P1119440208027842089.a n = A358821 (n + 2)

end A358821

/-! ## A358821.P15157052825592110256

`A365837((n+1)*(n+3))`
-/

namespace A358821.P15157052825592110256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365837 ((n + 1) * (n + 3))

end

end A358821.P15157052825592110256

namespace A358821

/-- `A365837((n+1)*(n+3))` -/
def P15157052825592110256.Spec : Prop :=
  ∀ n, P15157052825592110256.a n = A358821 (n + 2)

end A358821

/-! ## A358821.P16607245650493512397

`A000188((n+2)²-1)²`
-/

namespace A358821.P16607245650493512397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 2) ^ 2 - 1) ^ 2

end

end A358821.P16607245650493512397

namespace A358821

/-- `A000188((n+2)²-1)²` -/
def P16607245650493512397.Spec : Prop :=
  ∀ n, P16607245650493512397.a n = A358821 (n + 2)

end A358821

/-!
# A358822: a(n) is the first number k such that there are exactly n pairs of primes p < q with p + q = k such that p*q - k and p*q + k are both prime.

The programs for A358822, there is no canonical definition to state claims against.
-/

/-! ## A358822.P7685045032674112738

`∑[A298494(n+2)]*A321478(Δ[n^3])`
-/

namespace A358822.P7685045032674112738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A321478 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A358822.P7685045032674112738

/-!
# A358823: Number of odd-length twice-partitions of n into partitions with all odd parts.

The programs for A358823, there is no canonical definition to state claims against.
-/

/-! ## A358823.P9918759816069032570

`(A270995(n)-A316231(n))/2`
-/

namespace A358823.P9918759816069032570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270995 n - A316231 n : ℚ) / 2

end

end A358823.P9918759816069032570

/-!
# A358824: Number of twice-partitions of n of odd length.

The programs for A358824, there is no canonical definition to state claims against.
-/

/-! ## A358824.P17020178936849491987

`(A063834(n)-A316230(n))/2`
-/

namespace A358824.P17020178936849491987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063834 n - A316230 n : ℚ) / 2

end

end A358824.P17020178936849491987

/-! ## A358824.P1566512361352062884

`A004526(A063834(n)-A316230(n))`
-/

namespace A358824.P1566512361352062884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063834 n - A316230 n).toNat

end

end A358824.P1566512361352062884

/-! ## A358824.P15470242293138107988

`A004526(A323718(∑[n+2]+3)-A316230(n))`
-/

namespace A358824.P15470242293138107988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A323718 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - A316230 n).toNat

end

end A358824.P15470242293138107988

/-! ## A358824.P12415733895713935140

`A094373(n)-A141021(A003242(n))`
-/

namespace A358824.P12415733895713935140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A141021 (A003242 n).toNat

end

end A358824.P12415733895713935140

/-!
# A358825: Number of ways to choose a sequence of integer partitions, one of each part of an integer partition of n into odd parts.

The programs for A358825, there is no canonical definition to state claims against.
-/

/-! ## A358825.P1782341053847288411

`A246706(A204858(n))-A072706(n)`
-/

namespace A358825.P1782341053847288411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246706 (A204858 n).toNat - A072706 n

end

end A358825.P1782341053847288411

/-!
# A358826: Number of ways to choose a sequence of partitions, one of each part of an odd-length partition of 2n+1 into odd parts.

The programs for A358826, there is no canonical definition to state claims against.
-/

/-! ## A358826.P925810756718599321

`A358825(Δ[n²])`
-/

namespace A358826.P925810756718599321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A358826.P925810756718599321

/-! ## A358826.P869413040292716590

`record[A358825(lcm(8, n)/8)]`
-/

namespace A358826.P869413040292716590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358825 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358826.P869413040292716590

/-! ## A358826.P16489556824467318072

`record[A358825(n)^(n%2)]`
-/

namespace A358826.P16489556824467318072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358825 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358826.P16489556824467318072

/-! ## A358826.P11419909981892374469

`record[A358825((n+1)/2^val(n+1, 2))]`
-/

namespace A358826.P11419909981892374469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358826.P11419909981892374469

/-! ## A358826.P9617710097516511632

`record[A358825(A004442(n))]`
-/

namespace A358826.P9617710097516511632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358825 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358826.P9617710097516511632

/-!
# A358827: Number of twice-partitions of n into partitions with all odd lengths and sums.

The programs for A358827, there is no canonical definition to state claims against.
-/

/-! ## A358827.P5005143084173518089

`or(A083544(A003242(n)), A323014(n+1))`
-/

namespace A358827.P5005143084173518089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083544 (A003242 n).toNat) (A323014 (n + 1))

end

end A358827.P5005143084173518089

/-! ## A358827.P17424341789638329884

`or(A026082(n+2), A118168(A007147(n+2)))`
-/

namespace A358827.P17424341789638329884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026082 (n + 2)) (A118168 (A007147 (n + 2)).toNat)

end

end A358827.P17424341789638329884

/-!
# A358828: Number of twice-partitions of n with no singletons.

The programs for A358828, there is no canonical definition to state claims against.
-/

/-! ## A358828.P15398959892670868039

`A000196(A164015(a(n-2)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A358828.P15398959892670868039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A000196 (A164015 (a (n - 2)).toNat).toNat

end

end A358828.P15398959892670868039

/-! ## A358828.P17187673309127147859

`A001405(n)-A174204(A004111(n))`
-/

namespace A358828.P17187673309127147859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A174204 (A004111 n).toNat

end

end A358828.P17187673309127147859

/-! ## A358828.P13973495087001344131

`A127281(n)-A121262(A127385(n+3))`
-/

namespace A358828.P13973495087001344131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127281 n - A121262 (A127385 (n + 3)).toNat

end

end A358828.P13973495087001344131

/-!
# A358829: Number of twice-partitions of n with no (1)'s.

The programs for A358829, there is no canonical definition to state claims against.
-/

/-! ## A358829.P15353530660001107800

`Δ[A063834(abs(1-n))%A123950(n+3)]`
-/

namespace A358829.P15353530660001107800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063834 |1 - (n : ℤ)|.toNat) (A123950 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358829.P15353530660001107800

/-!
# A358830: Number of twice-partitions of n into partitions with all different lengths.

The programs for A358830, there is no canonical definition to state claims against.
-/

/-! ## A358830.P964326084645110504

`A215978(n)+A077371(A014780(n+1))`
-/

namespace A358830.P964326084645110504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215978 n + A077371 (A014780 (n + 1)).toNat

end

end A358830.P964326084645110504

/-! ## A358830.P5287783629332187723

`A112754(A187925(n)+A070081(n+1))`
-/

namespace A358830.P5287783629332187723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112754 (A187925 n + A070081 (n + 1)).toNat

end

end A358830.P5287783629332187723

/-! ## A358830.P11689511081005225105

`or(A321402(A196438(n+1)), A321402(n+2))`
-/

namespace A358830.P11689511081005225105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A321402 (A196438 (n + 1)).toNat) (A321402 (n + 2))

end

end A358830.P11689511081005225105

/-! ## A358830.P15659238528814080356

`A082447(A148718(n))+A032741(A144520(n)+1)`
-/

namespace A358830.P15659238528814080356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148718 n).toNat + A032741 (A144520 n + 1).toNat

end

end A358830.P15659238528814080356

/-!
# A358831: Number of twice-partitions of n into partitions with weakly decreasing lengths.

The programs for A358831, there is no canonical definition to state claims against.
-/

/-! ## A358831.P10332261578684527896

`A316245(n)+A316223(A344492(n))`
-/

namespace A358831.P10332261578684527896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316245 n + A316223 (A344492 n).toNat

end

end A358831.P10332261578684527896

/-! ## A358831.P8242405187255807238

`A256389(A026621(n))`
-/

namespace A358831.P8242405187255807238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (A026621 n).toNat

end

end A358831.P8242405187255807238

/-! ## A358831.P547326804868699726

`A003056(ceil(2^(n-1))*A228943(2*n+3))`
-/

namespace A358831.P547326804868699726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A228943 (2 * n + 3)).toNat

end

end A358831.P547326804868699726

/-!
# A358832: Number of twice-partitions of n into partitions of distinct lengths and distinct sums.

The programs for A358832, there is no canonical definition to state claims against.
-/

/-! ## A358832.P17830958288390864494

`A325368(A263345(n))`
-/

namespace A358832.P17830958288390864494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A263345 n).toNat

end

end A358832.P17830958288390864494

/-! ## A358832.P17500283169118523819

`A303297(A258466(n)+A060819(n+1))`
-/

namespace A358832.P17500283169118523819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303297 (A258466 n + A060819 (n + 1)).toNat

end

end A358832.P17500283169118523819

/-! ## A358832.P12767173707995669041

`A168154(A108950(n+1))-A305195(A228520(n+1))`
-/

namespace A358832.P12767173707995669041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168154 (A108950 (n + 1)).toNat - A305195 (A228520 (n + 1)).toNat

end

end A358832.P12767173707995669041

/-!
# A358833: Number of rectangular twice-partitions of n of type (P,R,P).

The programs for A358833, there is no canonical definition to state claims against.
-/

/-! ## A358833.P16890971058563248012

`A358841(A000110(n))+A358835(n)`
-/

namespace A358833.P16890971058563248012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (A000110 n).toNat + A358835 n

end

end A358833.P16890971058563248012

/-! ## A358833.P17760516386281466005

`A358835(n)+A167683(A286718(n))`
-/

namespace A358833.P17760516386281466005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358835 n + A167683 (A286718 n).toNat

end

end A358833.P17760516386281466005

/-! ## A358833.P9751937241112009691

`A358841(A358828(2*(n+1)))+A358835(n)`
-/

namespace A358833.P9751937241112009691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (A358828 (2 * (n + 1))).toNat + A358835 n

end

end A358833.P9751937241112009691

/-! ## A358833.P8774094971961413050

`A358835(n)+A107078(A105017(2*n+3))`
-/

namespace A358833.P8774094971961413050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358835 n + A107078 (A105017 (2 * n + 3)).toNat

end

end A358833.P8774094971961413050

/-! ## A358833.P16495520478388442765

`A316843(∏{e}[n, 3*#]*A001006(n))`
-/

namespace A358833.P16495520478388442765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (((∏ p ∈ Nat.primeFactors (f1 n), 3 * Nat.factorization (f1 n) p : ℕ) : ℤ) * A001006 n).toNat

end

end A358833.P16495520478388442765

/-!
# A358834: Number of odd-length twice-partitions of n into odd-length partitions.

The programs for A358834, there is no canonical definition to state claims against.
-/

/-! ## A358834.P1840396843132914063

`A085141(A081405(n+1))`
-/

namespace A358834.P1840396843132914063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A081405 (n + 1)).toNat

end

end A358834.P1840396843132914063

/-! ## A358834.P3900117369590625767

`A055572(A291857(n+1))`
-/

namespace A358834.P3900117369590625767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A291857 (n + 1)).toNat

end

end A358834.P3900117369590625767

/-! ## A358834.P2852471821562135252

`A357875(A326495(n))-A027187(n)`
-/

namespace A358834.P2852471821562135252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (A326495 n).toNat - A027187 n

end

end A358834.P2852471821562135252

/-! ## A358834.P7610382381631854849

`A213706(A027193(n)%A099070(n+1))`
-/

namespace A358834.P7610382381631854849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213706 (Int.tmod (A027193 n) (A099070 (n + 1))).toNat

end

end A358834.P7610382381631854849

/-! ## A358834.P269163620687372126

`A319514(A000577(n+1)*A317773(3*n+2))`
-/

namespace A358834.P269163620687372126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (A000577 (n + 1) * A317773 (3 * n + 2)).toNat

end

end A358834.P269163620687372126

/-!
# A358835: Number of multiset partitions of integer partitions of n with constant block sizes and constant block sums.

The programs for A358835, there is no canonical definition to state claims against.
-/

/-! ## A358835.P12446651705719777894

`A358833(n)-A055641(A014137(n))`
-/

namespace A358835.P12446651705719777894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358833 n - A055641 (A014137 n).toNat

end

end A358835.P12446651705719777894

/-! ## A358835.P8881374821244124110

`A358833(n)-A350847(A327766(n))`
-/

namespace A358835.P8881374821244124110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358833 n - A350847 (A327766 n).toNat

end

end A358835.P8881374821244124110

/-! ## A358835.P9096305668362669469

`A358833(n)-A007814(A092082(n+1))`
-/

namespace A358835.P9096305668362669469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358833 n - A007814 (A092082 (n + 1)).toNat

end

end A358835.P9096305668362669469

/-! ## A358835.P6447383542922287962

`A358833(n)-A055641(A157523(3*n+1))`
-/

namespace A358835.P6447383542922287962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358833 n - A055641 (A157523 (3 * n + 1)).toNat

end

end A358835.P6447383542922287962

/-! ## A358835.P3644473654610471095

`A141213(A358833(n))-3`
-/

namespace A358835.P3644473654610471095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A358833 n).toNat - 3

end

end A358835.P3644473654610471095

/-!
# A358836: Number of multiset partitions of integer partitions of n with all distinct block sizes.

The programs for A358836, there is no canonical definition to state claims against.
-/

/-! ## A358836.P2197837306324960532

`A054404(A309267(n)+A005041(n))`
-/

namespace A358836.P2197837306324960532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A309267 n + A005041 n).toNat

end

end A358836.P2197837306324960532

/-! ## A358836.P14664410515089936782

`A050334(A239885(n+1))`
-/

namespace A358836.P14664410515089936782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (A239885 (n + 1)).toNat

end

end A358836.P14664410515089936782

/-! ## A358836.P6216382926414374237

`A054453(C(A087036(n), 2))`
-/

namespace A358836.P6216382926414374237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 (Nat.choose (A087036 n).toNat 2)

end

end A358836.P6216382926414374237

/-! ## A358836.P10101469492144075752

`A193737(eq[1, A339031(n)])`
-/

namespace A358836.P10101469492144075752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358836.P10101469492144075752

/-! ## A358836.P14139215397497444712

`A029907(A244107(n)+n)`
-/

namespace A358836.P14139215397497444712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A244107 (n + 10) + (n : ℤ)).toNat

end

end A358836.P14139215397497444712

/-!
# A358837: Number of odd-length multiset partitions of integer partitions of n.

The programs for A358837, there is no canonical definition to state claims against.
-/

/-! ## A358837.P71936124328414323

`A172471(A278023(n))`
-/

namespace A358837.P71936124328414323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A278023 n).toNat

end

end A358837.P71936124328414323

/-! ## A358837.P2950953121285688199

`A067731(Δ[A369631(n)])`
-/

namespace A358837.P2950953121285688199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067731 (f1 (n + 1) - f1 n).toNat

end

end A358837.P2950953121285688199

/-! ## A358837.P12893016158722388976

`A168201(A211725(n+1))`
-/

namespace A358837.P12893016158722388976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A211725 (n + 1)).toNat

end

end A358837.P12893016158722388976

/-! ## A358837.P7284850834237015935

`A099155(n)+A001949(n)`
-/

namespace A358837.P7284850834237015935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099155 n + A001949 n

end

end A358837.P7284850834237015935

/-! ## A358837.P6712042945852156857

`A003056(A148205(n+1)-1)`
-/

namespace A358837.P6712042945852156857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148205 (n + 1) - 1).toNat

end

end A358837.P6712042945852156857

/-!
# A358838: Minimum number of jumps needed to go from slab 0 to slab n in Jane Street's infinite sidewalk.

The programs for A358838, there is no canonical definition to state claims against.
-/

/-! ## A358838.P13700264402669779946

`A109174(A006998(n+1))`
-/

namespace A358838.P13700264402669779946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109174 (A006998 (n + 1)).toNat

end

end A358838.P13700264402669779946

/-!
# A358839: Dirichlet inverse of A353627, the characteristic function of the squarefree numbers multiplied by binary powers.

The programs for A358839, the canonical program `A358839.P16533912957850485554` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358839 has offset 1).

The definition of A358839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358839.P16533912957850485554

`A359370(n+1)-A359372(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A358839

/-- `A359370(n+1)-A359372(n+1)` -/
def P16533912957850485554.Spec : Prop :=
  ∀ n, P16533912957850485554.a n = A358839 (n + 1)

theorem P16533912957850485554.correct : P16533912957850485554.Spec := by
  intro n
  simp only [A358839, Nat.add_sub_cancel]

end A358839

/-! ## A358839.P11441809153724120063

`A358272(n+1)%2`
-/

namespace A358839.P11441809153724120063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358272 (n + 1)) 2

end

end A358839.P11441809153724120063

namespace A358839

/-- `A358272(n+1)%2` -/
def P11441809153724120063.Spec : Prop :=
  ∀ n, P11441809153724120063.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P17837091928473287017

`2-and(3, A307000(n+1))`
-/

namespace A358839.P17837091928473287017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 3 (A307000 (n + 1))

end

end A358839.P17837091928473287017

namespace A358839

/-- `2-and(3, A307000(n+1))` -/
def P17837091928473287017.Spec : Prop :=
  ∀ n, P17837091928473287017.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P18215728930471371696

`round(A008836(n+1)/2^val(n+1, 2))`
-/

namespace A358839.P18215728930471371696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008836 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

end

end A358839.P18215728930471371696

namespace A358839

/-- `round(A008836(n+1)/2^val(n+1, 2))` -/
def P18215728930471371696.Spec : Prop :=
  ∀ n, P18215728930471371696.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P13014873074440599864

`∑{d}[n+1, #*A158523((n+1)/#)]%2`
-/

namespace A358839.P13014873074440599864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) 2

end

end A358839.P13014873074440599864

namespace A358839

/-- `∑{d}[n+1, #*A158523((n+1)/#)]%2` -/
def P13014873074440599864.Spec : Prop :=
  ∀ n, P13014873074440599864.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P298640893245742995

`A112299(A079065(n+1))`
-/

namespace A358839.P298640893245742995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A079065 (n + 1)).toNat

end

end A358839.P298640893245742995

namespace A358839

/-- `A112299(A079065(n+1))` -/
def P298640893245742995.Spec : Prop :=
  ∀ n, P298640893245742995.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P3804142902014377935

`A112299(A092089(n+1))`
-/

namespace A358839.P3804142902014377935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (A092089 (n + 1)).toNat

end

end A358839.P3804142902014377935

namespace A358839

/-- `A112299(A092089(n+1))` -/
def P3804142902014377935.Spec : Prop :=
  ∀ n, P3804142902014377935.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P13464240365480376563

`A166698(A080512(n+1))`
-/

namespace A358839.P13464240365480376563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A080512 (n + 1)).toNat

end

end A358839.P13464240365480376563

namespace A358839

/-- `A166698(A080512(n+1))` -/
def P13464240365480376563.Spec : Prop :=
  ∀ n, P13464240365480376563.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P9215185880258754750

`A166698(A186813(n+1))`
-/

namespace A358839.P9215185880258754750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A186813 (n + 1)).toNat

end

end A358839.P9215185880258754750

namespace A358839

/-- `A166698(A186813(n+1))` -/
def P9215185880258754750.Spec : Prop :=
  ∀ n, P9215185880258754750.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P4352557834770911236

`A166698(A195140(n+1))`
-/

namespace A358839.P4352557834770911236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A195140 (n + 1)).toNat

end

end A358839.P4352557834770911236

namespace A358839

/-- `A166698(A195140(n+1))` -/
def P4352557834770911236.Spec : Prop :=
  ∀ n, P4352557834770911236.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P13694487511939896119

`A166698(A195159(n+1))`
-/

namespace A358839.P13694487511939896119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A195159 (n + 1)).toNat

end

end A358839.P13694487511939896119

namespace A358839

/-- `A166698(A195159(n+1))` -/
def P13694487511939896119.Spec : Prop :=
  ∀ n, P13694487511939896119.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P1938343785956044511

`A166698(A233570(n+1))`
-/

namespace A358839.P1938343785956044511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A233570 (n + 1)).toNat

end

end A358839.P1938343785956044511

namespace A358839

/-- `A166698(A233570(n+1))` -/
def P1938343785956044511.Spec : Prop :=
  ∀ n, P1938343785956044511.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P13386174788269221073

`A101455(A307000(n+1))`
-/

namespace A358839.P13386174788269221073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A307000 (n + 1)).toNat

end

end A358839.P13386174788269221073

namespace A358839

/-- `A101455(A307000(n+1))` -/
def P13386174788269221073.Spec : Prop :=
  ∀ n, P13386174788269221073.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P16855148917449253217

`A166698(A267092(n+1))`
-/

namespace A358839.P16855148917449253217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A267092 (n + 1)).toNat

end

end A358839.P16855148917449253217

namespace A358839

/-- `A166698(A267092(n+1))` -/
def P16855148917449253217.Spec : Prop :=
  ∀ n, P16855148917449253217.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P4372429959770501558

`A008836(n+1)*A166486(n+1)`
-/

namespace A358839.P4372429959770501558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A166486 (n + 1)

end

end A358839.P4372429959770501558

namespace A358839

/-- `A008836(n+1)*A166486(n+1)` -/
def P4372429959770501558.Spec : Prop :=
  ∀ n, P4372429959770501558.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P15637539090707813613

`A112299(n+1)*A209661(n+1)`
-/

namespace A358839.P15637539090707813613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A209661 (n + 1)

end

end A358839.P15637539090707813613

namespace A358839

/-- `A112299(n+1)*A209661(n+1)` -/
def P15637539090707813613.Spec : Prop :=
  ∀ n, P15637539090707813613.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P17913266421236530296

`∑{d}[n+1, A053866(#)*A092673((n+1)/#)]`
-/

namespace A358839.P17913266421236530296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358839.P17913266421236530296

namespace A358839

/-- `∑{d}[n+1, A053866(#)*A092673((n+1)/#)]` -/
def P17913266421236530296.Spec : Prop :=
  ∀ n, P17913266421236530296.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P7035768666570591232

`∑{d}[n+1, A007427(#)*A298735((n+1)/#)]`
-/

namespace A358839.P7035768666570591232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358839.P7035768666570591232

namespace A358839

/-- `∑{d}[n+1, A007427(#)*A298735((n+1)/#)]` -/
def P7035768666570591232.Spec : Prop :=
  ∀ n, P7035768666570591232.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P17246146445719852242

`∑{d}[n+1, A069733(#)*A326415((n+1)/#)]`
-/

namespace A358839.P17246146445719852242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069733 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358839.P17246146445719852242

namespace A358839

/-- `∑{d}[n+1, A069733(#)*A326415((n+1)/#)]` -/
def P17246146445719852242.Spec : Prop :=
  ∀ n, P17246146445719852242.a n = A358839 (n + 1)

end A358839

/-! ## A358839.P9328918016348542194

`∑{d}[n+1, A143259(#)*A359591((n+1)/#)]`
-/

namespace A358839.P9328918016348542194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358839.P9328918016348542194

namespace A358839

/-- `∑{d}[n+1, A143259(#)*A359591((n+1)/#)]` -/
def P9328918016348542194.Spec : Prop :=
  ∀ n, P9328918016348542194.a n = A358839 (n + 1)

end A358839

/-!
# A358840: Primorial base exp-function reduced modulo 6.

The programs for A358840, there is no canonical definition to state claims against.
-/

/-! ## A358840.P6020977399454365167

`A010875(A276086(n))`
-/

namespace A358840.P6020977399454365167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A276086 n).toNat

end

end A358840.P6020977399454365167

/-! ## A358840.P4468948008355014223

`A358850(n)%6`
-/

namespace A358840.P4468948008355014223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358850 n) 6

end

end A358840.P4468948008355014223

/-! ## A358840.P10639942010852261974

`A392596(n)%6`
-/

namespace A358840.P10639942010852261974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392596 n) 6

end

end A358840.P10639942010852261974

/-! ## A358840.P748446793261081616

`(A351225(n)+n)%6`
-/

namespace A358840.P748446793261081616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351225 n + (n : ℤ)) 6

end

end A358840.P748446793261081616

/-! ## A358840.P8064495305242276000

`A010875(A358850(n))`
-/

namespace A358840.P8064495305242276000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A358850 n).toNat

end

end A358840.P8064495305242276000

/-! ## A358840.P14802874686320678216

`A010875(A392596(n))`
-/

namespace A358840.P14802874686320678216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A392596 n).toNat

end

end A358840.P14802874686320678216

/-! ## A358840.P18268793990799842660

`A276086(n)%A040006(n)`
-/

namespace A358840.P18268793990799842660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) (A040006 n)

end

end A358840.P18268793990799842660

/-! ## A358840.P9535823569579895300

`A346101(A289234(n))%6`
-/

namespace A358840.P9535823569579895300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346101 (A289234 n).toNat) 6

end

end A358840.P9535823569579895300

/-! ## A358840.P11939817018925746618

`A328627(A328625(n))%6`
-/

namespace A358840.P11939817018925746618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328627 (A328625 n).toNat) 6

end

end A358840.P11939817018925746618

/-! ## A358840.P11769989289540047919

`A328624(A328626(n))%6`
-/

namespace A358840.P11769989289540047919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328624 (A328626 n).toNat) 6

end

end A358840.P11769989289540047919

/-!
# A358841: a(n) = 1 if A276086(n) is of the form 6k+1, where A276086 is the primorial base exp-function.

The programs for A358841, there is no canonical definition to state claims against.
-/

/-! ## A358841.P17470960624024319799

`A079979(n)-A358842(n)`
-/

namespace A358841.P17470960624024319799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n - A358842 n

end

end A358841.P17470960624024319799

/-! ## A358841.P17567901792231060865

`A059841(n)-A120325(n)-A358842(n)`
-/

namespace A358841.P17567901792231060865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A120325 n - A358842 n

end

end A358841.P17567901792231060865

/-! ## A358841.P10582300126496029055

`val(A328579(n), 3)`
-/

namespace A358841.P10582300126496029055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328579 n).toNat 3

end

end A358841.P10582300126496029055

/-! ## A358841.P7376176237444485013

`char[A328632(n+1)]`
-/

namespace A358841.P7376176237444485013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358841.P7376176237444485013

/-! ## A358841.P13671674100912253681

`char[eq[2, A328578(n)]]`
-/

namespace A358841.P13671674100912253681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358841.P13671674100912253681

/-! ## A358841.P15893181337359763375

`C(C(2, A358840(n)), 2)`
-/

namespace A358841.P15893181337359763375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A358840 n).toNat) 2

end

end A358841.P15893181337359763375

/-! ## A358841.P9311475830366346050

`A007949(A328579(n))`
-/

namespace A358841.P9311475830366346050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A328579 n).toNat

end

end A358841.P9311475830366346050

/-! ## A358841.P6478069379949494429

`A037011(A358850(n))`
-/

namespace A358841.P6478069379949494429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (A358850 n).toNat

end

end A358841.P6478069379949494429

/-! ## A358841.P10585852000357573575

`A120325(A392599(n))`
-/

namespace A358841.P10585852000357573575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A392599 n).toNat

end

end A358841.P10585852000357573575

/-! ## A358841.P4365622108319482361

`A014037(A358850(n+1))`
-/

namespace A358841.P4365622108319482361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014037 (A358850 (n + 1)).toNat

end

end A358841.P4365622108319482361

/-! ## A358841.P797914597032157235

`A383298(2*A328578(n))`
-/

namespace A358841.P797914597032157235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 (2 * A328578 n).toNat

end

end A358841.P797914597032157235

/-! ## A358841.P2901002487098966997

`A079979(A358842(n)+n)`
-/

namespace A358841.P2901002487098966997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A358842 n + (n : ℤ)).toNat

end

end A358841.P2901002487098966997

/-! ## A358841.P3565172809684854118

`A328843(n)%A089145(n)`
-/

namespace A358841.P3565172809684854118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328843 n) (A089145 n)

end

end A358841.P3565172809684854118

/-! ## A358841.P9472300472852829696

`A219009((A328579(n)+1)²)`
-/

namespace A358841.P9472300472852829696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 ((A328579 n + 1) ^ 2).toNat

end

end A358841.P9472300472852829696

/-! ## A358841.P11199646856607258336

`A353488(A358850(n+1)²)`
-/

namespace A358841.P11199646856607258336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 (A358850 (n + 1) ^ 2).toNat

end

end A358841.P11199646856607258336

/-! ## A358841.P10782196008841667794

`1-A292438(A328578(n)²)`
-/

namespace A358841.P10782196008841667794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292438 (A328578 n ^ 2).toNat

end

end A358841.P10782196008841667794

/-! ## A358841.P11965132660026518570

`A014037(2*A358850(n))²`
-/

namespace A358841.P11965132660026518570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014037 (2 * A358850 n).toNat ^ 2

end

end A358841.P11965132660026518570

/-! ## A358841.P7484564215372412202

`A059841(n)*A093719(n)-A358842(n)`
-/

namespace A358841.P7484564215372412202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A093719 n - A358842 n

end

end A358841.P7484564215372412202

/-! ## A358841.P12359904039567218092

`A353488(A358850(n+1)*A358850(n+1))`
-/

namespace A358841.P12359904039567218092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 (A358850 (n + 1) * A358850 (n + 1)).toNat

end

end A358841.P12359904039567218092

/-! ## A358841.P9555910237675395862

`A093719(n)-(A358842(n)+A059841(n+1))`
-/

namespace A358841.P9555910237675395862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 n - (A358842 n + A059841 (n + 1))

end

end A358841.P9555910237675395862

/-!
# A358842: a(n) = 1 if A276086(n) is of the form 6k+5, where A276086 is the primorial base exp-function.

The programs for A358842, there is no canonical definition to state claims against.
-/

/-! ## A358842.P10208388314712266374

`A079979(n)-A358841(n)`
-/

namespace A358842.P10208388314712266374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n - A358841 n

end

end A358842.P10208388314712266374

/-! ## A358842.P11585771276138714812

`A059841(n)-A120325(n)-A358841(n)`
-/

namespace A358842.P11585771276138714812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A120325 n - A358841 n

end

end A358842.P11585771276138714812

/-! ## A358842.P16107975936165666976

`C(A358840(n), 5)`
-/

namespace A358842.P16107975936165666976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358840 n).toNat 5

end

end A358842.P16107975936165666976

/-! ## A358842.P15953508775094521580

`char[A358843(n+1)]`
-/

namespace A358842.P15953508775094521580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358842.P15953508775094521580

/-! ## A358842.P12163091525332870084

`A011661(A358850(n))`
-/

namespace A358842.P12163091525332870084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011661 (A358850 n).toNat

end

end A358842.P12163091525332870084

/-! ## A358842.P544640264621379017

`A358331(A358850(n+1))`
-/

namespace A358842.P544640264621379017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358331 (A358850 (n + 1)).toNat

end

end A358842.P544640264621379017

/-! ## A358842.P4123447170581507135

`A362802(A358850(n)+1)`
-/

namespace A358842.P4123447170581507135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362802 (A358850 n + 1).toNat

end

end A358842.P4123447170581507135

/-! ## A358842.P10836830730431674092

`A079979(A358841(n)+n)`
-/

namespace A358842.P10836830730431674092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A358841 n + (n : ℤ)).toNat

end

end A358842.P10836830730431674092

/-! ## A358842.P8793797162071188851

`A358841(A358850(n+1)+2)`
-/

namespace A358842.P8793797162071188851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (A358850 (n + 1) + 2).toNat

end

end A358842.P8793797162071188851

/-! ## A358842.P7448713237097281919

`A014037(A358850(n+1)²)²`
-/

namespace A358842.P7448713237097281919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014037 (A358850 (n + 1) ^ 2).toNat ^ 2

end

end A358842.P7448713237097281919

/-! ## A358842.P5858541918481836853

`A353488(A048103(A358850(n+1)²))`
-/

namespace A358842.P5858541918481836853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 (A048103 (A358850 (n + 1) ^ 2).toNat).toNat

end

end A358842.P5858541918481836853

/-! ## A358842.P2435545486548069913

`A358846(A358850(A358850(n+1))²)`
-/

namespace A358842.P2435545486548069913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 (A358850 (A358850 (n + 1)).toNat ^ 2).toNat

end

end A358842.P2435545486548069913

/-! ## A358842.P14224272831577547508

`A120325(n²+2)-A358841(n)`
-/

namespace A358842.P14224272831577547508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (n ^ 2 + 2) - A358841 n

end

end A358842.P14224272831577547508

/-! ## A358842.P451076606036020143

`and(A042899(n)+1, A079979(n))`
-/

namespace A358842.P451076606036020143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042899 n + 1) (A079979 n)

end

end A358842.P451076606036020143

/-! ## A358842.P12533031910513599368

`and(A041197(n)+1, A079979(n))`
-/

namespace A358842.P12533031910513599368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041197 n + 1) (A079979 n)

end

end A358842.P12533031910513599368

/-! ## A358842.P6801101074804363859

`and(A041830(n), A079979(n))`
-/

namespace A358842.P6801101074804363859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041830 n) (A079979 n)

end

end A358842.P6801101074804363859

/-!
# A358843: Numbers k such that A276086(k) == 5 (mod 6), where A276086 is the primorial base exp-function.

The programs for A358843, there is no canonical definition to state claims against.
-/

/-! ## A358843.P12481292735160709808

`6*A358844(n+1)`
-/

namespace A358843.P12481292735160709808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A358844 (n + 1)

end

end A358843.P12481292735160709808

/-! ## A358843.P18018333025579423151

`2*eq[2, A328829(2*n)]`
-/

namespace A358843.P18018333025579423151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328829 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358843.P18018333025579423151

/-! ## A358843.P18104556244569445987

`A008458(A358844(n+1))`
-/

namespace A358843.P18104556244569445987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A358844 (n + 1)).toNat

end

end A358843.P18104556244569445987

/-! ## A358843.P4445668667435395068

`filter[A008458(n), A358842(#)]`
-/

namespace A358843.P4445668667435395068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P4445668667435395068

/-! ## A358843.P15442547235185040097

`filter[A008588(n), A358842(#)]`
-/

namespace A358843.P15442547235185040097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P15442547235185040097

/-! ## A358843.P2967755030529349986

`filter[A256882(n+1), A358842(#)]`
-/

namespace A358843.P2967755030529349986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P2967755030529349986

/-! ## A358843.P8059841534012593071

`filter[A231960(n+1), A358842(#)]`
-/

namespace A358843.P8059841534012593071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P8059841534012593071

/-! ## A358843.P10372269868849594343

`filter[A374198(n+2), A358842(#)]`
-/

namespace A358843.P10372269868849594343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P10372269868849594343

/-! ## A358843.P70808270850117457

`filter[A098807(n+1), A358842(#)]`
-/

namespace A358843.P70808270850117457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P70808270850117457

/-! ## A358843.P9648123012996894199

`eq[1, A358842(n)]`
-/

namespace A358843.P9648123012996894199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358843.P9648123012996894199

/-! ## A358843.P13940937105313204069

`eq[5, A358840(n)]`
-/

namespace A358843.P13940937105313204069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358843.P13940937105313204069

/-! ## A358843.P4704991251582196535

`eq[1, A115312(A358850(n)+1)]`
-/

namespace A358843.P4704991251582196535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115312 (A358850 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358843.P4704991251582196535

/-! ## A358843.P8550380318570167484

`filter[A326696(n+1), A358842(#)]`
-/

namespace A358843.P8550380318570167484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P8550380318570167484

/-! ## A358843.P11701136575927912663

`filter[A228870(n+1), A358842(#)]`
-/

namespace A358843.P11701136575927912663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P11701136575927912663

/-! ## A358843.P9565708657086680767

`filter[A378884(n+1), A358842(#)]`
-/

namespace A358843.P9565708657086680767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P9565708657086680767

/-! ## A358843.P11137479820728906074

`filter[A088723(n+1), A358842(#)]`
-/

namespace A358843.P11137479820728906074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P11137479820728906074

/-! ## A358843.P337501358149741831

`filter[A094519(n+1), A358842(#)]`
-/

namespace A358843.P337501358149741831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P337501358149741831

/-! ## A358843.P8476179672256023913

`filter[A005835(n+1), A358842(#)]`
-/

namespace A358843.P8476179672256023913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P8476179672256023913

/-! ## A358843.P17102470178679617670

`filter[A104210(n+1), A358842(#)]`
-/

namespace A358843.P17102470178679617670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P17102470178679617670

/-! ## A358843.P14749258467829320622

`filter[A023196(n+1), A358842(#)]`
-/

namespace A358843.P14749258467829320622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358842 (f1 j).toNat = 1) n)

end

end A358843.P14749258467829320622

/-!
# A358844: Numbers k for which A276086(6*k) == 5 (mod 6), where A276086 is the primorial base exp-function.

The programs for A358844, there is no canonical definition to state claims against.
-/

/-! ## A358844.P5003921859410052250

`A358843(n+1)/6`
-/

namespace A358844.P5003921859410052250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358843 (n + 1) : ℚ) / 6

end

end A358844.P5003921859410052250

/-! ## A358844.P4365266010363455205

`eq[1, n^(1-A358846(n))]`
-/

namespace A358844.P4365266010363455205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - A358846 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A358844.P4365266010363455205

/-! ## A358844.P7300841378558256706

`comp[A358845(n+1)]`
-/

namespace A358844.P7300841378558256706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358844.P7300841378558256706

/-! ## A358844.P2559655522110720094

`filter[A323161(2*n+1), A358846(#)]`
-/

namespace A358844.P2559655522110720094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358846 (f1 j).toNat = 1) n)

end

end A358844.P2559655522110720094

/-! ## A358844.P14272982743112310195

`filter[n+1, A358846(#)]`
-/

namespace A358844.P14272982743112310195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358846 (f1 j) = 1) n)

end

end A358844.P14272982743112310195

/-! ## A358844.P15392428313762656024

`lt[A028310(n)-A358846(n), n]`
-/

namespace A358844.P15392428313762656024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A358846 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358844.P15392428313762656024

/-! ## A358844.P18017706743900808872

`eq[A329684(n), A358846(n)]`
-/

namespace A358844.P18017706743900808872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358844.P18017706743900808872

/-! ## A358844.P2783455812269705147

`eq[A283149(n+1), A358846(n)]`
-/

namespace A358844.P2783455812269705147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358844.P2783455812269705147

/-! ## A358844.P657581971550132391

`lt[A000007(n), n*A358846(n)]`
-/

namespace A358844.P657581971550132391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A358846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358844.P657581971550132391

/-! ## A358844.P1199829182429551752

`lt[2, A328578(6*n)]`
-/

namespace A358844.P1199829182429551752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358844.P1199829182429551752

/-! ## A358844.P805813187538889777

`lt[3, A328579(6*n)]`
-/

namespace A358844.P805813187538889777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358844.P805813187538889777

/-! ## A358844.P4858407469704736450

`A008615(A358843(n+1))`
-/

namespace A358844.P4858407469704736450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A358843 (n + 1)).toNat

end

end A358844.P4858407469704736450

/-! ## A358844.P14834390206383086126

`eq[A260897(n+1)*A358846(n), A260897(n+1)]`
-/

namespace A358844.P14834390206383086126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1) * A358846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358844.P14834390206383086126

/-!
# A358845: Numbers k for which A276086(6*k) == 1 (mod 6), where A276086 is the primorial base exp-function.

The programs for A358845, there is no canonical definition to state claims against.
-/

/-! ## A358845.P2695353637350341039

`A328632(n+1)/6`
-/

namespace A358845.P2695353637350341039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328632 (n + 1) : ℚ) / 6

end

end A358845.P2695353637350341039

/-! ## A358845.P14035451573232673936

`comp[A358844(n+1)]`
-/

namespace A358845.P14035451573232673936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358845.P14035451573232673936

/-! ## A358845.P16185996836409539207

`eq[0, n*A358846(n)]`
-/

namespace A358845.P16185996836409539207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A358846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358845.P16185996836409539207

/-! ## A358845.P6300495939650792604

`eq[A358846(n)+A358840(n), A358840(n)]`
-/

namespace A358845.P6300495939650792604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A358840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P6300495939650792604

/-! ## A358845.P17241464607765353326

`record[n/2*A358841(3*n)]`
-/

namespace A358845.P17241464607765353326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A358841 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358845.P17241464607765353326

/-! ## A358845.P5285262256205520518

`eq[2, A358840(3*n+1)]/2`
-/

namespace A358845.P5285262256205520518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A358845.P5285262256205520518

/-! ## A358845.P6908761408832426539

`eq[A358846(n)+A262681(n), A262681(n)]`
-/

namespace A358845.P6908761408832426539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A262681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P6908761408832426539

/-! ## A358845.P16207482319337667384

`lt[A358846(A000007(n)+n)/acot(n)^3, 1]`
-/

namespace A358845.P16207482319337667384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A358846 (A000007 n + (n : ℤ)).toNat : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A358845.P16207482319337667384

/-! ## A358845.P12031323485137638972

`eq[A358846(n)+A329684(n), A329684(n)]`
-/

namespace A358845.P12031323485137638972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P12031323485137638972

/-! ## A358845.P18178058611788519141

`eq[A358846(n)+A283149(n+1), A283149(n+1)]`
-/

namespace A358845.P18178058611788519141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P18178058611788519141

/-! ## A358845.P14631203908831816291

`eq[3, A328579(6*n)]`
-/

namespace A358845.P14631203908831816291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358845.P14631203908831816291

/-! ## A358845.P9492999153022952640

`eq[2, A328578(A008588(n))]`
-/

namespace A358845.P9492999153022952640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A008588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358845.P9492999153022952640

/-! ## A358845.P11693873583224315563

`eq[A358846(n)+A214709(n+1), A214709(n+1)]`
-/

namespace A358845.P11693873583224315563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A214709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P11693873583224315563

/-! ## A358845.P1604071247478142742

`A078898(lt[0, A358841(3*n)])`
-/

namespace A358845.P1604071247478142742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A358845.P1604071247478142742

/-! ## A358845.P6133570343420800333

`lt[A328579(A004277(3*n)), 4]`
-/

namespace A358845.P6133570343420800333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A004277 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358845.P6133570343420800333

/-! ## A358845.P5116971727034231562

`A008615(A328632(n+1))`
-/

namespace A358845.P5116971727034231562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A328632 (n + 1)).toNat

end

end A358845.P5116971727034231562

/-! ## A358845.P13972527560210011550

`eq[A358846(n)+A250208(n+1), A250208(n+1)]`
-/

namespace A358845.P13972527560210011550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A250208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P13972527560210011550

/-! ## A358845.P18107432280240322413

`eq[A358846(n)+A260897(n+1), A260897(n+1)]`
-/

namespace A358845.P18107432280240322413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n + A260897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358845.P18107432280240322413

/-!
# A358846: a(n) = 1 if A276086(6*n) == 5 (mod 6), otherwise 0, where A276086 is the primorial base exp-function.

The programs for A358846, there is no canonical definition to state claims against.
-/

/-! ## A358846.P7566853143272665991

`A358842(6*n)`
-/

namespace A358846.P7566853143272665991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (6 * n)

end

end A358846.P7566853143272665991

/-! ## A358846.P10681181493263237747

`char[A358844(n+1)]`
-/

namespace A358846.P10681181493263237747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358846.P10681181493263237747

/-! ## A358846.P14636769758102334274

`1-A358841(A008588(n))`
-/

namespace A358846.P14636769758102334274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A358841 (A008588 n).toNat

end

end A358846.P14636769758102334274

/-! ## A358846.P16240427528135475997

`(A327860(A016921(n)+1)-1)%3`
-/

namespace A358846.P16240427528135475997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327860 (A016921 n + 1).toNat - 1) 3

end

end A358846.P16240427528135475997

/-! ## A358846.P14267443292926486401

`lt[(A328627(A328625(n))-1)%3, 1]%2`
-/

namespace A358846.P14267443292926486401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328627 (A328625 n).toNat - 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 2

end

end A358846.P14267443292926486401

/-!
# A358847: a(n) = 1 if A053669(6*n) [the smallest prime not dividing 6*n] is of the form 6m-1, otherwise a(n) = 0.

The programs for A358847, there is no canonical definition to state claims against.
-/

/-! ## A358847.P1010233455175056890

`abs(Δ[A358846(n)])`
-/

namespace A358847.P1010233455175056890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A358847.P1010233455175056890

/-! ## A358847.P9989041576162563354

`A000045(Δ[A358846(n)]²)`
-/

namespace A358847.P9989041576162563354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A358847.P9989041576162563354

/-! ## A358847.P14503444417279732160

`A358846(Δ[A358846(n)]+2)`
-/

namespace A358847.P14503444417279732160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 (f1 (n + 1) - f1 n + 2).toNat

end

end A358847.P14503444417279732160

/-! ## A358847.P2634049672779750546

`A358846(2-Δ[A358846(n)])`
-/

namespace A358847.P2634049672779750546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A358847.P2634049672779750546

/-! ## A358847.P18431290022441059243

`A353525(2*A064989(n+1))`
-/

namespace A358847.P18431290022441059243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353525 (2 * A064989 (n + 1)).toNat

end

end A358847.P18431290022441059243

/-! ## A358847.P17262413318451283509

`xor(A358846(n+1), A358846(n))`
-/

namespace A358847.P17262413318451283509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A358846 (n + 1)) (A358846 n)

end

end A358847.P17262413318451283509

/-! ## A358847.P1457576170033535011

`Δ[A358842(A008458(n))]²`
-/

namespace A358847.P1457576170033535011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A358847.P1457576170033535011

/-! ## A358847.P17187364035373891384

`1-A358754(A008588(n+1))`
-/

namespace A358847.P17187364035373891384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A358754 (A008588 (n + 1)).toNat

end

end A358847.P17187364035373891384

/-! ## A358847.P5899765768393729671

`A260390(A064989(A064989((n+1)²)))`
-/

namespace A358847.P5899765768393729671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A064989 (A064989 ((n + 1) ^ 2)).toNat).toNat

end

end A358847.P5899765768393729671

/-!
# A358848: Numbers k for which A053669(6*k) [the smallest prime not dividing 6k] is of the form 6m+1.

The programs for A358848, there is no canonical definition to state claims against.
-/

/-! ## A358848.P18008559716899064758

`A358756(n+1)/6`
-/

namespace A358848.P18008559716899064758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358756 (n + 1) : ℚ) / 6

end

end A358848.P18008559716899064758

/-! ## A358848.P16525123548958558695

`5*comp[7*A051444(n+1)]`
-/

namespace A358848.P16525123548958558695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A051444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358848.P16525123548958558695

/-! ## A358848.P9964530732712466357

`comp[(n+1)*A358847(n+1)]`
-/

namespace A358848.P9964530732712466357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A358847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358848.P9964530732712466357

/-! ## A358848.P3476016120911879588

`5*comp[7*comp[A083271(2*n+5)]]`
-/

namespace A358848.P3476016120911879588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (2 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A358848.P3476016120911879588

/-! ## A358848.P13502556939223913592

`∪[5*comp[7*n], A000330(5*comp[7*n])]`
-/

namespace A358848.P13502556939223913592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (5 * SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A358848.P13502556939223913592

/-! ## A358848.P15156472081879246751

`A008615(A358756(n+1))`
-/

namespace A358848.P15156472081879246751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A358756 (n + 1)).toNat

end

end A358848.P15156472081879246751

/-! ## A358848.P14647639050228628786

`5*A032634(A292666(n+1))`
-/

namespace A358848.P14647639050228628786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A032634 (A292666 (n + 1)).toNat

end

end A358848.P14647639050228628786

/-! ## A358848.P13555526913697634757

`A135042(comp[7*A227362(n)]+1)`
-/

namespace A358848.P13555526913697634757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A227362 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A358848.P13555526913697634757

/-!
# A358849: Numbers k for which A053669(6*k) [the smallest prime not dividing 6k] is of the form 6m-1.

The programs for A358849, there is no canonical definition to state claims against.
-/

/-! ## A358849.P742717612987231119

`comp[lcm(7, n)-2*n]`
-/

namespace A358849.P742717612987231119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 7 n : ℤ) - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358849.P742717612987231119

/-! ## A358849.P17629380621859823759

`comp[5*n*gcd(7, n)]`
-/

namespace A358849.P17629380621859823759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n * Nat.gcd 7 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A358849.P17629380621859823759

/-! ## A358849.P5743228226435721266

`comp[5*comp[7*n!]]`
-/

namespace A358849.P5743228226435721266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A358849.P5743228226435721266

/-! ## A358849.P5088927959139834720

`comp[5*comp[7*(n+1)]]`
-/

namespace A358849.P5088927959139834720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A358849.P5088927959139834720

/-! ## A358849.P6930414482000536513

`∪[comp[5*n], 7*comp[3*n]]`
-/

namespace A358849.P6930414482000536513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A358849.P6930414482000536513

/-! ## A358849.P18111122074184091015

`A358757(n+1)/6`
-/

namespace A358849.P18111122074184091015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358757 (n + 1) : ℚ) / 6

end

end A358849.P18111122074184091015

/-! ## A358849.P6975470700347327181

`filter[n+1, A358847(#)]`
-/

namespace A358849.P6975470700347327181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j) = 1) n)

end

end A358849.P6975470700347327181

/-! ## A358849.P9921764131828806848

`A008615(A358757(n+1))`
-/

namespace A358849.P9921764131828806848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A358757 (n + 1)).toNat

end

end A358849.P9921764131828806848

/-! ## A358849.P13646837359778213111

`A103221(A358757(n+1)+1)`
-/

namespace A358849.P13646837359778213111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A358757 (n + 1) + 1).toNat

end

end A358849.P13646837359778213111

/-!
# A358850: Primorial base exp-function reduced modulo 12.

The programs for A358850, there is no canonical definition to state claims against.
-/

/-! ## A358850.P8557285091839467383

`A010881(A276086(n))`
-/

namespace A358850.P8557285091839467383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A276086 n).toNat

end

end A358850.P8557285091839467383

/-! ## A358850.P13081619294041478432

`A392596(n)%12`
-/

namespace A358850.P13081619294041478432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392596 n) 12

end

end A358850.P13081619294041478432

/-! ## A358850.P1133479061214899855

`(A351225(n)+n)%12`
-/

namespace A358850.P1133479061214899855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351225 n + (n : ℤ)) 12

end

end A358850.P1133479061214899855

/-! ## A358850.P4760209812692336226

`A010881(A392596(n))`
-/

namespace A358850.P4760209812692336226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (A392596 n).toNat

end

end A358850.P4760209812692336226

/-! ## A358850.P9411637891783081650

`A276086(n)%A040030(n)`
-/

namespace A358850.P9411637891783081650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) (A040030 n)

end

end A358850.P9411637891783081650

/-! ## A358850.P17628133472345325385

`A346101(A289234(n))%12`
-/

namespace A358850.P17628133472345325385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346101 (A289234 n).toNat) 12

end

end A358850.P17628133472345325385

/-! ## A358850.P1840125947282605055

`A328627(A328625(n))%12`
-/

namespace A358850.P1840125947282605055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328627 (A328625 n).toNat) 12

end

end A358850.P1840125947282605055

/-! ## A358850.P9122262741202728092

`A328624(A328626(n))%12`
-/

namespace A358850.P9122262741202728092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328624 (A328626 n).toNat) 12

end

end A358850.P9122262741202728092

/-!
# A358851: a(n+1) is the number of occurrences of the largest digit of a(n) among all the digits of [a(0), a(1), ..., a(n)], with a(0)=0.

The programs for A358851, there is no canonical definition to state claims against.
-/

/-! ## A358851.P5043935703130377226

`A249009(n)%A136357(∑{d}[n+1, #]-and(n, -2))`
-/

namespace A358851.P5043935703130377226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249009 n) (A136357 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - Int.land (n : ℤ) (-2)).toNat)

end

end A358851.P5043935703130377226

/-! ## A358851.P4207059174119585489

`A249009(n)%A002982(A067824(n+1))`
-/

namespace A358851.P4207059174119585489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249009 n) (A002982 (A067824 (n + 1)).toNat)

end

end A358851.P4207059174119585489

/-! ## A358851.P12035793215121282826

`gcd(A007949(A233073(n+1)), A249009(n))`
-/

namespace A358851.P12035793215121282826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007949 (A233073 (n + 1)).toNat) (A249009 n)

end

end A358851.P12035793215121282826

/-!
# A358852: a(n) = n!*Sum_{m=0..floor(n/3)} 1/binomial(n-m,2*m).

The programs for A358852, there is no canonical definition to state claims against.
-/

/-! ## A358852.P13282209505489170300

`A307669(A277203(n+1))*A342337(n)`
-/

namespace A358852.P13282209505489170300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307669 (A277203 (n + 1)).toNat * A342337 n

end

end A358852.P13282209505489170300

/-! ## A358852.P12427851745280694482

`A086565(A210001(n))`
-/

namespace A358852.P12427851745280694482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086565 (A210001 n).toNat

end

end A358852.P12427851745280694482

/-!
# A358854: Number of even digits necessary to write all the numbers from 0 up to n.

The programs for A358854, the canonical program `A358854.P10782469796032889684` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358854 has offset 0).

The definition of A358854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117804, A279766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358854.P10782469796032889684

`A117804(n+1)-A279766(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A358854

/-- `A117804(n+1)-A279766(n)` -/
def P10782469796032889684.Spec : Prop :=
  ∀ n, P10782469796032889684.a n = A358854 n

theorem P10782469796032889684.correct : P10782469796032889684.Spec := by
  intro n
  simp only [A358854]

end A358854

/-! ## A358854.P2986199038551390907

`∑[∑{digits}[n, log2(gcd(2, #))]]`
-/

namespace A358854.P2986199038551390907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.logb 2 (Nat.gcd 2 x : ℝ)).sum

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P2986199038551390907

namespace A358854

/-- `∑[∑{digits}[n, log2(gcd(2, #))]]` -/
def P2986199038551390907.Spec : Prop :=
  ∀ n, P2986199038551390907.a n = (A358854 n : ℝ)

end A358854

/-! ## A358854.P144638059501876455

`∑[∑{digits}[n, (#+1)%2]]`
-/

namespace A358854.P144638059501876455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (x + 1) % 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P144638059501876455

namespace A358854

/-- `∑[∑{digits}[n, (#+1)%2]]` -/
def P144638059501876455.Spec : Prop :=
  ∀ n, (P144638059501876455.a n : ℤ) = A358854 n

end A358854

/-! ## A358854.P9428938839963598713

`∑[∑{digits}[n, 1-#%2]]`
-/

namespace A358854.P9428938839963598713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 1 - ((x % 2 : ℕ) : ℤ)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P9428938839963598713

namespace A358854

/-- `∑[∑{digits}[n, 1-#%2]]` -/
def P9428938839963598713.Spec : Prop :=
  ∀ n, P9428938839963598713.a n = A358854 n

end A358854

/-! ## A358854.P11662978319473620839

`∑[∑{digits}[n, and(1, #+1)]]`
-/

namespace A358854.P11662978319473620839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.land 1 (x + 1)).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P11662978319473620839

namespace A358854

/-- `∑[∑{digits}[n, and(1, #+1)]]` -/
def P11662978319473620839.Spec : Prop :=
  ∀ n, (P11662978319473620839.a n : ℤ) = A358854 n

end A358854

/-! ## A358854.P6296480651865152488

`∑[∑{digits}[n, or(1, #)-#]]`
-/

namespace A358854.P6296480651865152488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (Nat.lor 1 x : ℤ) - (x : ℤ)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P6296480651865152488

namespace A358854

/-- `∑[∑{digits}[n, or(1, #)-#]]` -/
def P6296480651865152488.Spec : Prop :=
  ∀ n, P6296480651865152488.a n = A358854 n

end A358854

/-! ## A358854.P3849759455635601674

`∑[A196563(n)]`
-/

namespace A358854.P3849759455635601674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P3849759455635601674

namespace A358854

/-- `∑[A196563(n)]` -/
def P3849759455635601674.Spec : Prop :=
  ∀ n, P3849759455635601674.a n = A358854 n

end A358854

/-! ## A358854.P16075082248559722216

`∑[dr(A087380(2*A065031(n)))]`
-/

namespace A358854.P16075082248559722216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087380 (2 * A065031 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358854.P16075082248559722216

namespace A358854

/-- `∑[dr(A087380(2*A065031(n)))]` -/
def P16075082248559722216.Spec : Prop :=
  ∀ n, (P16075082248559722216.a n : ℤ) = A358854 n

end A358854

/-!
# A358857: Least integer k in A031443 such that k*n is also in A031443, or -1 if there is no such k.

The programs for A358857, there is no canonical definition to state claims against.
-/

/-! ## A358857.P3454244918325773489

`floor(A358858(n+1)/(n+1))`
-/

namespace A358857.P3454244918325773489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A358858 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A358857.P3454244918325773489

/-!
# A358867: Primes from which subtracting the sum of the first k primes does not yield another prime, for any k.

The programs for A358867, there is no canonical definition to state claims against.
-/

/-! ## A358867.P13818092717041991680

`p?[A090304(n+1)]`
-/

namespace A358867.P13818092717041991680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358867.P13818092717041991680

/-! ## A358867.P2155353510051352588

`p?[record[A090304(A328396(n))]]`
-/

namespace A358867.P2155353510051352588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358867.P2155353510051352588

/-! ## A358867.P15320070044454323015

`record[A020639(A090304(n+2))]`
-/

namespace A358867.P15320070044454323015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090304 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358867.P15320070044454323015

/-! ## A358867.P6959006878284715889

`filter[A090304(n+1), A010051(#)]`
-/

namespace A358867.P6959006878284715889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A358867.P6959006878284715889

/-! ## A358867.P13044814372247768861

`filter[A090304(n+2), A080339(#)]`
-/

namespace A358867.P13044814372247768861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A358867.P13044814372247768861

/-! ## A358867.P6691933414944164498

`∩[A000040(n+1), A090304(n+1)]`
-/

namespace A358867.P6691933414944164498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358867.P6691933414944164498

/-! ## A358867.P14824762273183957711

`∩[A025584(n+1), A090304(n+1)]`
-/

namespace A358867.P14824762273183957711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358867.P14824762273183957711

/-! ## A358867.P9083439806484927661

`∩[A040116(n+1), A090304(n+1)]`
-/

namespace A358867.P9083439806484927661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358867.P9083439806484927661

/-! ## A358867.P16833490189450502584

`∩[A045319(n+1), A090304(n+1)]`
-/

namespace A358867.P16833490189450502584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358867.P16833490189450502584

/-! ## A358867.P3651342534869153691

`∩[A049585(n+1), A090304(n+1)]`
-/

namespace A358867.P3651342534869153691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358867.P3651342534869153691

/-!
# A358877: Triangle read by rows: T(n,k) is the number of cubes of side length k that can be placed inside a cube of side length n without overlap, 1 <= k <= n.

The programs for A358877, the canonical program `A358877.P15176719959387656287` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358877 has offset 1).

The definition of A358877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358877.P12800940047726059811

`A010766(n+1)^3`
-/

namespace A358877.P12800940047726059811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) ^ 3

end

end A358877.P12800940047726059811

namespace A358877

/-- `A010766(n+1)^3` -/
def P12800940047726059811.Spec : Prop :=
  ∀ n, P12800940047726059811.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P15176719959387656287

`ceil(ratio[A074909(n)])^3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358877

/-- `ceil(ratio[A074909(n)])^3` -/
def P15176719959387656287.Spec : Prop :=
  ∀ n, P15176719959387656287.a n = A358877 (n + 1)

theorem P15176719959387656287.correct : P15176719959387656287.Spec := by
  intro n
  simp only [A358877, Nat.add_sub_cancel]

end A358877

/-! ## A358877.P5818031716401692883

`ceil(ratio[A181971(n)])^3`
-/

namespace A358877.P5818031716401692883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 3

end

end A358877.P5818031716401692883

namespace A358877

/-- `ceil(ratio[A181971(n)])^3` -/
def P5818031716401692883.Spec : Prop :=
  ∀ n, P5818031716401692883.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P10047728450489285178

`abs(A174557(n+1)^3)`
-/

namespace A358877.P10047728450489285178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174557 (n + 1) ^ 3|

end

end A358877.P10047728450489285178

namespace A358877

/-- `abs(A174557(n+1)^3)` -/
def P10047728450489285178.Spec : Prop :=
  ∀ n, P10047728450489285178.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P13169985572195541448

`sqrt(A360610(n+1)^3)`
-/

namespace A358877.P13169985572195541448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360610 (n + 1) ^ 3 : ℝ)

end

end A358877.P13169985572195541448

namespace A358877

/-- `sqrt(A360610(n+1)^3)` -/
def P13169985572195541448.Spec : Prop :=
  ∀ n, P13169985572195541448.a n = (A358877 (n + 1) : ℝ)

end A358877

/-! ## A358877.P13867741316533153281

`(A050206(n+2)-1)^3`
-/

namespace A358877.P13867741316533153281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050206 (n + 2) - 1) ^ 3

end

end A358877.P13867741316533153281

namespace A358877

/-- `(A050206(n+2)-1)^3` -/
def P13867741316533153281.Spec : Prop :=
  ∀ n, P13867741316533153281.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P9184411981445903662

`floor(sqrt(A085383(n+1)))²^(3/2)`
-/

namespace A358877.P9184411981445903662
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A085383 (n + 1)) ^ 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)

end

end A358877.P9184411981445903662

namespace A358877

/-- `floor(sqrt(A085383(n+1)))²^(3/2)` -/
def P9184411981445903662.Spec : Prop :=
  ∀ n, P9184411981445903662.a n = (A358877 (n + 1) : ℝ)

end A358877

/-! ## A358877.P15545021547969814424

`A000578(A010766(n+1))`
-/

namespace A358877.P15545021547969814424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A010766 (n + 1)).toNat

end

end A358877.P15545021547969814424

namespace A358877

/-- `A000578(A010766(n+1))` -/
def P15545021547969814424.Spec : Prop :=
  ∀ n, P15545021547969814424.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P16271346976176104394

`A098360(A128489(n+1))`
-/

namespace A358877.P16271346976176104394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (A128489 (n + 1)).toNat

end

end A358877.P16271346976176104394

namespace A358877

/-- `A098360(A128489(n+1))` -/
def P16271346976176104394.Spec : Prop :=
  ∀ n, P16271346976176104394.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P8326776393426815461

`A010766(n+1)*A360610(n+1)`
-/

namespace A358877.P8326776393426815461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A360610 (n + 1)

end

end A358877.P8326776393426815461

namespace A358877

/-- `A010766(n+1)*A360610(n+1)` -/
def P8326776393426815461.Spec : Prop :=
  ∀ n, P8326776393426815461.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P16508258166888388227

`A174557(n+1)²²/A010766(n+1)`
-/

namespace A358877.P16508258166888388227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A174557 (n + 1) ^ 2) ^ 2 : ℚ) / (A010766 (n + 1) : ℚ)

end

end A358877.P16508258166888388227

namespace A358877

/-- `A174557(n+1)²²/A010766(n+1)` -/
def P16508258166888388227.Spec : Prop :=
  ∀ n, P16508258166888388227.a n = (A358877 (n + 1) : ℚ)

end A358877

/-! ## A358877.P12401645932561972304

`ceil(ratio[A029635(n)])^3`
-/

namespace A358877.P12401645932561972304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 3

end

end A358877.P12401645932561972304

namespace A358877

/-- `ceil(ratio[A029635(n)])^3` -/
def P12401645932561972304.Spec : Prop :=
  ∀ n, P12401645932561972304.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P16937314496102048205

`A013942(2*(n+1))^3`
-/

namespace A358877.P16937314496102048205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (2 * (n + 1)) ^ 3

end

end A358877.P16937314496102048205

namespace A358877

/-- `A013942(2*(n+1))^3` -/
def P16937314496102048205.Spec : Prop :=
  ∀ n, P16937314496102048205.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P15341582322555969363

`A013942(2*n+2)²*A013942(2*n+2)`
-/

namespace A358877.P15341582322555969363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (2 * n + 2) ^ 2 * A013942 (2 * n + 2)

end

end A358877.P15341582322555969363

namespace A358877

/-- `A013942(2*n+2)²*A013942(2*n+2)` -/
def P15341582322555969363.Spec : Prop :=
  ∀ n, P15341582322555969363.a n = A358877 (n + 1)

end A358877

/-! ## A358877.P2804354823198288079

`A000093(A360610(n+1))`
-/

namespace A358877.P2804354823198288079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A360610 (n + 1)).toNat

end

end A358877.P2804354823198288079

namespace A358877

/-- `A000093(A360610(n+1))` -/
def P2804354823198288079.Spec : Prop :=
  ∀ n, P2804354823198288079.a n = A358877 (n + 1)

end A358877

/-!
# A358879: Primes p such that p^2 + 1 has more divisors than p^2 - 1.

The programs for A358879, there is no canonical definition to state claims against.
-/

/-! ## A358879.P3677525080148032785

`p?[A373903(n+1)]`
-/

namespace A358879.P3677525080148032785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358879.P3677525080148032785

/-!
# A358880: Squares of the form k + reverse(k) for at least one k.

The programs for A358880, there is no canonical definition to state claims against.
-/

/-! ## A358880.P15858246952742597972

`A356648(n+1)²`
-/

namespace A358880.P15858246952742597972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356648 (n + 1) ^ 2

end

end A358880.P15858246952742597972

/-! ## A358880.P174996353448884320

`record[A356648(A286552(n))²]`
-/

namespace A358880.P174996353448884320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356648 (A286552 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358880.P174996353448884320

/-! ## A358880.P13762627948948950738

`A002620(2*A356648(n+1))`
-/

namespace A358880.P13762627948948950738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A356648 (n + 1)).toNat

end

end A358880.P13762627948948950738

/-! ## A358880.P10879138764859733882

`A356648(A000027(n+1))^2`
-/

namespace A358880.P10879138764859733882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356648 (A000027 (n + 1)).toNat ^ 2

end

end A358880.P10879138764859733882

/-! ## A358880.P341985087497669381

`A356648(n+1)^A036453(n+4)`
-/

namespace A358880.P341985087497669381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356648 (n + 1) : ℚ) ^ (A036453 (n + 4) : ℤ)

end

end A358880.P341985087497669381

/-!
# A358882: The number of regions in a Farey diagram of order (n,n).

The programs for A358882, there is no canonical definition to state claims against.
-/

/-! ## A358882.P3245606688700504608

`A358884(n+1)-A358883(n+1)+1`
-/

namespace A358882.P3245606688700504608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358884 (n + 1) - A358883 (n + 1) + 1

end

end A358882.P3245606688700504608

/-!
# A358883: The number of vertices in a Farey diagram of order (n,n).

The programs for A358883, there is no canonical definition to state claims against.
-/

/-! ## A358883.P11891327176055833020

`A358884(n+1)-A358882(n+1)+1`
-/

namespace A358883.P11891327176055833020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358884 (n + 1) - A358882 (n + 1) + 1

end

end A358883.P11891327176055833020

/-!
# A358884: The number of edges in a Farey diagram of order (n,n).

The programs for A358884, there is no canonical definition to state claims against.
-/

/-! ## A358884.P15313275946306506764

`A358882(n+1)+A358883(n+1)-1`
-/

namespace A358884.P15313275946306506764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358882 (n + 1) + A358883 (n + 1) - 1

end

end A358884.P15313275946306506764

/-!
# A358886: Number of regions formed inside a square with edge length 1 by the straight line segments mutually connecting all vertices and points that divide the sides into segments with lengths equal to the Farey series of order n = A006842(n,k)/A006843(n,k), k = 1..A005728(n).

The programs for A358886, there is no canonical definition to state claims against.
-/

/-! ## A358886.P15459335946932054226

`A358888(n+1)-A358887(n+1)+1`
-/

namespace A358886.P15459335946932054226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358888 (n + 1) - A358887 (n + 1) + 1

end

end A358886.P15459335946932054226

/-!
# A358887: Number of vertices formed inside a square with edge length 1 by the straight line segments mutually connecting all vertices and points that divide the sides into segments with lengths equal to the Farey series of order n = A006842(n,k)/A006843(n,k), k = 1..A005728(n).

The programs for A358887, there is no canonical definition to state claims against.
-/

/-! ## A358887.P8529944607122608691

`A358888(n+1)-A358886(n+1)+1`
-/

namespace A358887.P8529944607122608691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358888 (n + 1) - A358886 (n + 1) + 1

end

end A358887.P8529944607122608691

/-!
# A358888: Number of edges formed inside a square with edge length 1 by the straight line segments mutually connecting all vertices and points that divide the sides into segments with lengths equal to the Farey series of order n = A006842(n,k)/A006843(n,k), k = 1..A005728(n).

The programs for A358888, there is no canonical definition to state claims against.
-/

/-! ## A358888.P10740863301618272602

`A358886(n+1)+A358887(n+1)-1`
-/

namespace A358888.P10740863301618272602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358886 (n + 1) + A358887 (n + 1) - 1

end

end A358888.P10740863301618272602

/-!
# A358890: a(n) is the first term of the first maximal run of n consecutive numbers with increasing greatest prime factors.

The programs for A358890, there is no canonical definition to state claims against.
-/

/-! ## A358890.P10602942699468550564

`xor(A100384(n+1), A121550(A007096(2*n+3)))`
-/

namespace A358890.P10602942699468550564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100384 (n + 1)) (A121550 (A007096 (2 * n + 3)).toNat)

end

end A358890.P10602942699468550564

/-!
# A358892: Numbers obtained by self-shuffling the binary expansion of nonnegative numbers.

The programs for A358892, there is no canonical definition to state claims against.
-/

/-! ## A358892.P9617744544670614198

`lt[0, char[A358893(n)]]`
-/

namespace A358892.P9617744544670614198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358893 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358892.P9617744544670614198

/-! ## A358892.P6475417994438605896

`eq[A330955(n), A361399(n)]`
-/

namespace A358892.P6475417994438605896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358892.P6475417994438605896

/-! ## A358892.P14650186965210344459

`eq[A330956(n), A361399(n)]`
-/

namespace A358892.P14650186965210344459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358892.P14650186965210344459

/-! ## A358892.P6593219375246237580

`lt[A361399(n), A046523(A070939(n))]`
-/

namespace A358892.P6593219375246237580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358892.P6593219375246237580

/-! ## A358892.P1178789876580158537

`lt[A361399(n), A000010(A070939(n)+1)]`
-/

namespace A358892.P1178789876580158537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A070939 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358892.P1178789876580158537

/-!
# A358895: Numbers k such that p(k)^p(k + 1) < p(k + 2)^p(k), where p(k) = prime(k).

The programs for A358895, there is no canonical definition to state claims against.
-/

/-! ## A358895.P7131778663245471877

`A000720(A358896(n+1))`
-/

namespace A358895.P7131778663245471877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A358896 (n + 1)).toNat

end

end A358895.P7131778663245471877

/-! ## A358895.P15125814708909458405

`A289508(A358896(2*n-n+1))`
-/

namespace A358895.P15125814708909458405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A358896 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A358895.P15125814708909458405

/-! ## A358895.P8992104517819981887

`A289508(A358896(n+1))%A003336(n+1)`
-/

namespace A358895.P8992104517819981887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289508 (A358896 (n + 1)).toNat) (A003336 (n + 1))

end

end A358895.P8992104517819981887

/-! ## A358895.P17191149359066088211

`A289508(A358896(n+1)%A358896(n+5))`
-/

namespace A358895.P17191149359066088211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.tmod (A358896 (n + 1)) (A358896 (n + 5))).toNat

end

end A358895.P17191149359066088211

/-! ## A358895.P7385060268452755697

`A289508(A358896(n+1)+A000007(3*n+1))`
-/

namespace A358895.P7385060268452755697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A358896 (n + 1) + A000007 (3 * n + 1)).toNat

end

end A358895.P7385060268452755697

/-!
# A358896: Primes p(k) such that p(k)^p(k + 1) < p(k + 2)^p(k).

The programs for A358896, there is no canonical definition to state claims against.
-/

/-! ## A358896.P3044652025388827841

`A000040(A358895(n+1))`
-/

namespace A358896.P3044652025388827841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358895 (n + 1)).toNat

end

end A358896.P3044652025388827841

/-! ## A358896.P10194872797431943995

`A008578(A358895(n+1)+1)`
-/

namespace A358896.P10194872797431943995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A358895 (n + 1) + 1).toNat

end

end A358896.P10194872797431943995

/-! ## A358896.P35416455120859782

`A073846(2*A358895(n+1))`
-/

namespace A358896.P35416455120859782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A358895 (n + 1)).toNat

end

end A358896.P35416455120859782

/-! ## A358896.P10164270863027270684

`∑{d}[A358895(n+1), A007444(#)]`
-/

namespace A358896.P10164270863027270684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A358896.P10164270863027270684

/-!
# A358897: Numbers k such that p(k)^p(k) < p(k+1)^p(k-1), where p(k) = prime(k).

The programs for A358897, there is no canonical definition to state claims against.
-/

/-! ## A358897.P6997029575383231287

`A000720(A358898(n+1))`
-/

namespace A358897.P6997029575383231287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A358898 (n + 1)).toNat

end

end A358897.P6997029575383231287

/-! ## A358897.P11976665865246308805

`∑{d}[A358898(n+1), A344616(#)]`
-/

namespace A358897.P11976665865246308805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344616 d

end

end A358897.P11976665865246308805

/-! ## A358897.P159333584113360830

`A344616(A358898(n+1)+A171386(n+5))`
-/

namespace A358897.P159333584113360830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A358898 (n + 1) + A171386 (n + 5)).toNat

end

end A358897.P159333584113360830

/-! ## A358897.P2308564324242403298

`A344616(A358898(n+1)%A072143(n+1))`
-/

namespace A358897.P2308564324242403298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.tmod (A358898 (n + 1)) (A072143 (n + 1))).toNat

end

end A358897.P2308564324242403298

/-! ## A358897.P15518002273636670502

`A344616(A358898(n+1))%A127407(2*n+5)`
-/

namespace A358897.P15518002273636670502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344616 (A358898 (n + 1)).toNat) (A127407 (2 * n + 5))

end

end A358897.P15518002273636670502

/-!
# A358898: Primes p(k) such that p(k)^p(k) < p(k+1)^p(k-1).

The programs for A358898, there is no canonical definition to state claims against.
-/

/-! ## A358898.P3221214966305685787

`A000040(A358897(n+1))`
-/

namespace A358898.P3221214966305685787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358897 (n + 1)).toNat

end

end A358898.P3221214966305685787

/-! ## A358898.P2613141530521376723

`A008578(A358897(n+1)+1)`
-/

namespace A358898.P2613141530521376723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A358897 (n + 1) + 1).toNat

end

end A358898.P2613141530521376723

/-! ## A358898.P14832725937316484191

`A065091(A358897(n+1)-1)`
-/

namespace A358898.P14832725937316484191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A358897 (n + 1) - 1).toNat

end

end A358898.P14832725937316484191

/-!
# A358899: Numbers k such that p(k)^p(k) > p(k-1)^p(k+1), where p(k) = prime(k).

The programs for A358899, there is no canonical definition to state claims against.
-/

/-! ## A358899.P13006936169830558632

`A000720(A358900(n+1))`
-/

namespace A358899.P13006936169830558632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A358900 (n + 1)).toNat

end

end A358899.P13006936169830558632

/-! ## A358899.P3218485502285092727

`∑{d}[A358900(n+1), A354871(#)]`
-/

namespace A358899.P3218485502285092727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A354871 d

end

end A358899.P3218485502285092727

/-! ## A358899.P16915883503694898688

`A354871(A358900(n+1)%A251893(n+1))`
-/

namespace A358899.P16915883503694898688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354871 (Int.tmod (A358900 (n + 1)) (A251893 (n + 1))).toNat

end

end A358899.P16915883503694898688

/-! ## A358899.P13862083835543919083

`A354871(A358900(n+1))%A298222(n+1)`
-/

namespace A358899.P13862083835543919083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354871 (A358900 (n + 1)).toNat) (A298222 (n + 1))

end

end A358899.P13862083835543919083

/-! ## A358899.P9292984181362035210

`A354871(A358900(n+1)+A349797(2*n+3))`
-/

namespace A358899.P9292984181362035210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354871 (A358900 (n + 1) + A349797 (2 * n + 3)).toNat

end

end A358899.P9292984181362035210

