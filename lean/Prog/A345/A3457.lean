import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A345701: a(n) = 3*n^3 - 1.

The programs for A345701, the canonical program `A345701.P6903315535729720725` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345701 has offset 0).

The definition of A345701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3-1` (program `A345701.P6903315535729720725`, by `A345701.P6903315535729720725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345701.P6903315535729720725

`3*n^3-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A345701

/-- `3*n^3-1` -/
def P6903315535729720725.Spec : Prop :=
  ∀ n, P6903315535729720725.a n = A345701 n

theorem P6903315535729720725.correct : P6903315535729720725.Spec := by
  intro n
  simp only [A345701]

end A345701

/-! ## A345701.P9501021064596656480

`xor(-1, -3*n^3)`
-/

namespace A345701.P9501021064596656480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(3 * n ^ 3 : ℤ))

end

end A345701.P9501021064596656480

namespace A345701

/-- `xor(-1, -3*n^3)` -/
def P9501021064596656480.Spec : Prop :=
  ∀ n, P9501021064596656480.a n = A345701 n

end A345701

/-! ## A345701.P2366469625223259973

`(A244726(n)-2)/2`
-/

namespace A345701.P2366469625223259973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244726 n - 2 : ℚ) / 2

end

end A345701.P2366469625223259973

namespace A345701

/-- `(A244726(n)-2)/2` -/
def P2366469625223259973.Spec : Prop :=
  ∀ n, P2366469625223259973.a n = (A345701 n : ℚ)

end A345701

/-! ## A345701.P7433550221887475582

`(A244728(n)-3)/3`
-/

namespace A345701.P7433550221887475582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244728 n - 3 : ℚ) / 3

end

end A345701.P7433550221887475582

namespace A345701

/-- `(A244728(n)-3)/3` -/
def P7433550221887475582.Spec : Prop :=
  ∀ n, P7433550221887475582.a n = (A345701 n : ℚ)

end A345701

/-! ## A345701.P1545508097182219807

`3*(A000578(n)-1/3)`
-/

namespace A345701.P1545508097182219807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A000578 n : ℚ) - (1 : ℚ) / 3)

end

end A345701.P1545508097182219807

namespace A345701

/-- `3*(A000578(n)-1/3)` -/
def P1545508097182219807.Spec : Prop :=
  ∀ n, P1545508097182219807.a n = (A345701 n : ℚ)

end A345701

/-! ## A345701.P14227489285589834178

`(6*n*A000290(n)-2)/2`
-/

namespace A345701.P14227489285589834178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) * A000290 n - 2 : ℚ) / 2

end

end A345701.P14227489285589834178

namespace A345701

/-- `(6*n*A000290(n)-2)/2` -/
def P14227489285589834178.Spec : Prop :=
  ∀ n, P14227489285589834178.a n = (A345701 n : ℚ)

end A345701

/-! ## A345701.P17256412854400267686

`or(3*n*n²-1, A000007(n))`
-/

namespace A345701.P17256412854400267686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 * (n * n ^ 2) : ℤ) - 1) (A000007 n)

end

end A345701.P17256412854400267686

namespace A345701

/-- `or(3*n*n²-1, A000007(n))` -/
def P17256412854400267686.Spec : Prop :=
  ∀ n, P17256412854400267686.a n = A345701 n

end A345701

/-! ## A345701.P9797501661600085235

`-((4-A016777(n+1))*n²+1)`
-/

namespace A345701.P9797501661600085235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((4 - A016777 (n + 1)) * (n ^ 2 : ℤ) + 1)

end

end A345701.P9797501661600085235

namespace A345701

/-- `-((4-A016777(n+1))*n²+1)` -/
def P9797501661600085235.Spec : Prop :=
  ∀ n, P9797501661600085235.a n = A345701 n

end A345701

/-! ## A345701.P1721633180742893047

`(A000290(n)*A008458(n)-2)/2`
-/

namespace A345701.P1721633180742893047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 n * A008458 n - 2 : ℚ) / 2

end

end A345701.P1721633180742893047

namespace A345701

/-- `(A000290(n)*A008458(n)-2)/2` -/
def P1721633180742893047.Spec : Prop :=
  ∀ n, P1721633180742893047.a n = (A345701 n : ℚ)

end A345701

/-! ## A345701.P2380903787828627034

`-((1-n-(A000027(n+1)+n))*A000290(n)+1)`
-/

namespace A345701.P2380903787828627034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - (n : ℤ) - (A000027 (n + 1) + (n : ℤ))) * A000290 n + 1)

end

end A345701.P2380903787828627034

namespace A345701

/-- `-((1-n-(A000027(n+1)+n))*A000290(n)+1)` -/
def P2380903787828627034.Spec : Prop :=
  ∀ n, P2380903787828627034.a n = A345701 n

end A345701

/-! ## A345701.P6986189631955263649

`Δ[A060884(n)-∑[n]²]`
-/

namespace A345701.P6986189631955263649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345701.P6986189631955263649

namespace A345701

/-- `Δ[A060884(n)-∑[n]²]` -/
def P6986189631955263649.Spec : Prop :=
  ∀ n, P6986189631955263649.a n = A345701 n

end A345701

/-! ## A345701.P1077657974095455395

`(n*A008458(n²)-2)/2`
-/

namespace A345701.P1077657974095455395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A008458 (n ^ 2) - 2 : ℚ) / 2

end

end A345701.P1077657974095455395

namespace A345701

/-- `(n*A008458(n²)-2)/2` -/
def P1077657974095455395.Spec : Prop :=
  ∀ n, P1077657974095455395.a n = (A345701 n : ℚ)

end A345701

/-!
# A345702: Numbers that can be written as 2*a^2 - 1 and 3*b^3 - 1.

The programs for A345702, the canonical program `A345702.P710567044956477333` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345702 has offset 1).

The definition of A345702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345702.P710567044956477333

`648*n^6-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A345702

/-- `648*n^6-1` -/
def P710567044956477333.Spec : Prop :=
  ∀ n, P710567044956477333.a n = A345702 (n + 1)

theorem P710567044956477333.correct : P710567044956477333.Spec := by
  intro n
  simp only [A345702, Nat.add_sub_cancel]

end A345702

/-! ## A345702.P4387471957817845743

`-xor(1, -24*27*n^6)`
-/

namespace A345702.P4387471957817845743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(24 * (27 * n ^ 6) : ℤ))

end

end A345702.P4387471957817845743

namespace A345702

/-- `-xor(1, -24*27*n^6)` -/
def P4387471957817845743.Spec : Prop :=
  ∀ n, P4387471957817845743.a n = A345702 (n + 1)

end A345702

/-! ## A345702.P387430838269541076

`or(A185270(n)-3, 2)`
-/

namespace A345702.P387430838269541076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185270 n - 3) 2

end

end A345702.P387430838269541076

namespace A345702

/-- `or(A185270(n)-3, 2)` -/
def P387430838269541076.Spec : Prop :=
  ∀ n, P387430838269541076.a n = A345702 (n + 1)

end A345702

/-! ## A345702.P3189662975266597208

`(A185270(n)+log2(1/2))*A106400(n)²`
-/

namespace A345702.P3189662975266597208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A185270 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A106400 n ^ 2 : ℝ)

end

end A345702.P3189662975266597208

namespace A345702

/-- `(A185270(n)+log2(1/2))*A106400(n)²` -/
def P3189662975266597208.Spec : Prop :=
  ∀ n, P3189662975266597208.a n = (A345702 (n + 1) : ℝ)

end A345702

/-! ## A345702.P1697787688465150539

`∏{e}[p?[A228937(2*n+1)], A185270(n)-#]`
-/

namespace A345702.P1697787688465150539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228937 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A185270 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A345702.P1697787688465150539

namespace A345702

/-- `∏{e}[p?[A228937(2*n+1)], A185270(n)-#]` -/
def P1697787688465150539.Spec : Prop :=
  ∀ n, P1697787688465150539.a n = A345702 (n + 1)

end A345702

/-!
# A345703: Expansion of Pi in signed binary nonadjacent form.

The programs for A345703, there is no canonical definition to state claims against.
-/

/-! ## A345703.P18275342430107321751

`A010815(A335452(2*(n+2))+A000045(n))`
-/

namespace A345703.P18275342430107321751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A335452 (2 * (n + 2)) + A000045 n).toNat

end

end A345703.P18275342430107321751

/-! ## A345703.P14357321903202213103

`A014933(A305322(n+1))`
-/

namespace A345703.P14357321903202213103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A305322 (n + 1)).toNat

end

end A345703.P14357321903202213103

/-! ## A345703.P4067896139295207096

`A115524(A323004(n+2))`
-/

namespace A345703.P4067896139295207096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115524 (A323004 (n + 2)).toNat

end

end A345703.P4067896139295207096

/-! ## A345703.P17442494667574083839

`A319448(∑[A027907(n)+A000045(n)])`
-/

namespace A345703.P17442494667574083839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345703.P17442494667574083839

/-!
# A345707: Primes prime(k) at which A345706(k) attains a record value.

The programs for A345707, there is no canonical definition to state claims against.
-/

/-! ## A345707.P7164387749488620997

`A200997(A086319(n+1)-A093178(n))`
-/

namespace A345707.P7164387749488620997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A086319 (n + 1) - A093178 n).toNat

end

end A345707.P7164387749488620997

/-! ## A345707.P15102745893916793858

`xor(A036580(A345692(n+1)), A191052(n+1))`
-/

namespace A345707.P15102745893916793858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036580 (A345692 (n + 1)).toNat) (A191052 (n + 1))

end

end A345707.P15102745893916793858

/-!
# A345708: a(n) is the least positive number starting an interval of consecutive integers whose product of elements is n.

The programs for A345708, there is no canonical definition to state claims against.
-/

/-! ## A345708.P14145858952751929852

`gcd(A144786(n+1), A244611(A005920(n)))`
-/

namespace A345708.P14145858952751929852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144786 (n + 1)) (A244611 (A005920 n).toNat)

end

end A345708.P14145858952751929852

/-! ## A345708.P16415937381497224453

`A144786(n+1)%A151913(A125749(3*n+1))`
-/

namespace A345708.P16415937381497224453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144786 (n + 1)) (A151913 (A125749 (3 * n + 1)).toNat)

end

end A345708.P16415937381497224453

/-! ## A345708.P6085513296177369877

`C(A144786(n+1), A331039(A331039(n)))`
-/

namespace A345708.P6085513296177369877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144786 (n + 1)).toNat (A331039 (A331039 n).toNat).toNat

end

end A345708.P6085513296177369877

/-! ## A345708.P2305529462724685258

`gcd(gcd(n+1, A035933(n*A005369(n+1))), A025845(∑{e}[n+1, #-val(#!, 2)]))`
-/

namespace A345708.P2305529462724685258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.gcd (n + 1 : ℤ) (A035933 ((n : ℤ) * A005369 (n + 1)).toNat) : ℤ) (A025845 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat)

end

end A345708.P2305529462724685258

/-!
# A345710: Triangle read by rows in which T(n,k) is half the number of n-bit words with maximum overlap k, n >= 1, k >= 0.

The programs for A345710, there is no canonical definition to state claims against.
-/

/-! ## A345710.P3188062301223419711

`A345530(n+1)/2`
-/

namespace A345710.P3188062301223419711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345530 (n + 1) : ℚ) / 2

end

end A345710.P3188062301223419711

/-! ## A345710.P14117496323604264908

`floor(A345530(Δ[n²]-n)/2)`
-/

namespace A345710.P14117496323604264908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A345710.P14117496323604264908

/-! ## A345710.P9064273157224563786

`ceil(A345530(abs(Δ[n²])-n)/2)`
-/

namespace A345710.P9064273157224563786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345530 (|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| - (n : ℤ)).toNat : ℚ) / 2⌉

end

end A345710.P9064273157224563786

/-! ## A345710.P7909772144284937818

`(A345530(Δ[A000290(n)]-n)-A010873(4*n))/2`
-/

namespace A345710.P7909772144284937818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345530 (f1 (n + 1) - f1 n - (n : ℤ)).toNat - A010873 (4 * n) : ℚ) / 2

end

end A345710.P7909772144284937818

/-! ## A345710.P8856062403160529790

`A014682(A345530(n+1))`
-/

namespace A345710.P8856062403160529790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A345530 (n + 1)).toNat

end

end A345710.P8856062403160529790

/-! ## A345710.P9370032386894607932

`A273943(lcm(2, A345530(n+1)))`
-/

namespace A345710.P9370032386894607932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A345530 (n + 1)))

end

end A345710.P9370032386894607932

/-! ## A345710.P17264151129187569930

`A273943(A345530(n+1)+2)-1`
-/

namespace A345710.P17264151129187569930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A345530 (n + 1) + 2).toNat - 1

end

end A345710.P17264151129187569930

/-! ## A345710.P10429320139314037648

`A273943(A345530(n+1))%A090288(n)`
-/

namespace A345710.P10429320139314037648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A345530 (n + 1)).toNat) (A090288 n)

end

end A345710.P10429320139314037648

/-! ## A345710.P17155546332675362670

`gcd(A000038(n), A273943(A345530(n+1)))`
-/

namespace A345710.P17155546332675362670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273943 (A345530 (n + 1)).toNat)

end

end A345710.P17155546332675362670

/-! ## A345710.P14828136038792554117

`A273943(or(A000038(n), A345530(n+1)))`
-/

namespace A345710.P14828136038792554117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lor (A000038 n) (A345530 (n + 1))).toNat

end

end A345710.P14828136038792554117

/-! ## A345710.P16940196894448880008

`A273943(A345530(n+1)%A143207(n+1))`
-/

namespace A345710.P16940196894448880008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A345530 (n + 1)) (A143207 (n + 1))).toNat

end

end A345710.P16940196894448880008

/-! ## A345710.P1274686011459476153

`A007318(C(2, n))*A273943(A345530(n+1))`
-/

namespace A345710.P1274686011459476153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A273943 (A345530 (n + 1)).toNat

end

end A345710.P1274686011459476153

/-! ## A345710.P15559184058942341806

`A038572(A345530(n+1)+2)-1`
-/

namespace A345710.P15559184058942341806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A345530 (n + 1) + 2).toNat - 1

end

end A345710.P15559184058942341806

/-! ## A345710.P15887669190671794849

`A038572(A345530(n+1)-A000007(n))`
-/

namespace A345710.P15887669190671794849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A345530 (n + 1) - A000007 n).toNat

end

end A345710.P15887669190671794849

/-! ## A345710.P2545022303496786756

`A004524(A345530(n+1)+1)`
-/

namespace A345710.P2545022303496786756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A345530 (n + 1) + 1).toNat

end

end A345710.P2545022303496786756

/-! ## A345710.P3033196896228403249

`A004526(A345530(n+1)+1)`
-/

namespace A345710.P3033196896228403249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345530 (n + 1) + 1).toNat

end

end A345710.P3033196896228403249

/-! ## A345710.P11607858254833460127

`A028242(A345530(n+1)+1)`
-/

namespace A345710.P11607858254833460127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A345530 (n + 1) + 1).toNat

end

end A345710.P11607858254833460127

/-! ## A345710.P3473656181674033035

`A000463(A345530(n+1)-1)`
-/

namespace A345710.P3473656181674033035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A345530 (n + 1) - 1).toNat

end

end A345710.P3473656181674033035

/-! ## A345710.P6145006264741471518

`A001057(A345530(n+1)-1)`
-/

namespace A345710.P6145006264741471518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A345530 (n + 1) - 1).toNat

end

end A345710.P6145006264741471518

/-! ## A345710.P5537464803802704461

`A003602(A345530(n+1)-1)`
-/

namespace A345710.P5537464803802704461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A345530 (n + 1) - 1).toNat

end

end A345710.P5537464803802704461

/-!
# A345716: a(n) is the minimum number of nonattacking rooks required to attack every square on a size n right tetrahedral chessboard.

The programs for A345716, there is no canonical definition to state claims against.
-/

/-! ## A345716.P8443582031727536343

`A062153(A141310(n))+∑[A008611(n)]`
-/

namespace A345716.P8443582031727536343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A141310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345716.P8443582031727536343

/-! ## A345716.P17915551894000348150

`A008620(A079326(n+2))%A348270(n+5)`
-/

namespace A345716.P17915551894000348150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008620 (A079326 (n + 2)).toNat) (A348270 (n + 5))

end

end A345716.P17915551894000348150

/-! ## A345716.P18210199718974617165

`A036838(eq[1, A108456(n)])`
-/

namespace A345716.P18210199718974617165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345716.P18210199718974617165

/-! ## A345716.P7410034350631706196

`A097992(A171746(floor((n+3)*or(1, n)/2)²))`
-/

namespace A345716.P7410034350631706196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A171746 (⌊(n + 3 : ℚ) * ((Nat.lor 1 n : ℚ) / 2)⌋ ^ 2).toNat).toNat

end

end A345716.P7410034350631706196

/-! ## A345716.P15972140322996315043

`A097992(A171746((∑[lcm(2, (n+1)²)-1]/(n+1))²))`
-/

namespace A345716.P15972140322996315043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A171746 (SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) ^ 2)).toNat).toNat

end

end A345716.P15972140322996315043

/-!
# A345717: Orders of abelian cubes in the tribonacci word A080843.

The programs for A345717, there is no canonical definition to state claims against.
-/

/-! ## A345717.P3448073567617552002

`lt[2, A345901(n+1)]+1`
-/

namespace A345717.P3448073567617552002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A345717.P3448073567617552002

/-! ## A345717.P7460282802945689658

`A324473(A333217(2*(n+2))+A014681(n))`
-/

namespace A345717.P7460282802945689658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (A333217 (2 * (n + 2)) + A014681 n).toNat

end

end A345717.P7460282802945689658

/-!
# A345718: Numbers that are the sum of six fifth powers in four or more ways.

The programs for A345718, there is no canonical definition to state claims against.
-/

/-! ## A345718.P10457912742303270160

`∪[A345719(n+1), A346359(n+1)]`
-/

namespace A345718.P10457912742303270160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345718.P10457912742303270160

/-! ## A345718.P12073671013144725426

`A346359(n+1)+A000035(A045991(n))`
-/

namespace A345718.P12073671013144725426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346359 (n + 1) + A000035 (A045991 n).toNat

end

end A345718.P12073671013144725426

/-! ## A345718.P6662804982492988421

`A346359(n+1)+A008437(A079262(n))`
-/

namespace A345718.P6662804982492988421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346359 (n + 1) + A008437 (A079262 n).toNat

end

end A345718.P6662804982492988421

/-! ## A345718.P15446623954473993823

`A000034(A034262(n))*A346359(n+1)`
-/

namespace A345718.P15446623954473993823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A034262 n).toNat * A346359 (n + 1)

end

end A345718.P15446623954473993823

/-! ## A345718.P7784050498524875413

`A346359(n+1)+A337074(A002410(n+1))`
-/

namespace A345718.P7784050498524875413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346359 (n + 1) + A337074 (A002410 (n + 1)).toNat

end

end A345718.P7784050498524875413

/-!
# A345719: Numbers that are the sum of six fifth powers in five or more ways.

The programs for A345719, there is no canonical definition to state claims against.
-/

/-! ## A345719.P9456131842204555282

`A346360(n+1)+A210321(n+1)%-1`
-/

namespace A345719.P9456131842204555282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346360 (n + 1) + Int.tmod (A210321 (n + 1)) (-1)

end

end A345719.P9456131842204555282

/-! ## A345719.P2226407349355745090

`A346360(n+1)+A002957(n+5)%-1`
-/

namespace A345719.P2226407349355745090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346360 (n + 1) + Int.tmod (A002957 (n + 5)) (-1)

end

end A345719.P2226407349355745090

/-! ## A345719.P13117056273119524399

`A346360(n+1)+A005928(Δ[6*n^3])`
-/

namespace A345719.P13117056273119524399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346360 (n + 1) + A005928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A345719.P13117056273119524399

/-! ## A345719.P4250117037965359521

`A346360(n+1)+A000007(A066094(n))`
-/

namespace A345719.P4250117037965359521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346360 (n + 1) + A000007 (A066094 n).toNat

end

end A345719.P4250117037965359521

/-! ## A345719.P7730647910963751169

`A346360(n+1)+A177063(A000032(n))`
-/

namespace A345719.P7730647910963751169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346360 (n + 1) + A177063 (A000032 n).toNat

end

end A345719.P7730647910963751169

/-!
# A345720: Numbers that are the sum of six fifth powers in six or more ways.

The programs for A345720, there is no canonical definition to state claims against.
-/

/-! ## A345720.P16204132454267544753

`A346361(A032555(n+1))`
-/

namespace A345720.P16204132454267544753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346361 (A032555 (n + 1)).toNat

end

end A345720.P16204132454267544753

/-! ## A345720.P4974964545727279134

`A346361(A032559(n+1))`
-/

namespace A345720.P4974964545727279134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346361 (A032559 (n + 1)).toNat

end

end A345720.P4974964545727279134

/-! ## A345720.P16438652842039518645

`A346361(A077739(n+1))`
-/

namespace A345720.P16438652842039518645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346361 (A077739 (n + 1)).toNat

end

end A345720.P16438652842039518645

/-! ## A345720.P17266786238931136696

`A346361(A078213(n+1))`
-/

namespace A345720.P17266786238931136696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346361 (A078213 (n + 1)).toNat

end

end A345720.P17266786238931136696

/-! ## A345720.P5021231087190988772

`A346361(A082217(n+1))`
-/

namespace A345720.P5021231087190988772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346361 (A082217 (n + 1)).toNat

end

end A345720.P5021231087190988772

/-!
# A345721: Numbers that are the sum of six fifth powers in seven or more ways.

The programs for A345721, there is no canonical definition to state claims against.
-/

/-! ## A345721.P2575522959444336924

`A346362(A330929(n+1))`
-/

namespace A345721.P2575522959444336924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346362 (A330929 (n + 1)).toNat

end

end A345721.P2575522959444336924

/-!
# A345722: Numbers that are the sum of six fifth powers in eight or more ways.

The programs for A345722, there is no canonical definition to state claims against.
-/

/-! ## A345722.P13571301173276423914

`∪[A346363(n+1), A346364(n+1)]%A345723(n+1)`
-/

namespace A345722.P13571301173276423914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345723 (n + 1))

end

end A345722.P13571301173276423914

/-! ## A345722.P3591475626039151589

`∪[A346364(n+1), A346363(n+1)]%A344196(n+1)`
-/

namespace A345722.P3591475626039151589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346363 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344196 (n + 1))

end

end A345722.P3591475626039151589

/-!
# A345723: Numbers that are the sum of six fifth powers in nine or more ways.

The programs for A345723, there is no canonical definition to state claims against.
-/

/-! ## A345723.P9844409527129081319

`∪[A344196(n+1), A346364(n+1)]%A344196(2*(n+1))`
-/

namespace A345723.P9844409527129081319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344196 (2 * (n + 1)))

end

end A345723.P9844409527129081319

/-! ## A345723.P1470227686723240803

`∪[A346364(n+1), A346365(n+1)]%A346365(3*n+2)`
-/

namespace A345723.P1470227686723240803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346365 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A346365 (3 * n + 2))

end

end A345723.P1470227686723240803

/-! ## A345723.P7773205310532877827

`A346364(A077168(n))`
-/

namespace A345723.P7773205310532877827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (A077168 n).toNat

end

end A345723.P7773205310532877827

/-! ## A345723.P11621907399978644335

`A346364(A001511(2^n))`
-/

namespace A345723.P11621907399978644335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (A001511 (2 ^ n)).toNat

end

end A345723.P11621907399978644335

/-! ## A345723.P9510291483332712676

`A346364(A070939(2^n))`
-/

namespace A345723.P9510291483332712676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346364 (A070939 (2 ^ n)).toNat

end

end A345723.P9510291483332712676

/-!
# A345724: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = n^4*s, where s is the population variance of the values of u+v.

The programs for A345724, there is no canonical definition to state claims against.
-/

/-! ## A345724.P4052969675645453242

`(8^n)%(A065860(8^n)+1)`
-/

namespace A345724.P4052969675645453242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 ^ n : ℤ) (A065860 (8 ^ n) + 1)

end

end A345724.P4052969675645453242

/-!
# A345725: For 1<=x<=n, 1<=y<=n with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = m^2*s, where s is the population variance of the values of u+v and m is the number of such values.

The programs for A345725, there is no canonical definition to state claims against.
-/

/-! ## A345725.P9423053861756272885

`A332356(A023865(n+2))`
-/

namespace A345725.P9423053861756272885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332356 (A023865 (n + 2)).toNat

end

end A345725.P9423053861756272885

/-!
# A345726: a(n) = Product_{k=1..n} k^(floor(n/k)^2).

The programs for A345726, there is no canonical definition to state claims against.
-/

/-! ## A345726.P12754849062717993101

`A129364(n+1)/A092143(n+1)*A129364(n+1)`
-/

namespace A345726.P12754849062717993101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129364 (n + 1) : ℚ) / (A092143 (n + 1) : ℚ) * (A129364 (n + 1) : ℚ)

end

end A345726.P12754849062717993101

/-! ## A345726.P1250666118217491512

`∏[∏{d}[n+1, ((n+1)/#)^#]]²/∏[A007955(n+1)]`
-/

namespace A345726.P1250666118217491512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 / ((∏ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A345726.P1250666118217491512

/-! ## A345726.P8637719156706749621

`A129364(n+1)²/A092143(n+1)`
-/

namespace A345726.P8637719156706749621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129364 (n + 1) ^ 2 : ℚ) / (A092143 (n + 1) : ℚ)

end

end A345726.P8637719156706749621

/-! ## A345726.P4418681971736048751

`A129364(n+1)²/∏[A007955(n+1)]`
-/

namespace A345726.P4418681971736048751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129364 (n + 1) ^ 2 : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A345726.P4418681971736048751

/-! ## A345726.P10142214422569985947

`(A092287(n+1)/A129365(n+1))²/A092143(n+1)`
-/

namespace A345726.P10142214422569985947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A092287 (n + 1) : ℚ) / (A129365 (n + 1) : ℚ)) ^ 2 / (A092143 (n + 1) : ℚ)

end

end A345726.P10142214422569985947

/-!
# A345727: a(n) = (prime(n)+1) * prime(n+1).

The programs for A345727, the canonical program `A345727.P2376584514298467307` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345727 has offset 1).

The definition of A345727 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, A180617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345727.P2376584514298467307

`A180617(n+1)-A008864(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A345727

/-- `A180617(n+1)-A008864(n+1)` -/
def P2376584514298467307.Spec : Prop :=
  ∀ n, P2376584514298467307.a n = A345727 (n + 1)

theorem P2376584514298467307.correct : P2376584514298467307.Spec := by
  intro n
  simp only [A345727, Nat.add_sub_cancel]

end A345727

/-! ## A345727.P6674621644186183279

`A006094(n+1)+A000040(n+2)`
-/

namespace A345727.P6674621644186183279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A000040 (n + 2)

end

end A345727.P6674621644186183279

namespace A345727

/-- `A006094(n+1)+A000040(n+2)` -/
def P6674621644186183279.Spec : Prop :=
  ∀ n, P6674621644186183279.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P7572120960678842532

`A008864(n+1)*A000040(n+2)`
-/

namespace A345727.P7572120960678842532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A000040 (n + 2)

end

end A345727.P7572120960678842532

namespace A345727

/-- `A008864(n+1)*A000040(n+2)` -/
def P7572120960678842532.Spec : Prop :=
  ∀ n, P7572120960678842532.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P6609719637763088683

`ceil((sqrt(A037166(n+1))+1)²)`
-/

namespace A345727.P6609719637763088683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A037166 (n + 1) : ℝ) + 1) ^ 2⌉

end

end A345727.P6609719637763088683

namespace A345727

/-- `ceil((sqrt(A037166(n+1))+1)²)` -/
def P6609719637763088683.Spec : Prop :=
  ∀ n, P6609719637763088683.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P2029655582217717438

`A037166(n+1)+A001043(n+1)`
-/

namespace A345727.P2029655582217717438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + A001043 (n + 1)

end

end A345727.P2029655582217717438

namespace A345727

/-- `A037166(n+1)+A001043(n+1)` -/
def P2029655582217717438.Spec : Prop :=
  ∀ n, P2029655582217717438.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P13167205657682124744

`A065091(n+1)+A006094(n+1)`
-/

namespace A345727.P13167205657682124744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A006094 (n + 1)

end

end A345727.P13167205657682124744

namespace A345727

/-- `A065091(n+1)+A006094(n+1)` -/
def P13167205657682124744.Spec : Prop :=
  ∀ n, P13167205657682124744.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P14323134252049340956

`A123134(n+1)+A001223(n+1)`
-/

namespace A345727.P14323134252049340956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A001223 (n + 1)

end

end A345727.P14323134252049340956

namespace A345727

/-- `A123134(n+1)+A001223(n+1)` -/
def P14323134252049340956.Spec : Prop :=
  ∀ n, P14323134252049340956.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P7531300145954063413

`A286624(n+1)+A046933(n+1)`
-/

namespace A345727.P7531300145954063413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) + A046933 (n + 1)

end

end A345727.P7531300145954063413

namespace A345727

/-- `A286624(n+1)+A046933(n+1)` -/
def P7531300145954063413.Spec : Prop :=
  ∀ n, P7531300145954063413.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P7593951121166106154

`A364411(n+1)+A037165(n+1)`
-/

namespace A345727.P7593951121166106154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1) + A037165 (n + 1)

end

end A345727.P7593951121166106154

namespace A345727

/-- `A364411(n+1)+A037165(n+1)` -/
def P7593951121166106154.Spec : Prop :=
  ∀ n, P7593951121166106154.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P3006259841616755135

`A352851(n+1)+A291463(n+1)`
-/

namespace A345727.P3006259841616755135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1) + A291463 (n + 1)

end

end A345727.P3006259841616755135

namespace A345727

/-- `A352851(n+1)+A291463(n+1)` -/
def P3006259841616755135.Spec : Prop :=
  ∀ n, P3006259841616755135.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P12603037487018739863

`A069486(n+1)-A037167(n+1)`
-/

namespace A345727.P12603037487018739863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A037167 (n + 1)

end

end A345727.P12603037487018739863

namespace A345727

/-- `A069486(n+1)-A037167(n+1)` -/
def P12603037487018739863.Spec : Prop :=
  ∀ n, P12603037487018739863.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P16290323982739007506

`A126199(n+1)-A000040(n+1)`
-/

namespace A345727.P16290323982739007506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A000040 (n + 1)

end

end A345727.P16290323982739007506

namespace A345727

/-- `A126199(n+1)-A000040(n+1)` -/
def P16290323982739007506.Spec : Prop :=
  ∀ n, P16290323982739007506.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P15666992197830871585

`A008864(n+1)*A065091(n+1)`
-/

namespace A345727.P15666992197830871585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A065091 (n + 1)

end

end A345727.P15666992197830871585

namespace A345727

/-- `A008864(n+1)*A065091(n+1)` -/
def P15666992197830871585.Spec : Prop :=
  ∀ n, P15666992197830871585.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P7250337438317043112

`A000040(n+2)*A028815(n+1)`
-/

namespace A345727.P7250337438317043112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A028815 (n + 1)

end

end A345727.P7250337438317043112

namespace A345727

/-- `A000040(n+2)*A028815(n+1)` -/
def P7250337438317043112.Spec : Prop :=
  ∀ n, P7250337438317043112.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P17479995693370314020

`A000040(n+2)*A299763(n+2)`
-/

namespace A345727.P17479995693370314020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A299763 (n + 2)

end

end A345727.P17479995693370314020

namespace A345727

/-- `A000040(n+2)*A299763(n+2)` -/
def P17479995693370314020.Spec : Prop :=
  ∀ n, P17479995693370314020.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P18302311921322301419

`A008578(n+3)+A006094(n+1)`
-/

namespace A345727.P18302311921322301419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) + A006094 (n + 1)

end

end A345727.P18302311921322301419

namespace A345727

/-- `A008578(n+3)+A006094(n+1)` -/
def P18302311921322301419.Spec : Prop :=
  ∀ n, P18302311921322301419.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P14983252585370537126

`A008578(n+3)*A008864(n+1)`
-/

namespace A345727.P14983252585370537126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) * A008864 (n + 1)

end

end A345727.P14983252585370537126

namespace A345727

/-- `A008578(n+3)*A008864(n+1)` -/
def P14983252585370537126.Spec : Prop :=
  ∀ n, P14983252585370537126.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P6949738340743188768

`A028815(n+1)*A182986(n+3)`
-/

namespace A345727.P6949738340743188768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) * A182986 (n + 3)

end

end A345727.P6949738340743188768

namespace A345727

/-- `A028815(n+1)*A182986(n+3)` -/
def P6949738340743188768.Spec : Prop :=
  ∀ n, P6949738340743188768.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P10948353862150882900

`A182986(n+3)*A299763(n+2)`
-/

namespace A345727.P10948353862150882900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 3) * A299763 (n + 2)

end

end A345727.P10948353862150882900

namespace A345727

/-- `A182986(n+3)*A299763(n+2)` -/
def P10948353862150882900.Spec : Prop :=
  ∀ n, P10948353862150882900.a n = A345727 (n + 1)

end A345727

/-! ## A345727.P17158473565675242072

`record[A000010(n+1)+2]*p?[2*n+1]`
-/

namespace A345727.P17158473565675242072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A345727.P17158473565675242072

namespace A345727

/-- `record[A000010(n+1)+2]*p?[2*n+1]` -/
def P17158473565675242072.Spec : Prop :=
  ∀ n, P17158473565675242072.a n = A345727 (n + 1)

end A345727

/-!
# A345728: Primes with an odd number of digits and 0 as the middle digit.

The programs for A345728, there is no canonical definition to state claims against.
-/

/-! ## A345728.P11249496451642388383

`p?[A001633(A051022(n)+11)]`
-/

namespace A345728.P11249496451642388383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A051022 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345728.P11249496451642388383

/-! ## A345728.P5863514905147295213

`p?[A051022(A118759(n)+11)]`
-/

namespace A345728.P5863514905147295213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A118759 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345728.P5863514905147295213

/-! ## A345728.P3464961501742602522

`A092908(n+5)%A217127((n+1)²)`
-/

namespace A345728.P3464961501742602522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092908 (n + 5)) (A217127 ((n + 1) ^ 2))

end

end A345728.P3464961501742602522

/-! ## A345728.P14933421513912544864

`p?[A173632(2*n)+A051022(2*n+1)]`
-/

namespace A345728.P14933421513912544864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173632 (2 * n) + A051022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345728.P14933421513912544864

/-! ## A345728.P2923023402725444292

`A092908(n+5)*A132350(A001274(n+1))`
-/

namespace A345728.P2923023402725444292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092908 (n + 5) * A132350 (A001274 (n + 1)).toNat

end

end A345728.P2923023402725444292

/-!
# A345730: Variation on the Inventory Sequence A342585: record the number of occurrences of previous terms with an incrementing number of given divisors until 0 is recorded, then restart the divisor count from 0. See the Comments.

The programs for A345730, there is no canonical definition to state claims against.
-/

/-! ## A345730.P15301267710642890852

`A347791(n)-A185284(A213673(n))`
-/

namespace A345730.P15301267710642890852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347791 n - A185284 (A213673 n).toNat

end

end A345730.P15301267710642890852

/-! ## A345730.P1663909394889926551

`A347791(n)-A209229(A167614(n+1)²)`
-/

namespace A345730.P1663909394889926551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347791 n - A209229 (A167614 (n + 1) ^ 2).toNat

end

end A345730.P1663909394889926551

/-! ## A345730.P8138904209811773961

`∑{e}[2^n, A347791(#)]`
-/

namespace A345730.P8138904209811773961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A347791 (Nat.factorization (f1 n) p)

end

end A345730.P8138904209811773961

/-! ## A345730.P9896929282013047495

`A347791(n)%A116430(n)`
-/

namespace A345730.P9896929282013047495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347791 n) (A116430 n)

end

end A345730.P9896929282013047495

/-! ## A345730.P17660419400572304584

`A347791(n)+val(A334266(3*n+4), 10)`
-/

namespace A345730.P17660419400572304584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347791 n + (SequenceMachineLib.valuation (A334266 (3 * n + 4)).toNat 10 : ℤ)

end

end A345730.P17660419400572304584

/-!
# A345731: Additive bases: a(n) is the least integer such that there is an n-element set of integers between 0 and a(n), the sums of pairs (of distinct elements) of which are distinct.

The programs for A345731, there is no canonical definition to state claims against.
-/

/-! ## A345731.P8017550828560364358

`A330977(A000124(n))-A160977(n+1)`
-/

namespace A345731.P8017550828560364358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (A000124 n).toNat - A160977 (n + 1)

end

end A345731.P8017550828560364358

/-! ## A345731.P13147790001523674688

`A330977(A000124(n))-A161031(n+1)`
-/

namespace A345731.P13147790001523674688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (A000124 n).toNat - A161031 (n + 1)

end

end A345731.P13147790001523674688

/-! ## A345731.P11997689585372238241

`∑[A071673(A148592(n))]`
-/

namespace A345731.P11997689585372238241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A148592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345731.P11997689585372238241

/-! ## A345731.P5769526471211844779

`∑[∑[A324026(A132964(n))]]`
-/

namespace A345731.P5769526471211844779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324026 (A132964 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345731.P5769526471211844779

/-!
# A345734: Number of planar vertically indecomposable distributive lattices with n nodes.

The programs for A345734, there is no canonical definition to state claims against.
-/

/-! ## A345734.P9897417719369880233

`floor(A245564(A000129(n))/A077168(n))`
-/

namespace A345734.P9897417719369880233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245564 (A000129 n).toNat : ℚ) / (A077168 n : ℚ)⌋

end

end A345734.P9897417719369880233

/-! ## A345734.P10201518371459006748

`xor(A035690(2*(n+2)), A079944(A001333(n)))`
-/

namespace A345734.P10201518371459006748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035690 (2 * (n + 2))) (A079944 (A001333 n).toNat)

end

end A345734.P10201518371459006748

/-!
# A345735: A prime-generating quasipolynomial: a(n) = 6*floor(n^2/4) + 17.

The programs for A345735, the canonical program `A345735.P16586976441191408792` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345735 has offset 0).

The definition of A345735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*floor(n²/4)+17` (program `A345735.P16586976441191408792`, by `A345735.P16586976441191408792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345735.P16586976441191408792

`6*floor(n²/4)+17`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A345735

/-- `6*floor(n²/4)+17` -/
def P16586976441191408792.Spec : Prop :=
  ∀ n, P16586976441191408792.a n = A345735 n

theorem P16586976441191408792.correct : P16586976441191408792.Spec := by
  intro n
  simp only [A345735]

end A345735

/-! ## A345735.P2206193248713386278

`∑[a(n-2)+6]` with `a(0)=17, a(1)=0, a(2)=6`
-/

namespace A345735.P2206193248713386278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 0, 6] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345735.P2206193248713386278

namespace A345735

/-- `∑[a(n-2)+6]` -/
def P2206193248713386278.Spec : Prop :=
  ∀ n, (P2206193248713386278.a n : ℤ) = A345735 n

end A345735

/-! ## A345735.P1462340241077554436

`or(1, A032528(n)+16)`
-/

namespace A345735.P1462340241077554436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A032528 n + 16)

end

end A345735.P1462340241077554436

namespace A345735

/-- `or(1, A032528(n)+16)` -/
def P1462340241077554436.Spec : Prop :=
  ∀ n, P1462340241077554436.a n = A345735 n

end A345735

/-! ## A345735.P16846932874553295421

`A014682(or(1, n²+10))`
-/

namespace A345735.P16846932874553295421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Nat.lor 1 (n ^ 2 + 10))

end

end A345735.P16846932874553295421

namespace A345735

/-- `A014682(or(1, n²+10))` -/
def P16846932874553295421.Spec : Prop :=
  ∀ n, P16846932874553295421.a n = A345735 n

end A345735

/-! ## A345735.P13175449950577022726

`A000027(A319127(n+1)+17)`
-/

namespace A345735.P13175449950577022726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A319127 (n + 1) + 17).toNat

end

end A345735.P13175449950577022726

namespace A345735

/-- `A000027(A319127(n+1)+17)` -/
def P13175449950577022726.Spec : Prop :=
  ∀ n, P13175449950577022726.a n = A345735 n

end A345735

/-! ## A345735.P764413488077779961

`A014682(A189836(n)-A000035(n))`
-/

namespace A345735.P764413488077779961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A189836 n - A000035 n).toNat

end

end A345735.P764413488077779961

namespace A345735

/-- `A014682(A189836(n)-A000035(n))` -/
def P764413488077779961.Spec : Prop :=
  ∀ n, P764413488077779961.a n = A345735 n

end A345735

/-! ## A345735.P7326844145605703151

`A000265(A319127(n+1)+17)`
-/

namespace A345735.P7326844145605703151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319127 (n + 1) + 17).toNat

end

end A345735.P7326844145605703151

namespace A345735

/-- `A000265(A319127(n+1)+17)` -/
def P7326844145605703151.Spec : Prop :=
  ∀ n, P7326844145605703151.a n = A345735 n

end A345735

/-! ## A345735.P17112347137474875577

`A269369(A007590(n)+8)`
-/

namespace A345735.P17112347137474875577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A007590 n + 8).toNat

end

end A345735.P17112347137474875577

namespace A345735

/-- `A269369(A007590(n)+8)` -/
def P17112347137474875577.Spec : Prop :=
  ∀ n, P17112347137474875577.a n = A345735 n

end A345735

/-! ## A345735.P1439104941014626229

`A269369(or(1, A000982(n))+7)`
-/

namespace A345735.P1439104941014626229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (Int.lor 1 (A000982 n) + 7).toNat

end

end A345735.P1439104941014626229

namespace A345735

/-- `A269369(or(1, A000982(n))+7)` -/
def P1439104941014626229.Spec : Prop :=
  ∀ n, P1439104941014626229.a n = A345735 n

end A345735

/-! ## A345735.P5508043706890523780

`A016969(∑[ceil(abs(1-n)/2)]+1)`
-/

namespace A345735.P5508043706890523780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (n : ℤ)| : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A345735.P5508043706890523780

namespace A345735

/-- `A016969(∑[ceil(abs(1-n)/2)]+1)` -/
def P5508043706890523780.Spec : Prop :=
  ∀ n, P5508043706890523780.a n = A345735 n

end A345735

/-! ## A345735.P15548135285553815832

`A016789(A007590(n)+5)`
-/

namespace A345735.P15548135285553815832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A007590 n + 5).toNat

end

end A345735.P15548135285553815832

namespace A345735

/-- `A016789(A007590(n)+5)` -/
def P15548135285553815832.Spec : Prop :=
  ∀ n, P15548135285553815832.a n = A345735 n

end A345735

/-! ## A345735.P8535676905193872644

`A180486(A007590(n)+5)`
-/

namespace A345735.P8535676905193872644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (A007590 n + 5).toNat

end

end A345735.P8535676905193872644

namespace A345735

/-- `A180486(A007590(n)+5)` -/
def P8535676905193872644.Spec : Prop :=
  ∀ n, P8535676905193872644.a n = A345735 n

end A345735

/-! ## A345735.P10974167788972144594

`A007310(A007590(n)+6)`
-/

namespace A345735.P10974167788972144594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A007590 n + 6).toNat

end

end A345735.P10974167788972144594

namespace A345735

/-- `A007310(A007590(n)+6)` -/
def P10974167788972144594.Spec : Prop :=
  ∀ n, P10974167788972144594.a n = A345735 n

end A345735

/-! ## A345735.P2549571246534284054

`A016789(A099392(n+1)+4)`
-/

namespace A345735.P2549571246534284054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A099392 (n + 1) + 4).toNat

end

end A345735.P2549571246534284054

namespace A345735

/-- `A016789(A099392(n+1)+4)` -/
def P2549571246534284054.Spec : Prop :=
  ∀ n, P2549571246534284054.a n = A345735 n

end A345735

/-! ## A345735.P10788421975263730648

`A016789(A062545(A033638(n)))`
-/

namespace A345735.P10788421975263730648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A062545 (A033638 n).toNat).toNat

end

end A345735.P10788421975263730648

namespace A345735

/-- `A016789(A062545(A033638(n)))` -/
def P10788421975263730648.Spec : Prop :=
  ∀ n, P10788421975263730648.a n = A345735 n

end A345735

/-! ## A345735.P16752902280402367477

`A168199(A114948(n))`
-/

namespace A345735.P16752902280402367477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A114948 n).toNat

end

end A345735.P16752902280402367477

namespace A345735

/-- `A168199(A114948(n))` -/
def P16752902280402367477.Spec : Prop :=
  ∀ n, P16752902280402367477.a n = A345735 n

end A345735

/-! ## A345735.P13263421368757926295

`A168236(A189836(n))`
-/

namespace A345735.P13263421368757926295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168236 (A189836 n).toNat

end

end A345735.P13263421368757926295

namespace A345735

/-- `A168236(A189836(n))` -/
def P13263421368757926295.Spec : Prop :=
  ∀ n, P13263421368757926295.a n = A345735 n

end A345735

/-! ## A345735.P1756128664672801757

`A047260(A048058(n+1)-A047260(2*(n+1)))`
-/

namespace A345735.P1756128664672801757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (A048058 (n + 1) - A047260 (2 * (n + 1))).toNat

end

end A345735.P1756128664672801757

namespace A345735

/-- `A047260(A048058(n+1)-A047260(2*(n+1)))` -/
def P1756128664672801757.Spec : Prop :=
  ∀ n, P1756128664672801757.a n = A345735 n

end A345735

/-!
# A345741: a(n) = n + (n - 1) * d(n).

The programs for A345741, the canonical program `A345741.P7854124275868211655` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345741 has offset 1).

The definition of A345741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345741.P15999940930534141387

`∑{d}[n+1, round(acot(#)+n)]+n`
-/

namespace A345741.P15999940930534141387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (d : ℝ) + (n : ℝ)) + (n : ℤ)

end

end A345741.P15999940930534141387

namespace A345741

/-- `∑{d}[n+1, round(acot(#)+n)]+n` -/
def P15999940930534141387.Spec : Prop :=
  ∀ n, P15999940930534141387.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P7854124275868211655

`∑{d}[n+1, n*ceil(2/#)]+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A345741

/-- `∑{d}[n+1, n*ceil(2/#)]+1` -/
def P7854124275868211655.Spec : Prop :=
  ∀ n, P7854124275868211655.a n = A345741 (n + 1)

theorem P7854124275868211655.correct : P7854124275868211655.Spec := by
  intro n
  simp only [A345741, Nat.add_sub_cancel]

end A345741

/-! ## A345741.P10503124531867665910

`n*(∏{e}[n+1, #+1]+1)+1`
-/

namespace A345741.P10503124531867665910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1) + 1

end

end A345741.P10503124531867665910

namespace A345741

/-- `n*(∏{e}[n+1, #+1]+1)+1` -/
def P10503124531867665910.Spec : Prop :=
  ∀ n, (P10503124531867665910.a n : ℤ) = A345741 (n + 1)

end A345741

/-! ## A345741.P427840514521791950

`n*(∑{d}[n+1, gcd(n, #)]+1)+1`
-/

namespace A345741.P427840514521791950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + 1) + 1

end

end A345741.P427840514521791950

namespace A345741

/-- `n*(∑{d}[n+1, gcd(n, #)]+1)+1` -/
def P427840514521791950.Spec : Prop :=
  ∀ n, (P427840514521791950.a n : ℤ) = A345741 (n + 1)

end A345741

/-! ## A345741.P4941655182589166335

`n*(∑{d}[n+1, ceil(acot(#))]+1)+1`
-/

namespace A345741.P4941655182589166335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + 1) + 1

end

end A345741.P4941655182589166335

namespace A345741

/-- `n*(∑{d}[n+1, ceil(acot(#))]+1)+1` -/
def P4941655182589166335.Spec : Prop :=
  ∀ n, P4941655182589166335.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P63036648540680244

`∑{d}[n+1, #-#%(n+1)+n]`
-/

namespace A345741.P63036648540680244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - ((d % (n + 1) : ℕ) : ℤ) + (n : ℤ))

end

end A345741.P63036648540680244

namespace A345741

/-- `∑{d}[n+1, #-#%(n+1)+n]` -/
def P63036648540680244.Spec : Prop :=
  ∀ n, P63036648540680244.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P16954465607630781360

`n*(∑{d}[n+1, (#*(n²+n)+1)%2]+1)+1`
-/

namespace A345741.P16954465607630781360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), (d * (n ^ 2 + n) + 1) % 2 + 1) + 1

end

end A345741.P16954465607630781360

namespace A345741

/-- `n*(∑{d}[n+1, (#*(n²+n)+1)%2]+1)+1` -/
def P16954465607630781360.Spec : Prop :=
  ∀ n, (P16954465607630781360.a n : ℤ) = A345741 (n + 1)

end A345741

/-! ## A345741.P9273371608491902679

`A363734(n+1)-1`
-/

namespace A345741.P9273371608491902679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363734 (n + 1) - 1

end

end A345741.P9273371608491902679

namespace A345741

/-- `A363734(n+1)-1` -/
def P9273371608491902679.Spec : Prop :=
  ∀ n, P9273371608491902679.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P11730168094324001007

`n*A334954(n+1)+1`
-/

namespace A345741.P11730168094324001007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A334954 (n + 1) + 1

end

end A345741.P11730168094324001007

namespace A345741

/-- `n*A334954(n+1)+1` -/
def P11730168094324001007.Spec : Prop :=
  ∀ n, P11730168094324001007.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P162035662369012751

`∑{d}[n+1, A000010(#)+n]`
-/

namespace A345741.P162035662369012751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d + (n : ℤ))

end

end A345741.P162035662369012751

namespace A345741

/-- `∑{d}[n+1, A000010(#)+n]` -/
def P162035662369012751.Spec : Prop :=
  ∀ n, P162035662369012751.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P11174214497306695299

`n+1+n*A000005(n+1)`
-/

namespace A345741.P11174214497306695299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (n : ℤ) * A000005 (n + 1)

end

end A345741.P11174214497306695299

namespace A345741

/-- `n+1+n*A000005(n+1)` -/
def P11174214497306695299.Spec : Prop :=
  ∀ n, P11174214497306695299.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P2369832663428427312

`A049820(n+1)+A038040(n+1)`
-/

namespace A345741.P2369832663428427312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A038040 (n + 1)

end

end A345741.P2369832663428427312

namespace A345741

/-- `A049820(n+1)+A038040(n+1)` -/
def P2369832663428427312.Spec : Prop :=
  ∀ n, P2369832663428427312.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P1940325526069810393

`A137319(n+1)+A094471(n+1)`
-/

namespace A345741.P1940325526069810393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) + A094471 (n + 1)

end

end A345741.P1940325526069810393

namespace A345741

/-- `A137319(n+1)+A094471(n+1)` -/
def P1940325526069810393.Spec : Prop :=
  ∀ n, P1940325526069810393.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P17164736497454256167

`A349680(n+1)+A000203(n+1)`
-/

namespace A345741.P17164736497454256167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349680 (n + 1) + A000203 (n + 1)

end

end A345741.P17164736497454256167

namespace A345741

/-- `A349680(n+1)+A000203(n+1)` -/
def P17164736497454256167.Spec : Prop :=
  ∀ n, P17164736497454256167.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P7034209073444947991

`A152211(n+1)-A163163(n+1)`
-/

namespace A345741.P7034209073444947991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A163163 (n + 1)

end

end A345741.P7034209073444947991

namespace A345741

/-- `A152211(n+1)-A163163(n+1)` -/
def P7034209073444947991.Spec : Prop :=
  ∀ n, P7034209073444947991.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P9671468486079067069

`A000203(n+1)+A094471(n+1)+A049820(n+1)`
-/

namespace A345741.P9671468486079067069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A094471 (n + 1) + A049820 (n + 1))

end

end A345741.P9671468486079067069

namespace A345741

/-- `A000203(n+1)+A094471(n+1)+A049820(n+1)` -/
def P9671468486079067069.Spec : Prop :=
  ∀ n, P9671468486079067069.a n = A345741 (n + 1)

end A345741

/-! ## A345741.P12678398228859703577

`A023443(A363734(n+1))`
-/

namespace A345741.P12678398228859703577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A363734 (n + 1)).toNat

end

end A345741.P12678398228859703577

namespace A345741

/-- `A023443(A363734(n+1))` -/
def P12678398228859703577.Spec : Prop :=
  ∀ n, P12678398228859703577.a n = A345741 (n + 1)

end A345741

/-!
# A345743: a(n) = Sum_{k=1..n} n^abs(mu(k)).

The programs for A345743, the canonical program `A345743.P11160057563823251259` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345743 has offset 1).

The definition of A345743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345743.P686996738479020740

`n*∑[char[∏{p}[n, #]-1]]+n+1`
-/

namespace A345743.P686996738479020740
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A345743.P686996738479020740

namespace A345743

/-- `n*∑[char[∏{p}[n, #]-1]]+n+1` -/
def P686996738479020740.Spec : Prop :=
  ∀ n, (P686996738479020740.a n : ℤ) = A345743 (n + 1)

end A345743

/-! ## A345743.P11160057563823251259

`n*∑[floor(1/∏{e}[n+1, #])]+n+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A345743

/-- `n*∑[floor(1/∏{e}[n+1, #])]+n+1` -/
def P11160057563823251259.Spec : Prop :=
  ∀ n, P11160057563823251259.a n = A345743 (n + 1)

theorem P11160057563823251259.correct : P11160057563823251259.Spec := by
  intro n
  simp only [A345743, Nat.add_sub_cancel]

end A345743

/-! ## A345743.P16454223082411923279

`n*∑[and(1, ∏{e}[n+1, #!])]+n+1`
-/

namespace A345743.P16454223082411923279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n + 1

end

end A345743.P16454223082411923279

namespace A345743

/-- `n*∑[and(1, ∏{e}[n+1, #!])]+n+1` -/
def P16454223082411923279.Spec : Prop :=
  ∀ n, (P16454223082411923279.a n : ℤ) = A345743 (n + 1)

end A345743

/-! ## A345743.P13756370134407354614

`n*A107079(n+2)+1`
-/

namespace A345743.P13756370134407354614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107079 (n + 2) + 1

end

end A345743.P13756370134407354614

namespace A345743

/-- `n*A107079(n+2)+1` -/
def P13756370134407354614.Spec : Prop :=
  ∀ n, P13756370134407354614.a n = A345743 (n + 1)

end A345743

/-! ## A345743.P8897284668037833741

`n*(A013928(n+2)+1)+1`
-/

namespace A345743.P8897284668037833741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A013928 (n + 2) + 1) + 1

end

end A345743.P8897284668037833741

namespace A345743

/-- `n*(A013928(n+2)+1)+1` -/
def P8897284668037833741.Spec : Prop :=
  ∀ n, P8897284668037833741.a n = A345743 (n + 1)

end A345743

/-! ## A345743.P15996509986369432433

`n*∑[A008966(n+1)]+n+1`
-/

namespace A345743.P15996509986369432433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A345743.P15996509986369432433

namespace A345743

/-- `n*∑[A008966(n+1)]+n+1` -/
def P15996509986369432433.Spec : Prop :=
  ∀ n, P15996509986369432433.a n = A345743 (n + 1)

end A345743

/-! ## A345743.P8717235024430189462

`n*(∑[abs(A008683(n+1))]+1)+1`
-/

namespace A345743.P8717235024430189462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345743.P8717235024430189462

namespace A345743

/-- `n*(∑[abs(A008683(n+1))]+1)+1` -/
def P8717235024430189462.Spec : Prop :=
  ∀ n, P8717235024430189462.a n = A345743 (n + 1)

end A345743

/-! ## A345743.P11172957252728205162

`n*(∑[char[A005117(n+1)-1]]+1)+1`
-/

namespace A345743.P11172957252728205162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A345743.P11172957252728205162

namespace A345743

/-- `n*(∑[char[A005117(n+1)-1]]+1)+1` -/
def P11172957252728205162.Spec : Prop :=
  ∀ n, (P11172957252728205162.a n : ℤ) = A345743 (n + 1)

end A345743

/-! ## A345743.P3348948271826786514

`n*∑[A008683(C(n+1, n))²]+n+1`
-/

namespace A345743.P3348948271826786514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) + 1

end

end A345743.P3348948271826786514

namespace A345743

/-- `n*∑[A008683(C(n+1, n))²]+n+1` -/
def P3348948271826786514.Spec : Prop :=
  ∀ n, P3348948271826786514.a n = A345743 (n + 1)

end A345743

/-! ## A345743.P5011095353932394234

`n*∑[∏{d}[n+1, A008683(#)²]]+n+1`
-/

namespace A345743.P5011095353932394234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A008683 d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) + 1

end

end A345743.P5011095353932394234

namespace A345743

/-- `n*∑[∏{d}[n+1, A008683(#)²]]+n+1` -/
def P5011095353932394234.Spec : Prop :=
  ∀ n, P5011095353932394234.a n = A345743 (n + 1)

end A345743

/-!
# A345744: Numbers k such that k and k+1 are products of at least 5 primes.

The programs for A345744, there is no canonical definition to state claims against.
-/

/-! ## A345744.P13035160103212215197

`∩[A046304(n+1)-1, A046304(n+1)]`
-/

namespace A345744.P13035160103212215197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345744.P13035160103212215197

/-! ## A345744.P10788619902081310013

`∩[A046304(n+1), A055456(A046304(n+1))]`
-/

namespace A345744.P10788619902081310013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A046304 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345744.P10788619902081310013

/-!
# A345745: a(n) = Sum_{k=1..n} n^(1 - mu(k)^2).

The programs for A345745, the canonical program `A345745.P14862035308275847777` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345745 has offset 1).

The definition of A345745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345745.P14862035308275847777

`n*∑[A087049(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345745

/-- `n*∑[A087049(n+1)]+1` -/
def P14862035308275847777.Spec : Prop :=
  ∀ n, P14862035308275847777.a n = A345745 (n + 1)

theorem P14862035308275847777.correct : P14862035308275847777.Spec := by
  intro n
  simp only [A345745, Nat.add_sub_cancel]

end A345745

/-! ## A345745.P5249849617419038233

`n*(A057627(n+1)+1)+1`
-/

namespace A345745.P5249849617419038233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A057627 (n + 1) + 1) + 1

end

end A345745.P5249849617419038233

namespace A345745

/-- `n*(A057627(n+1)+1)+1` -/
def P5249849617419038233.Spec : Prop :=
  ∀ n, P5249849617419038233.a n = A345745 (n + 1)

end A345745

/-! ## A345745.P436956960288703868

`(n+1)²-n*A013928(n+2)`
-/

namespace A345745.P436956960288703868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n : ℤ) * A013928 (n + 2)

end

end A345745.P436956960288703868

namespace A345745

/-- `(n+1)²-n*A013928(n+2)` -/
def P436956960288703868.Spec : Prop :=
  ∀ n, P436956960288703868.a n = A345745 (n + 1)

end A345745

/-! ## A345745.P7608758099777095160

`(n+1)*(n+2)-A345743(n+1)`
-/

namespace A345745.P7608758099777095160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A345743 (n + 1)

end

end A345745.P7608758099777095160

namespace A345745

/-- `(n+1)*(n+2)-A345743(n+1)` -/
def P7608758099777095160.Spec : Prop :=
  ∀ n, P7608758099777095160.a n = A345745 (n + 1)

end A345745

/-! ## A345745.P1189649949360000595

`(n+1)²-n*∑[abs(A008683(n+1))]`
-/

namespace A345745.P1189649949360000595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345745.P1189649949360000595

namespace A345745

/-- `(n+1)²-n*∑[abs(A008683(n+1))]` -/
def P1189649949360000595.Spec : Prop :=
  ∀ n, P1189649949360000595.a n = A345745 (n + 1)

end A345745

/-! ## A345745.P16902315171882220349

`(n+1)²+∑[A008683(n+1)²]*A001489(n)`
-/

namespace A345745.P16902315171882220349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j) * A001489 n

end

end A345745.P16902315171882220349

namespace A345745

/-- `(n+1)²+∑[A008683(n+1)²]*A001489(n)` -/
def P16902315171882220349.Spec : Prop :=
  ∀ n, P16902315171882220349.a n = A345745 (n + 1)

end A345745

/-!
# A345747: a(n) = n! * Sum_{k=0..floor(n/2)} k^(n - 2*k)/k!.

The programs for A345747, there is no canonical definition to state claims against.
-/

/-! ## A345747.P8825597124500617882

`A361570(n)/A361566(A033462(n))`
-/

namespace A345747.P8825597124500617882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361570 n : ℚ) / (A361566 (A033462 n).toNat : ℚ)

end

end A345747.P8825597124500617882

/-! ## A345747.P17376310182887451550

`A361570(n)/A361566(A361557(n))`
-/

namespace A345747.P17376310182887451550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361570 n : ℚ) / (A361566 (A361557 n).toNat : ℚ)

end

end A345747.P17376310182887451550

/-!
# A345748: a(n) is the number of distinct terms in the trajectory of n under the map k -> A001222(k)*A001414(k).

The programs for A345748, there is no canonical definition to state claims against.
-/

/-! ## A345748.P13723398310522896732

`A349825(n+1)+A272901(A096182(n+1))`
-/

namespace A345748.P13723398310522896732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349825 (n + 1) + A272901 (A096182 (n + 1)).toNat

end

end A345748.P13723398310522896732

/-! ## A345748.P9605881706649742627

`A349825(n+1)+A097325(A349808(n))`
-/

namespace A345748.P9605881706649742627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349825 (n + 1) + A097325 (A349808 n).toNat

end

end A345748.P9605881706649742627

/-! ## A345748.P8080249785410512595

`A349825(n+1)+A318306(A000043(n+1))`
-/

namespace A345748.P8080249785410512595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349825 (n + 1) + A318306 (A000043 (n + 1)).toNat

end

end A345748.P8080249785410512595

/-! ## A345748.P1714110893780708915

`A349825(n+1)+A294937(A231089(n+1))`
-/

namespace A345748.P1714110893780708915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349825 (n + 1) + A294937 (A231089 (n + 1)).toNat

end

end A345748.P1714110893780708915

/-! ## A345748.P2770354046851064600

`A349825(n+1)+A001222(A349820(n+1))`
-/

namespace A345748.P2770354046851064600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349825 (n + 1) + A001222 (A349820 (n + 1)).toNat

end

end A345748.P2770354046851064600

/-!
# A345749: E.g.f.: Product_{k>=1} 1/(1 - (exp(x) - 1)^k)^(1/k).

The programs for A345749, there is no canonical definition to state claims against.
-/

/-! ## A345749.P13995822573084439346

`ceil(A137803(A049376(n))/2)`
-/

namespace A345749.P13995822573084439346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137803 (A049376 n).toNat : ℚ) / 2⌉

end

end A345749.P13995822573084439346

/-! ## A345749.P6461235275542490709

`A262868(∑[A036074(n)+1])`
-/

namespace A345749.P6461235275542490709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036074 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345749.P6461235275542490709

/-!
# A345750: E.g.f.: Product_{k>=1} (1 + (exp(x) - 1)^k)^(1/k).

The programs for A345750, there is no canonical definition to state claims against.
-/

/-! ## A345750.P12497796160911552359

`A327017(round(∑[sqrt(n)]))`
-/

namespace A345750.P12497796160911552359
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327017 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345750.P12497796160911552359

/-! ## A345750.P9225307555172886977

`A108954(A137984(n))`
-/

namespace A345750.P9225307555172886977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A137984 n).toNat

end

end A345750.P9225307555172886977

/-!
# A345753: Euler-Fibonacci pseudoprimes: odd composites k such that F(k) == 5^((k-1)/2) == +-1 (mod k), where F(k) = A000045(k), the Fibonacci numbers.

The programs for A345753, there is no canonical definition to state claims against.
-/

/-! ## A345753.P10896885044866720095

`∩[A005845(n+1), A262052(n+1)]`
-/

namespace A345753.P10896885044866720095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345753.P10896885044866720095

/-! ## A345753.P7205976505061289881

`∩[A049062(n+1), A262052(n+1)]`
-/

namespace A345753.P7205976505061289881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345753.P7205976505061289881

/-! ## A345753.P2019133881080188092

`∩[A094394(n+1), A262052(n+1)]`
-/

namespace A345753.P2019133881080188092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345753.P2019133881080188092

/-! ## A345753.P591264109320037626

`∩[A094401(n+1), A262052(n+1)]`
-/

namespace A345753.P591264109320037626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345753.P591264109320037626

/-! ## A345753.P3068081937817204221

`∩[A005845(n+1), A375914(n+1)]`
-/

namespace A345753.P3068081937817204221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345753.P3068081937817204221

/-!
# A345754: Number of 2 X 2 matrices over Z_n whose permanent equals their determinant.

The programs for A345754, the canonical program `A345754.P6642101267170344289` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345754 has offset 1).

The definition of A345754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344372, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345754.P6642101267170344289

`(n+1)²*A344372(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A345754

/-- `(n+1)²*A344372(n+1)` -/
def P6642101267170344289.Spec : Prop :=
  ∀ n, P6642101267170344289.a n = A345754 (n + 1)

theorem P6642101267170344289.correct : P6642101267170344289.Spec := by
  intro n
  simp only [A345754, Nat.add_sub_cancel]

end A345754

/-! ## A345754.P16349382850830867027

`(2*(n+1)-A106475(n))*(n+1)²`
-/

namespace A345754.P16349382850830867027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A106475 n) * ((n + 1) ^ 2 : ℤ)

end

end A345754.P16349382850830867027

namespace A345754

/-- `(2*(n+1)-A106475(n))*(n+1)²` -/
def P16349382850830867027.Spec : Prop :=
  ∀ n, P16349382850830867027.a n = A345754 (n + 1)

end A345754

/-! ## A345754.P18386625549995566292

`(n+1)²*A344371(2*(n+1))`
-/

namespace A345754.P18386625549995566292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A344371 (2 * (n + 1))

end

end A345754.P18386625549995566292

namespace A345754

/-- `(n+1)²*A344371(2*(n+1))` -/
def P18386625549995566292.Spec : Prop :=
  ∀ n, P18386625549995566292.a n = A345754 (n + 1)

end A345754

/-! ## A345754.P14912937165537495682

`abs(A199084(2*(n+1)))*(n+1)²`
-/

namespace A345754.P14912937165537495682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199084 (2 * (n + 1))| * ((n + 1) ^ 2 : ℤ)

end

end A345754.P14912937165537495682

namespace A345754

/-- `abs(A199084(2*(n+1)))*(n+1)²` -/
def P14912937165537495682.Spec : Prop :=
  ∀ n, P14912937165537495682.a n = A345754 (n + 1)

end A345754

/-! ## A345754.P9477554065658699246

`-(n+1)²*A199084(2*n+2)`
-/

namespace A345754.P9477554065658699246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n + 1) ^ 2 : ℤ) * A199084 (2 * n + 2))

end

end A345754.P9477554065658699246

namespace A345754

/-- `-(n+1)²*A199084(2*n+2)` -/
def P9477554065658699246.Spec : Prop :=
  ∀ n, P9477554065658699246.a n = A345754 (n + 1)

end A345754

/-!
# A345755: a(n) is the number of primes p satisfying n*(log_2(n))^2 < p <= (n+1)*(log_2(n+1))^2.

The programs for A345755, there is no canonical definition to state claims against.
-/

/-! ## A345755.P4212565606810877835

`A001222(A290312(2*n+1)-A172398(3*n+4))`
-/

namespace A345755.P4212565606810877835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290312 (2 * n + 1) - A172398 (3 * n + 4)).toNat

end

end A345755.P4212565606810877835

/-! ## A345755.P3952260062682696021

`A302243(A302493(n+1))+A001222(A056239(3*n+2))`
-/

namespace A345755.P3952260062682696021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A302493 (n + 1)).toNat + A001222 (A056239 (3 * n + 2)).toNat

end

end A345755.P3952260062682696021

/-!
# A345756: E.g.f.: Product_{k>=1} 1/(1 - (exp(x) - 1)^k)^(1/k!).

The programs for A345756, there is no canonical definition to state claims against.
-/

/-! ## A345756.P18097727041708549621

`A184638(A062872(n)-A262303(n+2))`
-/

namespace A345756.P18097727041708549621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184638 (A062872 n - A262303 (n + 2)).toNat

end

end A345756.P18097727041708549621

/-!
# A345757: E.g.f.: Product_{k>=1} (1 + (exp(x) - 1)^k)^(1/k!).

The programs for A345757, there is no canonical definition to state claims against.
-/

/-! ## A345757.P12777408839623168834

`A248183(A112567(n)+A008279(n))`
-/

namespace A345757.P12777408839623168834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A112567 n + A008279 n).toNat

end

end A345757.P12777408839623168834

/-! ## A345757.P16036210996869236087

`A248183(A160232(n+1)+A112567(n))`
-/

namespace A345757.P16036210996869236087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A160232 (n + 1) + A112567 n).toNat

end

end A345757.P16036210996869236087

/-! ## A345757.P1254408599613686002

`A337501(A210540(n))+A210543(2*n+3)`
-/

namespace A345757.P1254408599613686002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337501 (A210540 n).toNat + A210543 (2 * n + 3)

end

end A345757.P1254408599613686002

/-!
# A345758: E.g.f.: Product_{k>=1} (1 - (exp(x) - 1)^k)^(1/k!).

The programs for A345758, there is no canonical definition to state claims against.
-/

/-! ## A345758.P5302759030981746460

`A391133(A277439(n+1))-n`
-/

namespace A345758.P5302759030981746460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391133 (A277439 (n + 1)).toNat - (n : ℤ)

end

end A345758.P5302759030981746460

/-!
# A345760: a(n) is the number of distinct numbers of intercalates of order n diagonal Latin squares.

The programs for A345760, there is no canonical definition to state claims against.
-/

/-! ## A345760.P3091345848454013846

`A225297(n+1)%A130760(n)`
-/

namespace A345760.P3091345848454013846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225297 (n + 1)) (A130760 n)

end

end A345760.P3091345848454013846

/-! ## A345760.P10650199541651086024

`A090735(A001497(n)*A006720(n))`
-/

namespace A345760.P10650199541651086024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A001497 n * A006720 n).toNat

end

end A345760.P10650199541651086024

/-! ## A345760.P5641164014228513107

`A131717(A077426(n+1))%A281874(n)`
-/

namespace A345760.P5641164014228513107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131717 (A077426 (n + 1)).toNat) (A281874 n)

end

end A345760.P5641164014228513107

/-! ## A345760.P5587532519376381483

`A209423(A116882(n+5))%A011782(n)`
-/

namespace A345760.P5587532519376381483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209423 (A116882 (n + 5)).toNat) (A011782 n)

end

end A345760.P5587532519376381483

/-! ## A345760.P9260242341587231266

`A086140(A000290(3*(n+1)))%A170908(n)`
-/

namespace A345760.P9260242341587231266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086140 (A000290 (3 * (n + 1))).toNat) (A170908 n)

end

end A345760.P9260242341587231266

/-!
# A345761: a(n) is the number of distinct numbers of orthogonal diagonal mates that a diagonal Latin squares of order n can have.

The programs for A345761, there is no canonical definition to state claims against.
-/

/-! ## A345761.P7516703900637119111

`or(A098884(A097360(2*(n+1))), A284093(n))`
-/

namespace A345761.P7516703900637119111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098884 (A097360 (2 * (n + 1))).toNat) (A284093 n)

end

end A345761.P7516703900637119111

/-!
# A345763: a(n) is the smallest k such that A345699(k) = n.

The programs for A345763, there is no canonical definition to state claims against.
-/

/-! ## A345763.P14186080392296578136

`A060791(∑[A130455(n)]²)`
-/

namespace A345763.P14186080392296578136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A345763.P14186080392296578136

/-!
# A345766: Numbers that are the sum of six cubes in exactly four ways.

The programs for A345766, there is no canonical definition to state claims against.
-/

/-! ## A345766.P16374890617501193356

`eq[4, A025459(n)]`
-/

namespace A345766.P16374890617501193356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345766.P16374890617501193356

/-! ## A345766.P1092333556992765041

`A345513(A098240(n+1)%Δ[A062694(n)])`
-/

namespace A345766.P1092333556992765041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345513 (Int.tmod (A098240 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A345766.P1092333556992765041

/-! ## A345766.P4646703991612110542

`A345513(A098240(n+1))%A062694(n+1)`
-/

namespace A345766.P4646703991612110542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345513 (A098240 (n + 1)).toNat) (A062694 (n + 1))

end

end A345766.P4646703991612110542

/-! ## A345766.P8854255845922162119

`A079724(A275422(n))*A345513(A098240(n+1))`
-/

namespace A345766.P8854255845922162119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079724 (A275422 n).toNat * A345513 (A098240 (n + 1)).toNat

end

end A345766.P8854255845922162119

/-! ## A345766.P7225820793750592695

`A345513(comp[A353452(3*(n+1))])`
-/

namespace A345766.P7225820793750592695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353452 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345513 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345766.P7225820793750592695

/-!
# A345767: Numbers that are the sum of six cubes in exactly five ways.

The programs for A345767, there is no canonical definition to state claims against.
-/

/-! ## A345767.P12966062984386550119

`eq[5, A025459(n)]`
-/

namespace A345767.P12966062984386550119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345767.P12966062984386550119

/-! ## A345767.P17812844973479922154

`A345514(lt[A078599(n+1), A183176(n+1)])`
-/

namespace A345767.P17812844973479922154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345514 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345767.P17812844973479922154

/-! ## A345767.P9980254344219402296

`A345514(A351714(n+1)^A040790(n))`
-/

namespace A345767.P9980254344219402296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345514 (SequenceMachineLib.roundAway ((A351714 (n + 1) : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A345767.P9980254344219402296

/-! ## A345767.P7011032268765816857

`A345514(A290830(n)*A351714(n+1))`
-/

namespace A345767.P7011032268765816857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345514 (A290830 n * A351714 (n + 1)).toNat

end

end A345767.P7011032268765816857

/-!
# A345768: Numbers that are the sum of six cubes in exactly six ways.

The programs for A345768, there is no canonical definition to state claims against.
-/

/-! ## A345768.P17961636062713286104

`record[A345515(A124010(3*n+5))]`
-/

namespace A345768.P17961636062713286104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345515 (A124010 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345768.P17961636062713286104

/-! ## A345768.P3322806606237188312

`A345515(A083047(n)%A079608(2*(n+2)))`
-/

namespace A345768.P3322806606237188312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345515 (Int.tmod (A083047 n) (A079608 (2 * (n + 2)))).toNat

end

end A345768.P3322806606237188312

/-! ## A345768.P675064830652799330

`A345515(∑[A185234(n)!])`
-/

namespace A345768.P675064830652799330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345768.P675064830652799330

/-!
# A345769: Numbers that are the sum of six cubes in exactly seven ways.

The programs for A345769, there is no canonical definition to state claims against.
-/

/-! ## A345769.P12801811013984332687

`A345516(eq[A005447(n), A012257(n)])`
-/

namespace A345769.P12801811013984332687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345516 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345769.P12801811013984332687

/-! ## A345769.P15073395463218820231

`A345516(eq[A005447(n), A040790(n)])`
-/

namespace A345769.P15073395463218820231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345516 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345769.P15073395463218820231

/-!
# A345770: Numbers that are the sum of six cubes in exactly eight ways.

The programs for A345770, there is no canonical definition to state claims against.
-/

/-! ## A345770.P1966690605522275361

`A345517(record[A333226(n+1)])`
-/

namespace A345770.P1966690605522275361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345770.P1966690605522275361

/-! ## A345770.P13126480832280048710

`record[A345517(n+1)/A294783(n)]`
-/

namespace A345770.P13126480832280048710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345517 (n + 1) : ℚ) / (A294783 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345770.P13126480832280048710

/-! ## A345770.P11061423514896072785

`A345517(A146819(n+1)+A032551(n+1))`
-/

namespace A345770.P11061423514896072785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345517 (A146819 (n + 1) + A032551 (n + 1)).toNat

end

end A345770.P11061423514896072785

/-! ## A345770.P12798429858007601189

`A345517(A146285(n+2)+A032551(n+1))`
-/

namespace A345770.P12798429858007601189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345517 (A146285 (n + 2) + A032551 (n + 1)).toNat

end

end A345770.P12798429858007601189

/-!
# A345772: Numbers that are the sum of six cubes in exactly ten ways.

The programs for A345772, there is no canonical definition to state claims against.
-/

/-! ## A345772.P14935638471683878423

`A345519(eq[1, A008615(n)])`
-/

namespace A345772.P14935638471683878423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345772.P14935638471683878423

/-! ## A345772.P12923599580419625867

`A345519(eq[1, A053267(n)])`
-/

namespace A345772.P12923599580419625867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345772.P12923599580419625867

/-!
# A345773: Numbers that are the sum of seven cubes in exactly one way.

The programs for A345773, there is no canonical definition to state claims against.
-/

/-! ## A345773.P1210543032010147511

`eq[1, A025460(n)]`
-/

namespace A345773.P1210543032010147511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345773.P1210543032010147511

/-! ## A345773.P10692756092732745954

`lt[A001064(A025460(n)+1), 1]`
-/

namespace A345773.P10692756092732745954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001064 (A025460 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345773.P10692756092732745954

/-! ## A345773.P16862596239869765958

`eq[A025450(n)+1, A025451(n)]`
-/

namespace A345773.P16862596239869765958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345773.P16862596239869765958

/-! ## A345773.P16243441478048471487

`eq[A023443(A025451(n)), A025450(n)]`
-/

namespace A345773.P16243441478048471487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025451 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345773.P16243441478048471487

/-! ## A345773.P2783466133933695905

`A000720(p?[A008578(n+1)*A025460(n)])`
-/

namespace A345773.P2783466133933695905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345773.P2783466133933695905

/-! ## A345773.P8156547848892277726

`lt[A001064(2*A025460(n)), 1]`
-/

namespace A345773.P8156547848892277726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001064 (2 * A025460 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345773.P8156547848892277726

/-! ## A345773.P1809925752750962915

`A033270(p?[A000040(n+1)*A025460(n)])`
-/

namespace A345773.P1809925752750962915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A025460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345773.P1809925752750962915

/-!
# A345774: Numbers that are the sum of seven cubes in exactly two ways.

The programs for A345774, there is no canonical definition to state claims against.
-/

/-! ## A345774.P7412398734154859246

`eq[2, A025460(n)]`
-/

namespace A345774.P7412398734154859246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345774.P7412398734154859246

/-! ## A345774.P11241062590062178739

`eq[A025450(n)+2, A025451(n)]`
-/

namespace A345774.P11241062590062178739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345774.P11241062590062178739

/-! ## A345774.P8110432164203999745

`eq[A025451(n), A030545(A025450(n))]`
-/

namespace A345774.P8110432164203999745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A025450 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345774.P8110432164203999745

/-! ## A345774.P3609237132477361121

`eq[A025459(n)+A025449(n)+2, A025451(n)]`
-/

namespace A345774.P3609237132477361121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n + A025449 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345774.P3609237132477361121

/-! ## A345774.P1273996769907355998

`lt[A001064(A025460(n)), A267870(n)]`
-/

namespace A345774.P1273996769907355998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001064 (A025460 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345774.P1273996769907355998

/-!
# A345775: Numbers that are the sum of seven cubes in exactly three ways.

The programs for A345775, there is no canonical definition to state claims against.
-/

/-! ## A345775.P11566815856791065008

`eq[3, A025460(n)]`
-/

namespace A345775.P11566815856791065008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345775.P11566815856791065008

/-!
# A345776: Numbers that are the sum of seven cubes in exactly four ways.

The programs for A345776, there is no canonical definition to state claims against.
-/

/-! ## A345776.P285785082079707174

`eq[4, A025460(n)]`
-/

namespace A345776.P285785082079707174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345776.P285785082079707174

/-! ## A345776.P14327383341243047427

`A345522(A309432(A062399(n))+n)`
-/

namespace A345776.P14327383341243047427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345522 (A309432 (A062399 n).toNat + (n : ℤ)).toNat

end

end A345776.P14327383341243047427

/-! ## A345776.P10424661726918819912

`A345522(A351870(n)+A309432(n))`
-/

namespace A345776.P10424661726918819912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345522 (A351870 n + A309432 n).toNat

end

end A345776.P10424661726918819912

/-! ## A345776.P12780876811835651947

`A345522(A309432(n)+A032551(n+1))`
-/

namespace A345776.P12780876811835651947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345522 (A309432 n + A032551 (n + 1)).toNat

end

end A345776.P12780876811835651947

/-!
# A345777: Numbers that are the sum of seven cubes in exactly five ways.

The programs for A345777, there is no canonical definition to state claims against.
-/

/-! ## A345777.P2619593419439360667

`eq[5, A025460(n)]`
-/

namespace A345777.P2619593419439360667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345777.P2619593419439360667

/-! ## A345777.P14655573364822917367

`A345523(lt[A146285(n+1), 2*n])`
-/

namespace A345777.P14655573364822917367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146285 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345523 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A345777.P14655573364822917367

/-! ## A345777.P11877090768679890785

`A345523(lt[A146285(n+1)/2, n])`
-/

namespace A345777.P11877090768679890785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146285 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345523 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A345777.P11877090768679890785

/-! ## A345777.P2324199813238993242

`A345523(lt[A146285(n+1)-n, n])`
-/

namespace A345777.P2324199813238993242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146285 (n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345523 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A345777.P2324199813238993242

/-! ## A345777.P10747887853428369720

`A345523(A269445(n)+A187829(n+1))`
-/

namespace A345777.P10747887853428369720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345523 (A269445 n + A187829 (n + 1)).toNat

end

end A345777.P10747887853428369720

/-!
# A345778: Numbers that are the sum of seven cubes in exactly six ways.

The programs for A345778, there is no canonical definition to state claims against.
-/

/-! ## A345778.P13620604688646135374

`eq[6, A025460(n)]`
-/

namespace A345778.P13620604688646135374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345778.P13620604688646135374

/-! ## A345778.P11240679493595886425

`A345524(∑[A327520(A038622(n))])`
-/

namespace A345778.P11240679493595886425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327520 (A038622 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345778.P11240679493595886425

/-! ## A345778.P15825414725175286821

`A345524(A309432(n)+A032551(n+1))`
-/

namespace A345778.P15825414725175286821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345524 (A309432 n + A032551 (n + 1)).toNat

end

end A345778.P15825414725175286821

/-! ## A345778.P9405453316040230008

`A345524(A201010(n+1)*A290830(n))`
-/

namespace A345778.P9405453316040230008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345524 (A201010 (n + 1) * A290830 n).toNat

end

end A345778.P9405453316040230008

/-!
# A345779: Numbers that are the sum of seven cubes in exactly seven ways.

The programs for A345779, there is no canonical definition to state claims against.
-/

/-! ## A345779.P6229615208133873057

`eq[7, A025460(n)]`
-/

namespace A345779.P6229615208133873057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345779.P6229615208133873057

/-! ## A345779.P10653895044054536842

`A345525(record[A034880(n+1)])`
-/

namespace A345779.P10653895044054536842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345779.P10653895044054536842

/-! ## A345779.P9782289723497939758

`A345525(comp[A244981(3*n+5)-5^n])`
-/

namespace A345779.P9782289723497939758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244981 (3 * n + 5) - (5 ^ n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345779.P9782289723497939758

/-! ## A345779.P17007827275695110596

`A345525(comp[C(A131453(n)-(n+1), 2)+n])`
-/

namespace A345779.P17007827275695110596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131453 n - (n + 1 : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A345779.P17007827275695110596

/-! ## A345779.P9995226706821534995

`A345525(∑[A221171(∑{d}[n+1, (#*(#%3)%2)²])])`
-/

namespace A345779.P9995226706821534995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (∑ d ∈ Nat.divisors (f2 n), (d * (d % 3 % 2)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345779.P9995226706821534995

/-!
# A345780: Numbers that are the sum of seven cubes in exactly eight ways.

The programs for A345780, there is no canonical definition to state claims against.
-/

/-! ## A345780.P10683406548240395101

`eq[8, A025460(n)]`
-/

namespace A345780.P10683406548240395101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345780.P10683406548240395101

/-! ## A345780.P4286819819788865658

`A345526(lt[A266506(n), n])`
-/

namespace A345780.P4286819819788865658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A345780.P4286819819788865658

/-! ## A345780.P17778187964492462907

`A345526(A276142(n+1)+A174631(n))`
-/

namespace A345780.P17778187964492462907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345526 (A276142 (n + 1) + A174631 n).toNat

end

end A345780.P17778187964492462907

/-! ## A345780.P683584668142877641

`record[A345526(A039996((n+1)*∏{p}[n+1, #]))]`
-/

namespace A345780.P683584668142877641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345526 (A039996 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345780.P683584668142877641

/-!
# A345781: Numbers that are the sum of seven cubes in exactly nine ways.

The programs for A345781, there is no canonical definition to state claims against.
-/

/-! ## A345781.P12007831357708892345

`eq[9, A025460(n)]`
-/

namespace A345781.P12007831357708892345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345781.P12007831357708892345

/-!
# A345782: Numbers that are the sum of seven cubes in exactly ten ways.

The programs for A345782, there is no canonical definition to state claims against.
-/

/-! ## A345782.P11419473254352983360

`A345506(lt[A005043(n), A078740(n+1)])`
-/

namespace A345782.P11419473254352983360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345506 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345782.P11419473254352983360

/-! ## A345782.P1676715749768073270

`A345506(lt[A000009(n), A007913(n+1)])`
-/

namespace A345782.P1676715749768073270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345506 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345782.P1676715749768073270

/-!
# A345783: Numbers that are the sum of eight cubes in exactly one way.

The programs for A345783, there is no canonical definition to state claims against.
-/

/-! ## A345783.P4472677006620448287

`eq[1, A025461(n)]`
-/

namespace A345783.P4472677006620448287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345783.P4472677006620448287

/-! ## A345783.P16330694132607799757

`lt[A091434(A025461(n)²), 1]`
-/

namespace A345783.P16330694132607799757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 (A025461 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345783.P16330694132607799757

/-! ## A345783.P2465895566063670128

`lt[A000032(A025461(n)²), 2]`
-/

namespace A345783.P2465895566063670128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025461 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345783.P2465895566063670128

/-! ## A345783.P5457593775126453426

`lt[A030399(A025461(n)+2), 1]`
-/

namespace A345783.P5457593775126453426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030399 (A025461 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345783.P5457593775126453426

/-! ## A345783.P14032786333575149439

`lt[A288663(A025461(n)+1), 2]`
-/

namespace A345783.P14032786333575149439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A025461 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345783.P14032786333575149439

/-! ## A345783.P16262854115674832317

`lt[4, A325499(A025461(n)+1)]`
-/

namespace A345783.P16262854115674832317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325499 (A025461 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345783.P16262854115674832317

/-! ## A345783.P959284572833378216

`eq[A025451(n)+1, A025452(n)]`
-/

namespace A345783.P959284572833378216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345783.P959284572833378216

/-! ## A345783.P7155349820034728231

`lt[A002942((A025461(n)+9)²), 2]`
-/

namespace A345783.P7155349820034728231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 ((A025461 n + 9) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345783.P7155349820034728231

/-! ## A345783.P14145204719722584618

`lt[(1-A025461(n))², A057427(n)]`
-/

namespace A345783.P14145204719722584618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025461 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345783.P14145204719722584618

/-! ## A345783.P2084803303191769787

`lt[(1-A025461(n))², A158388(n)]`
-/

namespace A345783.P2084803303191769787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025461 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345783.P2084803303191769787

/-! ## A345783.P8112998231715875811

`lt[A000040(A025461(n)+1)%3, 1]`
-/

namespace A345783.P8112998231715875811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A025461 n + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345783.P8112998231715875811

/-! ## A345783.P6663183636836188313

`eq[A023443(A025452(n)), A025451(n)]`
-/

namespace A345783.P6663183636836188313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025452 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345783.P6663183636836188313

/-! ## A345783.P9389615473842829972

`lt[A091434(A025461(n)), A057427(n)]`
-/

namespace A345783.P9389615473842829972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 (A025461 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345783.P9389615473842829972

/-! ## A345783.P13999198492591001929

`lt[A091434(A025461(n)), A158388(n)]`
-/

namespace A345783.P13999198492591001929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 (A025461 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345783.P13999198492591001929

/-! ## A345783.P11050304213610187386

`A028310(eq[1, A025452(n)-A025451(n)])`
-/

namespace A345783.P11050304213610187386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - A025451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345783.P11050304213610187386

/-! ## A345783.P16034741551695430331

`eq[2, A000124(A025452(n)-A025451(n))]`
-/

namespace A345783.P16034741551695430331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A025452 n - A025451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345783.P16034741551695430331

/-! ## A345783.P7291506069912256552

`A000720(p?[A008578(n+1)*A025461(n)])`
-/

namespace A345783.P7291506069912256552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345783.P7291506069912256552

/-! ## A345783.P2252196432162066406

`eq[1, A025452(n)-(A025460(n)+A025450(n))]`
-/

namespace A345783.P2252196432162066406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025460 n + A025450 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345783.P2252196432162066406

/-! ## A345783.P259262427121045622

`record[A003331(n+1)/A025461(A003331(n+1))]`
-/

namespace A345783.P259262427121045622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003331 (n + 1) : ℚ) / (A025461 (A003331 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345783.P259262427121045622

/-!
# A345784: Numbers that are the sum of eight cubes in exactly two ways.

The programs for A345784, there is no canonical definition to state claims against.
-/

/-! ## A345784.P8933723253696903740

`eq[2, A025461(n)]`
-/

namespace A345784.P8933723253696903740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345784.P8933723253696903740

/-! ## A345784.P6995348876147455527

`eq[A025451(n)+2, A025452(n)]`
-/

namespace A345784.P6995348876147455527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345784.P6995348876147455527

/-! ## A345784.P14590549299727763625

`lt[(2-A025461(n))², A057427(n)]`
-/

namespace A345784.P14590549299727763625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025461 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345784.P14590549299727763625

/-! ## A345784.P14055456891154278474

`lt[(2-A025461(n))², A158388(n)]`
-/

namespace A345784.P14055456891154278474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025461 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345784.P14055456891154278474

/-! ## A345784.P5955777750788360118

`eq[A025452(n), A030545(A025451(n))]`
-/

namespace A345784.P5955777750788360118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A025451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345784.P5955777750788360118

/-! ## A345784.P3247041162135121853

`eq[1, A280618(A025452(n)-A025451(n))]`
-/

namespace A345784.P3247041162135121853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A025452 n - A025451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345784.P3247041162135121853

/-! ## A345784.P6567473894177721952

`A028310(eq[2, A025452(n)-A025451(n)])`
-/

namespace A345784.P6567473894177721952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - A025451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345784.P6567473894177721952

/-! ## A345784.P11036802153708253242

`lt[A288663(A025461(n)²), A025461(n)²]`
-/

namespace A345784.P11036802153708253242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A025461 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345784.P11036802153708253242

/-! ## A345784.P3741263353559474932

`eq[2, A025452(n)-(A025460(n)+A025450(n))]`
-/

namespace A345784.P3741263353559474932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025460 n + A025450 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345784.P3741263353559474932

/-!
# A345785: Numbers that are the sum of eight cubes in exactly three ways.

The programs for A345785, there is no canonical definition to state claims against.
-/

/-! ## A345785.P7167298730286182840

`eq[3, A025461(n)]`
-/

namespace A345785.P7167298730286182840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345785.P7167298730286182840

/-! ## A345785.P10610761826886354213

`eq[3, A025452(n)-A025451(n)]`
-/

namespace A345785.P10610761826886354213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345785.P10610761826886354213

/-! ## A345785.P3534807255839886284

`eq[3, A025452(n)-(A025460(n)+A025450(n))]`
-/

namespace A345785.P3534807255839886284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025460 n + A025450 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345785.P3534807255839886284

/-! ## A345785.P2531197097686814633

`eq[3, A025453(n)-(A025462(n)+A025451(n))]`
-/

namespace A345785.P2531197097686814633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - (A025462 n + A025451 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345785.P2531197097686814633

/-!
# A345786: Numbers that are the sum of eight cubes in exactly four ways.

The programs for A345786, there is no canonical definition to state claims against.
-/

/-! ## A345786.P5752448197447240966

`eq[4, A025461(n)]`
-/

namespace A345786.P5752448197447240966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345786.P5752448197447240966

/-! ## A345786.P7278012752006148874

`A345534(lt[A253561(2*n+5), A357636(3*n+2)])`
-/

namespace A345786.P7278012752006148874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253561 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345534 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345786.P7278012752006148874

/-! ## A345786.P11809704497471018527

`A345534(∏{e}[A000244(n), A072226(#)])`
-/

namespace A345786.P11809704497471018527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345534 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072226 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A345786.P11809704497471018527

/-! ## A345786.P6874703554459736075

`A345534(comp[11-A002803(n)]+1)`
-/

namespace A345786.P6874703554459736075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A002803 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A345786.P6874703554459736075

/-! ## A345786.P2641780501803817936

`A345534(comp[11-A212851(n+1)]+1)`
-/

namespace A345786.P2641780501803817936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A212851 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A345786.P2641780501803817936

/-!
# A345787: Numbers that are the sum of eight cubes in exactly five ways.

The programs for A345787, there is no canonical definition to state claims against.
-/

/-! ## A345787.P1393118654489963204

`eq[5, A025461(n)]`
-/

namespace A345787.P1393118654489963204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345787.P1393118654489963204

/-! ## A345787.P16503319103002258442

`A345535(comp[A289387(3*n+1)])`
-/

namespace A345787.P16503319103002258442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289387 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345535 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345787.P16503319103002258442

/-! ## A345787.P7510744238812020908

`A345535(lt[A324198(3*(n+1)), A038627(2*(n+2))])`
-/

namespace A345787.P7510744238812020908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038627 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345535 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345787.P7510744238812020908

/-! ## A345787.P2492787768517107101

`A345535(A319630(n+1)%A099189(n))`
-/

namespace A345787.P2492787768517107101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345535 (Int.tmod (A319630 (n + 1)) (A099189 n)).toNat

end

end A345787.P2492787768517107101

/-! ## A345787.P9134041967796550069

`A345535(A098767(n+1))%A345837(A062399(n+1))`
-/

namespace A345787.P9134041967796550069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345535 (A098767 (n + 1)).toNat) (A345837 (A062399 (n + 1)).toNat)

end

end A345787.P9134041967796550069

/-!
# A345788: Numbers that are the sum of eight cubes in exactly six ways.

The programs for A345788, there is no canonical definition to state claims against.
-/

/-! ## A345788.P4178810413301181920

`eq[6, A025461(n)]`
-/

namespace A345788.P4178810413301181920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345788.P4178810413301181920

/-! ## A345788.P6445228388750899025

`A345536(n+1)+A184943(A058343(n))`
-/

namespace A345788.P6445228388750899025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345536 (n + 1) + A184943 (A058343 n).toNat

end

end A345788.P6445228388750899025

/-!
# A345789: Numbers that are the sum of eight cubes in exactly seven ways.

The programs for A345789, there is no canonical definition to state claims against.
-/

/-! ## A345789.P6340894709032222704

`eq[7, A025461(n)]`
-/

namespace A345789.P6340894709032222704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345789.P6340894709032222704

/-! ## A345789.P13488426008627726647

`A345537(n+1)+A238660(A082582(n))`
-/

namespace A345789.P13488426008627726647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345537 (n + 1) + A238660 (A082582 n).toNat

end

end A345789.P13488426008627726647

/-! ## A345789.P11388010338539753553

`A368094(A139398(n))+A345537(n+1)`
-/

namespace A345789.P11388010338539753553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 (A139398 n).toNat + A345537 (n + 1)

end

end A345789.P11388010338539753553

/-!
# A345790: Numbers that are the sum of eight cubes in exactly eight ways.

The programs for A345790, there is no canonical definition to state claims against.
-/

/-! ## A345790.P1851313003042198979

`eq[8, A025461(n)]`
-/

namespace A345790.P1851313003042198979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345790.P1851313003042198979

/-! ## A345790.P13659190960358806196

`A345538(lt[A354174(n+1), A091049(n)])`
-/

namespace A345790.P13659190960358806196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345538 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345790.P13659190960358806196

/-! ## A345790.P7461054085004902926

`A345538(lt[A354174(n+1), A155608(n)])`
-/

namespace A345790.P7461054085004902926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345538 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345790.P7461054085004902926

/-!
# A345791: Numbers that are the sum of eight cubes in exactly nine ways.

The programs for A345791, there is no canonical definition to state claims against.
-/

/-! ## A345791.P17807494116924156808

`eq[9, A025461(n)]`
-/

namespace A345791.P17807494116924156808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345791.P17807494116924156808

/-! ## A345791.P1697486207852160156

`A345539(lt[A082614(n), A050504(3*n+2)])`
-/

namespace A345791.P1697486207852160156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345539 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345791.P1697486207852160156

/-! ## A345791.P15811766796358662037

`A345539(∑[A108998(n)!])`
-/

namespace A345791.P15811766796358662037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345791.P15811766796358662037

/-!
# A345792: Numbers that are the sum of eight cubes in exactly ten ways.

The programs for A345792, there is no canonical definition to state claims against.
-/

/-! ## A345792.P13404377042672147706

`eq[10, A025461(n)]`
-/

namespace A345792.P13404377042672147706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345792.P13404377042672147706

/-! ## A345792.P4964651699674522887

`A345540(lt[A256179(n+1), A213345(n+3)])`
-/

namespace A345792.P4964651699674522887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213345 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345540 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345792.P4964651699674522887

/-! ## A345792.P7591768238948853871

`A345540(lt[A050414(n+3), A285575(3*(n+1))])`
-/

namespace A345792.P7591768238948853871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050414 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285575 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345540 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345792.P7591768238948853871

/-!
# A345793: Numbers that are the sum of nine cubes in exactly one way.

The programs for A345793, there is no canonical definition to state claims against.
-/

/-! ## A345793.P12049050872153487421

`eq[1, A025462(n)]`
-/

namespace A345793.P12049050872153487421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345793.P12049050872153487421

/-! ## A345793.P5961380795423521587

`lt[A091434(A025462(n)²), 1]`
-/

namespace A345793.P5961380795423521587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 (A025462 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P5961380795423521587

/-! ## A345793.P9173021282695180369

`lt[A188048(A025462(n)²), 1]`
-/

namespace A345793.P9173021282695180369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A025462 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P9173021282695180369

/-! ## A345793.P7061400765660440579

`lt[A331924(A025462(n)²), 1]`
-/

namespace A345793.P7061400765660440579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331924 (A025462 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P7061400765660440579

/-! ## A345793.P6656063486225526811

`lt[A000032(A025462(n)²), 2]`
-/

namespace A345793.P6656063486225526811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025462 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P6656063486225526811

/-! ## A345793.P4551995292188508013

`lt[A186035(A025462(n)+1), 1]`
-/

namespace A345793.P4551995292188508013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 (A025462 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P4551995292188508013

/-! ## A345793.P12916116574448970309

`lt[A284998(A025462(n)+1), 1]`
-/

namespace A345793.P12916116574448970309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284998 (A025462 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P12916116574448970309

/-! ## A345793.P4712811901488048031

`lt[1, A107499(A025462(n)+2)]`
-/

namespace A345793.P4712811901488048031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 (A025462 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345793.P4712811901488048031

/-! ## A345793.P2421145940074071031

`lt[A186035(2*A025462(n)), 1]`
-/

namespace A345793.P2421145940074071031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 (2 * A025462 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P2421145940074071031

/-! ## A345793.P7809061663740384655

`eq[A025452(n)+1, A025453(n)]`
-/

namespace A345793.P7809061663740384655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345793.P7809061663740384655

/-! ## A345793.P4637557078510220517

`lt[abs(A263848(A025462(n)+3)), 1]`
-/

namespace A345793.P4637557078510220517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263848 (A025462 n + 3).toNat|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P4637557078510220517

/-! ## A345793.P7774909751416380401

`lt[A002942((A025462(n)+9)²), 10]`
-/

namespace A345793.P7774909751416380401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 ((A025462 n + 9) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P7774909751416380401

/-! ## A345793.P12266358802746487670

`lt[(A025462(n)-A054977(n))², 1]`
-/

namespace A345793.P12266358802746487670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025462 n - A054977 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P12266358802746487670

/-! ## A345793.P4425583205792471016

`lt[(1-A025462(n))², A057427(n)]`
-/

namespace A345793.P4425583205792471016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025462 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345793.P4425583205792471016

/-! ## A345793.P16583583809179824827

`lt[(1-A025462(n))², A158388(n)]`
-/

namespace A345793.P16583583809179824827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025462 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345793.P16583583809179824827

/-! ## A345793.P8674115131849277002

`lt[A000040(A025462(n)+1)%3, 1]`
-/

namespace A345793.P8674115131849277002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A025462 n + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A345793.P8674115131849277002

/-! ## A345793.P11566402256983323023

`eq[A023443(A025453(n)), A025452(n)]`
-/

namespace A345793.P11566402256983323023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025453 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345793.P11566402256983323023

/-! ## A345793.P5323147808338114549

`lt[A000007(n), A025464(A025462(n))]`
-/

namespace A345793.P5323147808338114549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A025462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345793.P5323147808338114549

/-! ## A345793.P15936402768742533598

`lt[A000038(n), A025464(A025462(n))]`
-/

namespace A345793.P15936402768742533598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A025462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345793.P15936402768742533598

/-!
# A345794: Numbers that are the sum of nine cubes in exactly two ways.

The programs for A345794, there is no canonical definition to state claims against.
-/

/-! ## A345794.P7606210810606902320

`eq[2, A025462(n)]`
-/

namespace A345794.P7606210810606902320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345794.P7606210810606902320

/-! ## A345794.P433692218557533874

`lt[1, A107499(A025462(n)+1)]`
-/

namespace A345794.P433692218557533874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 (A025462 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345794.P433692218557533874

/-! ## A345794.P15288113498347467148

`eq[A025452(n)+2, A025453(n)]`
-/

namespace A345794.P15288113498347467148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345794.P15288113498347467148

/-! ## A345794.P10023552654372656930

`lt[(2-A025462(n))², A054977(n)]`
-/

namespace A345794.P10023552654372656930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025462 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P10023552654372656930

/-! ## A345794.P14855677142403277880

`lt[(2-A025462(n))², A057427(n)]`
-/

namespace A345794.P14855677142403277880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025462 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P14855677142403277880

/-! ## A345794.P15367442663381489662

`lt[(2-A025462(n))², A158388(n)]`
-/

namespace A345794.P15367442663381489662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025462 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P15367442663381489662

/-! ## A345794.P11435724603379039794

`eq[A025453(n), A030545(A025452(n))]`
-/

namespace A345794.P11435724603379039794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A025452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345794.P11435724603379039794

/-! ## A345794.P7831506405943192290

`lt[A186035(A025462(n)), A000007(n)]`
-/

namespace A345794.P7831506405943192290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 (A025462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P7831506405943192290

/-! ## A345794.P16719189175461539898

`lt[A186035(A025462(n)), A057427(n)]`
-/

namespace A345794.P16719189175461539898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 (A025462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P16719189175461539898

/-! ## A345794.P4719356524376770734

`lt[A186035(A025462(n)), A158388(n)]`
-/

namespace A345794.P4719356524376770734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186035 (A025462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P4719356524376770734

/-! ## A345794.P16972123222036689498

`lt[A188048(A025462(n)+1), A025462(n)]`
-/

namespace A345794.P16972123222036689498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A025462 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345794.P16972123222036689498

/-!
# A345795: Numbers that are the sum of nine cubes in exactly three ways.

The programs for A345795, there is no canonical definition to state claims against.
-/

/-! ## A345795.P13626039169994253559

`eq[3, A025462(n)]`
-/

namespace A345795.P13626039169994253559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345795.P13626039169994253559

/-! ## A345795.P3207549040734321065

`lt[A054977(n), A107499(A025462(n))]`
-/

namespace A345795.P3207549040734321065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 (A025462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345795.P3207549040734321065

/-!
# A345796: Numbers that are the sum of nine cubes in exactly four ways.

The programs for A345796, there is no canonical definition to state claims against.
-/

/-! ## A345796.P8864191347299393912

`eq[4, A025462(n)]`
-/

namespace A345796.P8864191347299393912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345796.P8864191347299393912

/-! ## A345796.P7632682771743959947

`A345543(n+1)+A000999(A203338(n+1))`
-/

namespace A345796.P7632682771743959947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345543 (n + 1) + A000999 (A203338 (n + 1)).toNat

end

end A345796.P7632682771743959947

/-!
# A345797: Numbers that are the sum of nine cubes in exactly five ways.

The programs for A345797, there is no canonical definition to state claims against.
-/

/-! ## A345797.P8027863577373994129

`eq[5, A025462(n)]`
-/

namespace A345797.P8027863577373994129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345797.P8027863577373994129

/-! ## A345797.P11743500764542513700

`A345544(lt[A124753(n), A019554(n+1)²])`
-/

namespace A345797.P11743500764542513700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345797.P11743500764542513700

/-! ## A345797.P11510737663521846694

`record[A345544(A124010(3*n+2))]`
-/

namespace A345797.P11510737663521846694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345544 (A124010 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345797.P11510737663521846694

/-! ## A345797.P14238975066802880329

`A345544(A033948(n+1)%A004023(n+3))`
-/

namespace A345797.P14238975066802880329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345544 (Int.tmod (A033948 (n + 1)) (A004023 (n + 3))).toNat

end

end A345797.P14238975066802880329

/-! ## A345797.P5002448128518522535

`A345544(A033948(n+1))%A247830(2*n+3)`
-/

namespace A345797.P5002448128518522535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345544 (A033948 (n + 1)).toNat) (A247830 (2 * n + 3))

end

end A345797.P5002448128518522535

/-!
# A345798: Numbers that are the sum of nine cubes in exactly six ways.

The programs for A345798, there is no canonical definition to state claims against.
-/

/-! ## A345798.P9609061260467613173

`eq[6, A025462(n)]`
-/

namespace A345798.P9609061260467613173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345798.P9609061260467613173

/-!
# A345799: Numbers that are the sum of nine cubes in exactly seven ways.

The programs for A345799, there is no canonical definition to state claims against.
-/

/-! ## A345799.P3049790989638841504

`eq[7, A025462(n)]`
-/

namespace A345799.P3049790989638841504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345799.P3049790989638841504

/-! ## A345799.P16341191953558577113

`A345546(A317710(n+1)%A054905(n+2))`
-/

namespace A345799.P16341191953558577113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345546 (Int.tmod (A317710 (n + 1)) (A054905 (n + 2))).toNat

end

end A345799.P16341191953558577113

/-! ## A345799.P1405614850982992753

`A345546(∩[A072774(n+1), A351374(n+1)])`
-/

namespace A345799.P1405614850982992753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345546 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A345799.P1405614850982992753

/-! ## A345799.P8088610431108668146

`A345546(comp[12*n]%A050248(n+1))`
-/

namespace A345799.P8088610431108668146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345546 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A050248 (n + 1))).toNat

end

end A345799.P8088610431108668146

/-! ## A345799.P13795534959855034491

`A345546(∑[A137844(A185376(n+1))])`
-/

namespace A345799.P13795534959855034491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137844 (A185376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345546 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345799.P13795534959855034491

