import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A206701: The number of words of length n created with the letters a,b,c with at least as many a's as b's and at least as many b's as c's and no adjacent letters forming the pattern aba and no subwords (any nonadjacent subsequence of letters) of the form cbc.

The programs for A206701, there is no canonical definition to state claims against.
-/

/-! ## A206701.P17448699551284331075

`∑[A191532(A191524(2*n))]`
-/

namespace A206701.P17448699551284331075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 (A191524 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206701.P17448699551284331075

/-! ## A206701.P4409977793362084634

`A153001(A317097(n+1))-6`
-/

namespace A206701.P4409977793362084634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153001 (A317097 (n + 1)).toNat - 6

end

end A206701.P4409977793362084634

/-! ## A206701.P14837804731109634314

`A066873(n+1)+A000120(A025748(n))`
-/

namespace A206701.P14837804731109634314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066873 (n + 1) + A000120 (A025748 n).toNat

end

end A206701.P14837804731109634314

/-!
# A206702: The number of subsets X of Zn such that for all u, v in X, u+v is not in X.

The programs for A206702, there is no canonical definition to state claims against.
-/

/-! ## A206702.P11140464778331829931

`A055178(A036682(n))`
-/

namespace A206702.P11140464778331829931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055178 (A036682 n).toNat

end

end A206702.P11140464778331829931

/-! ## A206702.P17063905640023971550

`∑[A226378(A220699(n)²)]`
-/

namespace A206702.P17063905640023971550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A220699 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206702.P17063905640023971550

/-! ## A206702.P1862970796361639116

`record[A322528(abs(A298485(n)))]`
-/

namespace A206702.P1862970796361639116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322528 |A298485 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206702.P1862970796361639116

/-! ## A206702.P17581703600172996650

`∑[A322373(2*A047023(n+1))]`
-/

namespace A206702.P17581703600172996650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322373 (2 * A047023 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206702.P17581703600172996650

/-!
# A206703: Triangular array read by rows. T(n,k) is the number of partial permutations (injective partial functions) of {1,2,...,n} that have exactly k elements in a cycle. The k elements are not necessarily in the same cycle. A fixed point is considered to be in a cycle.

The programs for A206703, the canonical program `A206703.P5177746352387235024` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206703 has offset 0).

The definition of A206703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206703.P4132735351581210901

`A129652(n)*A233543(n)`
-/

namespace A206703.P4132735351581210901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n * A233543 n

end

end A206703.P4132735351581210901

namespace A206703

/-- `A129652(n)*A233543(n)` -/
def P4132735351581210901.Spec : Prop :=
  ∀ n, P4132735351581210901.a n = A206703 n

end A206703

/-! ## A206703.P3151123689721828877

`A002262(n)!*A129652(n)`
-/

namespace A206703.P3151123689721828877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A129652 n

end

end A206703.P3151123689721828877

namespace A206703

/-- `A002262(n)!*A129652(n)` -/
def P3151123689721828877.Spec : Prop :=
  ∀ n, P3151123689721828877.a n = A206703 n

end A206703

/-! ## A206703.P5177746352387235024

`A000262(A025581(n))*A008279(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206703

/-- `A000262(A025581(n))*A008279(n)` -/
def P5177746352387235024.Spec : Prop :=
  ∀ n, P5177746352387235024.a n = A206703 n

theorem P5177746352387235024.correct : P5177746352387235024.Spec := by
  intro n
  simp only [A206703]

end A206703

/-! ## A206703.P10575191909696621572

`A021009(A112367(n))*A129652(n)`
-/

namespace A206703.P10575191909696621572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A129652 n

end

end A206703.P10575191909696621572

namespace A206703

/-- `A021009(A112367(n))*A129652(n)` -/
def P10575191909696621572.Spec : Prop :=
  ∀ n, P10575191909696621572.a n = A206703 n

end A206703

/-! ## A206703.P2849564397949644118

`A008279(n)/A007318(n)*A129652(n)`
-/

namespace A206703.P2849564397949644118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A129652 n : ℚ)

end

end A206703.P2849564397949644118

namespace A206703

/-- `A008279(n)/A007318(n)*A129652(n)` -/
def P2849564397949644118.Spec : Prop :=
  ∀ n, P2849564397949644118.a n = (A206703 n : ℚ)

end A206703

/-! ## A206703.P11348903090689525145

`A000262(A025581(n))*A094587(A061579(n))`
-/

namespace A206703.P11348903090689525145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A025581 n).toNat * A094587 (A061579 n).toNat

end

end A206703.P11348903090689525145

namespace A206703

/-- `A000262(A025581(n))*A094587(A061579(n))` -/
def P11348903090689525145.Spec : Prop :=
  ∀ n, P11348903090689525145.a n = A206703 n

end A206703

/-!
# A206704: Number of Hadamard matrices of order 4n that are equivalent to their transpose.

The programs for A206704, there is no canonical definition to state claims against.
-/

/-! ## A206704.P7685001926748761544

`2*A096201(n+1)-A007299(n+1)`
-/

namespace A206704.P7685001926748761544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096201 (n + 1) - A007299 (n + 1)

end

end A206704.P7685001926748761544

/-! ## A206704.P14924428385420864144

`A206705(4*(n+1))`
-/

namespace A206704.P14924428385420864144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206705 (4 * (n + 1))

end

end A206704.P14924428385420864144

/-! ## A206704.P18394177859180805276

`filter[A206705(n+3), A011558(#)]`
-/

namespace A206704.P18394177859180805276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206705 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A206704.P18394177859180805276

/-! ## A206704.P9235581387655575677

`filter[A206705(n+3), A022932(#)]`
-/

namespace A206704.P9235581387655575677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206705 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A206704.P9235581387655575677

/-!
# A206705: Number of Hadamard matrices of order n that are equivalent to their transpose.

The programs for A206705, there is no canonical definition to state claims against.
-/

/-! ## A206705.P8991420850380142745

`A007090(A000120(A182492(n)²))`
-/

namespace A206705.P8991420850380142745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A000120 (A182492 n ^ 2).toNat).toNat

end

end A206705.P8991420850380142745

/-! ## A206705.P12319938706080582889

`A000120(A182492(n)²)*A127836(n)`
-/

namespace A206705.P12319938706080582889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A182492 n ^ 2).toNat * A127836 n

end

end A206705.P12319938706080582889

/-! ## A206705.P4004855341616772097

`A004197(n)!*A000120(A182492(n)²)`
-/

namespace A206705.P4004855341616772097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A000120 (A182492 n ^ 2).toNat

end

end A206705.P4004855341616772097

/-! ## A206705.P13763407404185995012

`A007318(A008481(n+1))*A000120(A182492(n)²)`
-/

namespace A206705.P13763407404185995012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A008481 (n + 1)).toNat * A000120 (A182492 n ^ 2).toNat

end

end A206705.P13763407404185995012

/-! ## A206705.P14313403109259496382

`A007318(A004736(n+1)-1)*A000120(A182492(n)²)`
-/

namespace A206705.P14313403109259496382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004736 (n + 1) - 1).toNat * A000120 (A182492 n ^ 2).toNat

end

end A206705.P14313403109259496382

/-!
# A206706: Triangle read by rows, T(n,k) n>=0, 0<=k<=n; T(0,0) = -1 and for n > 0 T(n,k) = moebius(n,k+1) - moebius(n,k) where moebius(n,k) = mu(floor(n/k)) if k<>0 and k divides n, 0 otherwise; mu=A008683.

The programs for A206706, there is no canonical definition to state claims against.
-/

/-! ## A206706.P16769653170158620599

`Δ[A363914(n)]`
-/

namespace A206706.P16769653170158620599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206706.P16769653170158620599

/-! ## A206706.P13432339977696545388

`A363914(n+1)-A363914(n)`
-/

namespace A206706.P13432339977696545388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363914 (n + 1) - A363914 n

end

end A206706.P13432339977696545388

/-! ## A206706.P16599760676324696191

`Δ[A147985(n+1)%A083952(A255225(n+1))]`
-/

namespace A206706.P16599760676324696191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147985 (n + 1)) (A083952 (A255225 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206706.P16599760676324696191

/-! ## A206706.P8892600875886288168

`Δ[-A114116(A143395(n))]`
-/

namespace A206706.P8892600875886288168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114116 (A143395 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206706.P8892600875886288168

/-! ## A206706.P4995880803994097689

`A014027(A213975(n+1))-A038498(n+1)`
-/

namespace A206706.P4995880803994097689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 (A213975 (n + 1)).toNat - A038498 (n + 1)

end

end A206706.P4995880803994097689

/-!
# A206708: Numbers k such that sigma(k) = sigma(sigma(k)-k).

The programs for A206708, there is no canonical definition to state claims against.
-/

/-! ## A206708.P4991663402911716148

`filter[A259307(n+2), A168185(#)]`
-/

namespace A206708.P4991663402911716148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259307 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A206708.P4991663402911716148

/-! ## A206708.P3121998447743012224

`∩[A259307(n+1), A347770(n+1)]`
-/

namespace A206708.P3121998447743012224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206708.P3121998447743012224

/-! ## A206708.P17799840056800915092

`∪[A347770(n+1)%A003416(3*(n+1)), A063990(n+5)]`
-/

namespace A206708.P17799840056800915092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347770 (n + 1)) (A003416 (3 * (n + 1)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206708.P17799840056800915092

/-! ## A206708.P13988054680847625479

`A347770(A043320(n+1))`
-/

namespace A206708.P13988054680847625479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347770 (A043320 (n + 1)).toNat

end

end A206708.P13988054680847625479

/-! ## A206708.P11296135478221051427

`A347770(A044917(n+1))`
-/

namespace A206708.P11296135478221051427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347770 (A044917 (n + 1)).toNat

end

end A206708.P11296135478221051427

/-!
# A206709: Number of primes of the form b^2 + 1 for b <= 10^n.

The programs for A206709, there is no canonical definition to state claims against.
-/

/-! ## A206709.P17541142085951146349

`A071868(A086067(n))`
-/

namespace A206709.P17541142085951146349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071868 (A086067 n).toNat

end

end A206709.P17541142085951146349

/-!
# A206710: This irregular table contains indices j, k, l,... in each row such that the values Phi(j,-m) < Phi(k,-m)< Phi(l,-m)< ... of cyclotomic polynomials Phi(.,.) are sorted given any constant integer argument m >= 2.

The programs for A206710, there is no canonical definition to state claims against.
-/

/-! ## A206710.P3603700382806460469

`A175502(lt[A032020(n), A175485(n+1)])`
-/

namespace A206710.P3603700382806460469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175502 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206710.P3603700382806460469

/-!
# A206711: 

The programs for A206711, there is no canonical definition to state claims against.
-/

/-! ## A206711.P13305972615136701426

`A206712(4*(n+1))`
-/

namespace A206711.P13305972615136701426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206712 (4 * (n + 1))

end

end A206711.P13305972615136701426

/-! ## A206711.P4944646356079549968

`record[A206712(A018252(n+2))]`
-/

namespace A206711.P4944646356079549968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206712 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206711.P4944646356079549968

/-!
# A206713: Number of solutions (n,k) of s(k)=s(n) (mod n), where 1<=k

The programs for A206713, there is no canonical definition to state claims against.
-/

/-! ## A206713.P16181262332191922067

`A194711(2*(n+2))%A070939(n)`
-/

namespace A206713.P16181262332191922067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194711 (2 * (n + 2))) (A070939 n)

end

end A206713.P16181262332191922067

/-! ## A206713.P17511792707286641401

`A194711(2*n+4)%A067731(n+3)`
-/

namespace A206713.P17511792707286641401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194711 (2 * n + 4)) (A067731 (n + 3))

end

end A206713.P17511792707286641401

/-! ## A206713.P5107424036171054186

`A091981(A033716(Δ[A064497(n+1)]))`
-/

namespace A206713.P5107424036171054186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091981 (A033716 (f1 (n + 1) - f1 n).toNat).toNat

end

end A206713.P5107424036171054186

/-! ## A206713.P7376987538059083448

`A004442(A029988(n+1))%A046921(n)`
-/

namespace A206713.P7376987538059083448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A029988 (n + 1)).toNat) (A046921 n)

end

end A206713.P7376987538059083448

/-!
# A206714: Number of solutions (n,k) of s(k)=s(n) (mod n), where 1<=k

The programs for A206714, there is no canonical definition to state claims against.
-/

/-! ## A206714.P6954065544430236320

`A023645(∑[gcd(n, A000040(2^n)%4)])`
-/

namespace A206714.P6954065544430236320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (Int.tmod (A000040 (2 ^ n)) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206714.P6954065544430236320

/-! ## A206714.P4134796444605779822

`A048896(n)-A186719(A351874(n))`
-/

namespace A206714.P4134796444605779822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n - A186719 (A351874 n).toNat

end

end A206714.P4134796444605779822

/-! ## A206714.P15545480435508542299

`A001222(A296417(n+1)%A005384(n+1))`
-/

namespace A206714.P15545480435508542299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A296417 (n + 1)) (A005384 (n + 1))).toNat

end

end A206714.P15545480435508542299

/-! ## A206714.P18190116179902468779

`A031346(A238479(3*(n+1)))+A010051(n+1)`
-/

namespace A206714.P18190116179902468779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A238479 (3 * (n + 1))).toNat + A010051 (n + 1)

end

end A206714.P18190116179902468779

/-! ## A206714.P16160062458379743641

`A140959(n+1)²%7`
-/

namespace A206714.P16160062458379743641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140959 (n + 1) ^ 2) 7

end

end A206714.P16160062458379743641

/-!
# A206715: Numbers matched to polynomials divisible by x^2+1.

The programs for A206715, there is no canonical definition to state claims against.
-/

/-! ## A206715.P2165559371463583658

`A131853(n+2)`
-/

namespace A206715.P2165559371463583658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131853 (n + 2)

end

end A206715.P2165559371463583658

/-! ## A206715.P9239519308156553016

`5*A206716(n+1)`
-/

namespace A206715.P9239519308156553016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A206716 (n + 1)

end

end A206715.P9239519308156553016

/-! ## A206715.P14430740690467737718

`lt[n*A330714(n), n]`
-/

namespace A206715.P14430740690467737718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A330714 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A206715.P14430740690467737718

/-! ## A206715.P14767377929093784470

`lt[A330714(n+1), 1]+1`
-/

namespace A206715.P14767377929093784470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206715.P14767377929093784470

/-! ## A206715.P11063543006221232397

`∩[5*n, A131854(n+2)]`
-/

namespace A206715.P11063543006221232397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131854 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206715.P11063543006221232397

/-! ## A206715.P9221762332398157187

`∩[A131855(n+1), 5*(n+1)]`
-/

namespace A206715.P9221762332398157187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131855 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A206715.P9221762332398157187

/-! ## A206715.P7069510841372684655

`5*eq[floor(acot(n)), A131851(5*n)]`
-/

namespace A206715.P7069510841372684655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206715.P7069510841372684655

/-! ## A206715.P4199581686309266095

`5*eq[floor(acot(n)), A131852(5*n)]`
-/

namespace A206715.P4199581686309266095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206715.P4199581686309266095

/-! ## A206715.P13574237041267012137

`5*eq[floor(acot(n)), A330714(5*n)]`
-/

namespace A206715.P13574237041267012137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206715.P13574237041267012137

/-! ## A206715.P5205223990428562571

`5*eq[C(2, n+2), A131851(10*n)]`
-/

namespace A206715.P5205223990428562571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206715.P5205223990428562571

/-!
# A206716: (1/5)A206715.

The programs for A206716, there is no canonical definition to state claims against.
-/

/-! ## A206716.P1407859845400638173

`A131853(n+2)/5`
-/

namespace A206716.P1407859845400638173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131853 (n + 2) : ℚ) / 5

end

end A206716.P1407859845400638173

/-! ## A206716.P17472818640102379248

`eq[floor(acot(n)), A131851(5*n)]`
-/

namespace A206716.P17472818640102379248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206716.P17472818640102379248

/-! ## A206716.P3500872831767863843

`eq[floor(acot(n)), A131852(5*n)]`
-/

namespace A206716.P3500872831767863843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206716.P3500872831767863843

/-! ## A206716.P16301628422160617734

`eq[floor(acot(n)), A330714(5*n)]`
-/

namespace A206716.P16301628422160617734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206716.P16301628422160617734

/-! ## A206716.P6074474116095053481

`eq[floor(acot(n)), A355487(10*n)]`
-/

namespace A206716.P6074474116095053481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355487 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206716.P6074474116095053481

/-! ## A206716.P16094141209137340977

`eq[C(2, n+2), A131851(10*n)]`
-/

namespace A206716.P16094141209137340977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206716.P16094141209137340977

/-! ## A206716.P4305958601678351270

`A002266(A131853(n+2))`
-/

namespace A206716.P4305958601678351270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A131853 (n + 2)).toNat

end

end A206716.P4305958601678351270

/-! ## A206716.P16886790253436184167

`eq[0, A131851(A008706(n))]`
-/

namespace A206716.P16886790253436184167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206716.P16886790253436184167

/-! ## A206716.P14795699730685181311

`eq[A000007(n), A131852(5*n)]`
-/

namespace A206716.P14795699730685181311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206716.P14795699730685181311

/-! ## A206716.P9037885444058097386

`eq[A000038(n), A131851(5*n)]`
-/

namespace A206716.P9037885444058097386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206716.P9037885444058097386

/-!
# A206717: Numbers matched to polynomials divisible by x^2+x+1.

The programs for A206717, there is no canonical definition to state claims against.
-/

/-! ## A206717.P1229512162734819387

`7*A206718(n+1)`
-/

namespace A206717.P1229512162734819387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A206718 (n + 1)

end

end A206717.P1229512162734819387

/-! ## A206717.P565716602593441326

`A008589(A206718(n+1))`
-/

namespace A206717.P565716602593441326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A206718 (n + 1)).toNat

end

end A206717.P565716602593441326

/-! ## A206717.P7028562818255377961

`eq[15, A175867(A005836(n+1))]`
-/

namespace A206717.P7028562818255377961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175867 (A005836 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206717.P7028562818255377961

/-! ## A206717.P3219087086560734046

`eq[A000038(n), A011583(A005836(n+1))]`
-/

namespace A206717.P3219087086560734046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (A005836 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206717.P3219087086560734046

/-! ## A206717.P13773861513032554826

`eq[A000038(n), A011583(A005823(n+1)/2)]`
-/

namespace A206717.P13773861513032554826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206717.P13773861513032554826

/-!
# A206718: (1/7)*A206717.

The programs for A206718, there is no canonical definition to state claims against.
-/

/-! ## A206718.P14541575678934355529

`A206717(n+1)/7`
-/

namespace A206718.P14541575678934355529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206717 (n + 1) : ℚ) / 7

end

end A206718.P14541575678934355529

/-! ## A206718.P14913422524534908003

`A106608(A206717(n+1))`
-/

namespace A206718.P14913422524534908003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A206717 (n + 1)).toNat

end

end A206718.P14913422524534908003

/-! ## A206718.P5317943911108669674

`record[ratio[A206717(A152271(n))]]`
-/

namespace A206718.P5317943911108669674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206717 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206718.P5317943911108669674

/-! ## A206718.P1658597901475394525

`eq[6, A269224(A000120(7*n))]`
-/

namespace A206718.P1658597901475394525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269224 (A000120 (7 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206718.P1658597901475394525

/-! ## A206718.P9906064206825371204

`eq[9, A004159(A000120(A008589(n)))]`
-/

namespace A206718.P9906064206825371204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A000120 (A008589 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206718.P9906064206825371204

/-! ## A206718.P10933547648946666892

`eq[A000007(n), A071858(A008589(n))]`
-/

namespace A206718.P10933547648946666892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A008589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206718.P10933547648946666892

/-!
# A206719: Number of distinct irreducible factors of the polynomial p(n,x) defined at A206073.

The programs for A206719, there is no canonical definition to state claims against.
-/

/-! ## A206719.P709740070113411161

`A206442(A019565(n+1))`
-/

namespace A206719.P709740070113411161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A019565 (n + 1)).toNat

end

end A206719.P709740070113411161

/-! ## A206719.P15199960836392553011

`A206442(A339809(n+1)+1)`
-/

namespace A206719.P15199960836392553011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A339809 (n + 1) + 1).toNat

end

end A206719.P15199960836392553011

/-! ## A206719.P15599840145347988893

`A002828(A240086(n+1)^7)`
-/

namespace A206719.P15599840145347988893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A240086 (n + 1) ^ 7).toNat

end

end A206719.P15599840145347988893

/-! ## A206719.P14069898511126670233

`A102671(7^A240086(n+1))`
-/

namespace A206719.P14069898511126670233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A240086 (n + 1) : ℤ))).toNat

end

end A206719.P14069898511126670233

/-! ## A206719.P9866447397489466571

`A240086(n+1)%A074463(n+1)`
-/

namespace A206719.P9866447397489466571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240086 (n + 1)) (A074463 (n + 1))

end

end A206719.P9866447397489466571

/-!
# A206720: G.f.: A(x) = x/(1-x) o x/(1-x^3) o x/(1-x^5) o x/(1-x^7) o..., a composition of functions x/(1-x^(2*n-1)) for n=1,2,3,...

The programs for A206720, there is no canonical definition to state claims against.
-/

/-! ## A206720.P2627738885039624779

`A003056(A001006(n)+7)-2`
-/

namespace A206720.P2627738885039624779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001006 n + 7).toNat - 2

end

end A206720.P2627738885039624779

/-! ## A206720.P8178026399877866878

`A002024(A086246(n+2)+8)-3`
-/

namespace A206720.P8178026399877866878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A086246 (n + 2) + 8).toNat - 3

end

end A206720.P8178026399877866878

/-! ## A206720.P525469271650950025

`A003056(Δ[A316075(2*n+1)]+1)`
-/

namespace A206720.P525469271650950025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316075 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n + 1).toNat

end

end A206720.P525469271650950025

/-! ## A206720.P9806249370622971132

`A003056(or(A216616(n), A229886(n)))`
-/

namespace A206720.P9806249370622971132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A216616 n) (A229886 n)).toNat

end

end A206720.P9806249370622971132

/-! ## A206720.P12405048880310409469

`A257847(n)+A003056(A024428(n+1))`
-/

namespace A206720.P12405048880310409469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 n + A003056 (A024428 (n + 1)).toNat

end

end A206720.P12405048880310409469

/-!
# A206721: G.f.: A(x) = ...o x/(1-x^7) o x/(1-x^5) o x/(1-x^3) o x/(1-x), a composition of functions x/(1-x^(2*n-1)) for n=...3,2,1.

The programs for A206721, there is no canonical definition to state claims against.
-/

/-! ## A206721.P10484305107605412258

`A054404(A182905(n)+1)`
-/

namespace A206721.P10484305107605412258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182905 n + 1).toNat

end

end A206721.P10484305107605412258

/-! ## A206721.P13273056344728087233

`A257639(∑[∑[A336945(n)]])`
-/

namespace A206721.P13273056344728087233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206721.P13273056344728087233

/-! ## A206721.P4108186110434063700

`ceil(A320536(A063636(n+1)+∑{e}[n+1, #])/3)`
-/

namespace A206721.P4108186110434063700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320536 (A063636 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat : ℚ) / 3⌉

end

end A206721.P4108186110434063700

/-! ## A206721.P4824364214119707091

`A101638(A003504(n))+A034943(n)`
-/

namespace A206721.P4824364214119707091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A003504 n).toNat + A034943 n

end

end A206721.P4824364214119707091

/-! ## A206721.P6911534868401519657

`A325644(A034943(n)%A029471(n+2))`
-/

namespace A206721.P6911534868401519657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325644 (Int.tmod (A034943 n) (A029471 (n + 2))).toNat

end

end A206721.P6911534868401519657

/-!
# A206722: Parameters of Chebyshev function psi.

The programs for A206722, there is no canonical definition to state claims against.
-/

/-! ## A206722.P3832590830018911854

`floor(log2(A142593(n+1)+1))`
-/

namespace A206722.P3832590830018911854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A142593 (n + 1) + 1).toNat

end

end A206722.P3832590830018911854

/-! ## A206722.P15549534787428694666

`round(sqrt(A249809(n+2)-1))+1`
-/

namespace A206722.P15549534787428694666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A249809 (n + 2) - 1 : ℝ)) + 1

end

end A206722.P15549534787428694666

/-! ## A206722.P7892109587205101121

`ceil(A115627(n+2)/log(n+9))`
-/

namespace A206722.P7892109587205101121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115627 (n + 2) : ℝ) / Real.log (n + 9 : ℝ)⌉

end

end A206722.P7892109587205101121

/-! ## A206722.P12228771857400918647

`A070939(A249809(n+2))`
-/

namespace A206722.P12228771857400918647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A249809 (n + 2)).toNat

end

end A206722.P12228771857400918647

/-! ## A206722.P3962230498123966575

`A000523(A142593(n+1)+1)`
-/

namespace A206722.P3962230498123966575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A142593 (n + 1) + 1).toNat

end

end A206722.P3962230498123966575

/-! ## A206722.P354183413914436464

`A226763(or(1, A249809(n+2)))`
-/

namespace A206722.P354183413914436464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (Int.lor 1 (A249809 (n + 2))).toNat

end

end A206722.P354183413914436464

/-! ## A206722.P4542600303067392019

`A070939(round(A142593(n+1)/2))`
-/

namespace A206722.P4542600303067392019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A142593 (n + 1) : ℚ) / 2)).toNat

end

end A206722.P4542600303067392019

/-! ## A206722.P17480832975599556803

`A070939(A142593(n+1)+1)-1`
-/

namespace A206722.P17480832975599556803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A142593 (n + 1) + 1).toNat - 1

end

end A206722.P17480832975599556803

/-! ## A206722.P3336803991498995205

`A295515(or(2, A142593(n+1)+1))`
-/

namespace A206722.P3336803991498995205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (Int.lor 2 (A142593 (n + 1) + 1)).toNat

end

end A206722.P3336803991498995205

/-! ## A206722.P13607415091982096233

`floor(sqrt(A142593(n+1)+A049241(n+1)))`
-/

namespace A206722.P13607415091982096233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A142593 (n + 1) + A049241 (n + 1))

end

end A206722.P13607415091982096233

/-!
# A206723: a(n) = 7*( ((3 + sqrt(5))/2)^n + ((3 - sqrt(5))/2)^n - 2 ).

The programs for A206723, the canonical program `A206723.P13222012397116607497` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206723 has offset 1).

The definition of A206723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206723.P3283588334545631591

`∑[ogf((7+7x)/(1-3x+x^2))]`
-/

namespace A206723.P3283588334545631591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P3283588334545631591

namespace A206723

/-- `∑[ogf((7+7x)/(1-3x+x^2))]` -/
def P3283588334545631591.Spec : Prop :=
  ∀ n, P3283588334545631591.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P3270493386196007444

`ogf((7+7x)/(1-4x+4x^2-x^3))`
-/

namespace A206723.P3270493386196007444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7] [1, -4, 4, -1] n

end

end A206723.P3270493386196007444

namespace A206723

/-- `ogf((7+7x)/(1-4x+4x^2-x^3))` -/
def P3270493386196007444.Spec : Prop :=
  ∀ n, P3270493386196007444.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P13222012397116607497

`∑[7*A002878(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206723

/-- `∑[7*A002878(n)]` -/
def P13222012397116607497.Spec : Prop :=
  ∀ n, P13222012397116607497.a n = A206723 (n + 1)

theorem P13222012397116607497.correct : P13222012397116607497.Spec := by
  intro n
  simp only [A206723, Nat.add_sub_cancel]

end A206723

/-! ## A206723.P5059598961844761101

`record[7*A221364(n)]`
-/

namespace A206723.P5059598961844761101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A221364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206723.P5059598961844761101

namespace A206723

/-- `record[7*A221364(n)]` -/
def P5059598961844761101.Spec : Prop :=
  ∀ n, P5059598961844761101.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P14767188875764920074

`7*A004146(n+1)`
-/

namespace A206723.P14767188875764920074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004146 (n + 1)

end

end A206723.P14767188875764920074

namespace A206723

/-- `7*A004146(n+1)` -/
def P14767188875764920074.Spec : Prop :=
  ∀ n, P14767188875764920074.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P13259138133066766510

`7*A014739(2*n)`
-/

namespace A206723.P13259138133066766510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014739 (2 * n)

end

end A206723.P13259138133066766510

namespace A206723

/-- `7*A014739(2*n)` -/
def P13259138133066766510.Spec : Prop :=
  ∀ n, P13259138133066766510.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P319845164828724714

`∑[7*A000032(Δ[n²])]`
-/

namespace A206723.P319845164828724714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000032 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P319845164828724714

namespace A206723

/-- `∑[7*A000032(Δ[n²])]` -/
def P319845164828724714.Spec : Prop :=
  ∀ n, P319845164828724714.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P9693322240483229867

`7*A074392(2*n+1)`
-/

namespace A206723.P9693322240483229867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A074392 (2 * n + 1)

end

end A206723.P9693322240483229867

namespace A206723

/-- `7*A074392(2*n+1)` -/
def P9693322240483229867.Spec : Prop :=
  ∀ n, P9693322240483229867.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P14457926388486985405

`7*A221364(2*n+1)`
-/

namespace A206723.P14457926388486985405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A221364 (2 * n + 1)

end

end A206723.P14457926388486985405

namespace A206723

/-- `7*A221364(2*n+1)` -/
def P14457926388486985405.Spec : Prop :=
  ∀ n, P14457926388486985405.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P17387436227334091860

`7*A301653(2*n+1)`
-/

namespace A206723.P17387436227334091860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A301653 (2 * n + 1)

end

end A206723.P17387436227334091860

namespace A206723

/-- `7*A301653(2*n+1)` -/
def P17387436227334091860.Spec : Prop :=
  ∀ n, P17387436227334091860.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P8714699161183970353

`∑[7*Δ[A000032(2*n)]]`
-/

namespace A206723.P8714699161183970353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P8714699161183970353

namespace A206723

/-- `∑[7*Δ[A000032(2*n)]]` -/
def P8714699161183970353.Spec : Prop :=
  ∀ n, P8714699161183970353.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P15708185207135486371

`∑[A000032(2*n+1)*7]`
-/

namespace A206723.P15708185207135486371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) * 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P15708185207135486371

namespace A206723

/-- `∑[A000032(2*n+1)*7]` -/
def P15708185207135486371.Spec : Prop :=
  ∀ n, P15708185207135486371.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P2562833917943497054

`∑[7*A014217(2*n+1)]`
-/

namespace A206723.P2562833917943497054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P2562833917943497054

namespace A206723

/-- `∑[7*A014217(2*n+1)]` -/
def P2562833917943497054.Spec : Prop :=
  ∀ n, P2562833917943497054.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P5509540037159998320

`7*(A000032(2*(n+1))-2)`
-/

namespace A206723.P5509540037159998320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A000032 (2 * (n + 1)) - 2)

end

end A206723.P5509540037159998320

namespace A206723

/-- `7*(A000032(2*(n+1))-2)` -/
def P5509540037159998320.Spec : Prop :=
  ∀ n, P5509540037159998320.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P4773156920714663334

`7*∑[A000204(Δ[(n-1)²]+2)]`
-/

namespace A206723.P4773156920714663334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206723.P4773156920714663334

namespace A206723

/-- `7*∑[A000204(Δ[(n-1)²]+2)]` -/
def P4773156920714663334.Spec : Prop :=
  ∀ n, P4773156920714663334.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P15010482769960631820

`∑[A022090(2*n)+∑[A022090(2*n+1)]]`
-/

namespace A206723.P15010482769960631820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206723.P15010482769960631820

namespace A206723

/-- `∑[A022090(2*n)+∑[A022090(2*n+1)]]` -/
def P15010482769960631820.Spec : Prop :=
  ∀ n, P15010482769960631820.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P6170396239019654150

`A256233(n+1)+A122679(n+2)+A004146(n)`
-/

namespace A206723.P6170396239019654150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 (n + 1) + (A122679 (n + 2) + A004146 n)

end

end A206723.P6170396239019654150

namespace A206723

/-- `A256233(n+1)+A122679(n+2)+A004146(n)` -/
def P6170396239019654150.Spec : Prop :=
  ∀ n, P6170396239019654150.a n = A206723 (n + 1)

end A206723

/-! ## A206723.P7674674298493092803

`A004146(n+1)+A122679(n+2)+A004146(n+1)`
-/

namespace A206723.P7674674298493092803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 1) + (A122679 (n + 2) + A004146 (n + 1))

end

end A206723.P7674674298493092803

namespace A206723

/-- `A004146(n+1)+A122679(n+2)+A004146(n+1)` -/
def P7674674298493092803.Spec : Prop :=
  ∀ n, P7674674298493092803.a n = A206723 (n + 1)

end A206723

/-!
# A206724: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * Product_{k=0..n-1} A(u(n)^k*x), where u(n) = exp(2*Pi*I/n) is an n-th root of unity.

The programs for A206724, there is no canonical definition to state claims against.
-/

/-! ## A206724.P7982360126435065906

`A136250(A148871(n))`
-/

namespace A206724.P7982360126435065906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136250 (A148871 n).toNat

end

end A206724.P7982360126435065906

/-! ## A206724.P17917052095754323447

`A004176(A152915(n))+1`
-/

namespace A206724.P17917052095754323447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A152915 n).toNat + 1

end

end A206724.P17917052095754323447

/-!
# A206726: Number of n X n 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206726, there is no canonical definition to state claims against.
-/

/-! ## A206726.P8311506905948664320

`A206734((n+1)²+n²)`
-/

namespace A206726.P8311506905948664320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 ((n + 1) ^ 2 + n ^ 2)

end

end A206726.P8311506905948664320

/-!
# A206727: Number of nX1 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206727, the canonical program `A206727.P2201021563948497736` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206727 has offset 1).

The definition of A206727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206727.P2201021563948497736

`3*a(n-1)-2*a(n-3)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=25, a(3)=69, a(4)=190`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206727

/-- `3*a(n-1)-2*a(n-3)+a(n-5)` -/
def P2201021563948497736.Spec : Prop :=
  ∀ n, P2201021563948497736.a n = A206727 (n + 1)

theorem P2201021563948497736.correct : P2201021563948497736.Spec := by
  intro n
  simp only [A206727, Nat.add_sub_cancel]

end A206727

/-! ## A206727.P17646340348247663110

`sqrt(A206728(n+1))`
-/

namespace A206727.P17646340348247663110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206728 (n + 1) : ℝ)

end

end A206727.P17646340348247663110

namespace A206727

/-- `sqrt(A206728(n+1))` -/
def P17646340348247663110.Spec : Prop :=
  ∀ n, P17646340348247663110.a n = (A206727 (n + 1) : ℝ)

end A206727

/-! ## A206727.P8290176857877349774

`root(A206728(n+1), A141310(or(1, n)))`
-/

namespace A206727.P8290176857877349774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206728 (n + 1) : ℝ) ^ (1 / (A141310 (Nat.lor 1 n) : ℝ))

end

end A206727.P8290176857877349774

namespace A206727

/-- `root(A206728(n+1), A141310(or(1, n)))` -/
def P8290176857877349774.Spec : Prop :=
  ∀ n, P8290176857877349774.a n = (A206727 (n + 1) : ℝ)

end A206727

/-! ## A206727.P1081301401953918735

`root(A206728(n+1), A020639(2*(n+1)))`
-/

namespace A206727.P1081301401953918735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206728 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A206727.P1081301401953918735

namespace A206727

/-- `root(A206728(n+1), A020639(2*(n+1)))` -/
def P1081301401953918735.Spec : Prop :=
  ∀ n, P1081301401953918735.a n = (A206727 (n + 1) : ℝ)

end A206727

/-! ## A206727.P13626091007220709821

`root(A206728(n+1), A001316(A001316(n)))`
-/

namespace A206727.P13626091007220709821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206728 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A206727.P13626091007220709821

namespace A206727

/-- `root(A206728(n+1), A001316(A001316(n)))` -/
def P13626091007220709821.Spec : Prop :=
  ∀ n, P13626091007220709821.a n = (A206727 (n + 1) : ℝ)

end A206727

/-! ## A206727.P16421679550103880730

`root(A206728(n+1), A283454(A283454(n+1)))`
-/

namespace A206727.P16421679550103880730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206728 (n + 1) : ℝ) ^ (1 / (A283454 (A283454 (n + 1)).toNat : ℝ))

end

end A206727.P16421679550103880730

namespace A206727

/-- `root(A206728(n+1), A283454(A283454(n+1)))` -/
def P16421679550103880730.Spec : Prop :=
  ∀ n, P16421679550103880730.a n = (A206727 (n + 1) : ℝ)

end A206727

/-! ## A206727.P4473888849783972932

`root(A206728(n+1), 2%A206734(n+1))`
-/

namespace A206727.P4473888849783972932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206728 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A206734 (n + 1)) : ℝ))

end

end A206727.P4473888849783972932

namespace A206727

/-- `root(A206728(n+1), 2%A206734(n+1))` -/
def P4473888849783972932.Spec : Prop :=
  ∀ n, P4473888849783972932.a n = (A206727 (n + 1) : ℝ)

end A206727

/-!
# A206728: Number of n X 2 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206728, the canonical program `A206728.P13422394027231331753` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206728 has offset 1).

The definition of A206728 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206727, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206728.P13422394027231331753

`A206727(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206728

/-- `A206727(n+1)²` -/
def P13422394027231331753.Spec : Prop :=
  ∀ n, P13422394027231331753.a n = A206728 (n + 1)

theorem P13422394027231331753.correct : P13422394027231331753.Spec := by
  intro n
  simp only [A206728, Nat.add_sub_cancel]

end A206728

/-! ## A206728.P13420315246306261799

`record[A206727(A133310(n))²]`
-/

namespace A206728.P13420315246306261799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206727 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206728.P13420315246306261799

namespace A206728

/-- `record[A206727(A133310(n))²]` -/
def P13420315246306261799.Spec : Prop :=
  ∀ n, P13420315246306261799.a n = A206728 (n + 1)

end A206728

/-! ## A206728.P11372915687554212499

`A206727(n+1)^A020639(2*(n+1))`
-/

namespace A206728.P11372915687554212499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A206728.P11372915687554212499

namespace A206728

/-- `A206727(n+1)^A020639(2*(n+1))` -/
def P11372915687554212499.Spec : Prop :=
  ∀ n, P11372915687554212499.a n = (A206728 (n + 1) : ℚ)

end A206728

/-! ## A206728.P6391998752532179109

`A206727(n+1)^A141310(2*n+1)`
-/

namespace A206728.P6391998752532179109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (A141310 (2 * n + 1) : ℤ)

end

end A206728.P6391998752532179109

namespace A206728

/-- `A206727(n+1)^A141310(2*n+1)` -/
def P6391998752532179109.Spec : Prop :=
  ∀ n, P6391998752532179109.a n = (A206728 (n + 1) : ℚ)

end A206728

/-! ## A206728.P636602558841434792

`A206727(n+1)^A001316(A001316(n))`
-/

namespace A206728.P636602558841434792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A206728.P636602558841434792

namespace A206728

/-- `A206727(n+1)^A001316(A001316(n))` -/
def P636602558841434792.Spec : Prop :=
  ∀ n, P636602558841434792.a n = (A206728 (n + 1) : ℚ)

end A206728

/-! ## A206728.P17670379007863425598

`record[A206727(A133310(n))]*A206727(n+1)`
-/

namespace A206728.P17670379007863425598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206727 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A206727 (n + 1)

end

end A206728.P17670379007863425598

namespace A206728

/-- `record[A206727(A133310(n))]*A206727(n+1)` -/
def P17670379007863425598.Spec : Prop :=
  ∀ n, P17670379007863425598.a n = A206728 (n + 1)

end A206728

/-! ## A206728.P9008973559407671479

`A206727(n+1)^A018818(A000040(n+1))`
-/

namespace A206728.P9008973559407671479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (A018818 (A000040 (n + 1)).toNat : ℤ)

end

end A206728.P9008973559407671479

namespace A206728

/-- `A206727(n+1)^A018818(A000040(n+1))` -/
def P9008973559407671479.Spec : Prop :=
  ∀ n, P9008973559407671479.a n = (A206728 (n + 1) : ℚ)

end A206728

/-! ## A206728.P16783704271002616959

`A206727(n+1)^A000005(A006093(n+1)+1)`
-/

namespace A206728.P16783704271002616959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (A000005 (A006093 (n + 1) + 1).toNat : ℤ)

end

end A206728.P16783704271002616959

namespace A206728

/-- `A206727(n+1)^A000005(A006093(n+1)+1)` -/
def P16783704271002616959.Spec : Prop :=
  ∀ n, P16783704271002616959.a n = (A206728 (n + 1) : ℚ)

end A206728

/-! ## A206728.P13800719245066113860

`A206727(n+1)^(2%A206734(n+1))`
-/

namespace A206728.P13800719245066113860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (Int.tmod 2 (A206734 (n + 1)) : ℤ)

end

end A206728.P13800719245066113860

namespace A206728

/-- `A206727(n+1)^(2%A206734(n+1))` -/
def P13800719245066113860.Spec : Prop :=
  ∀ n, P13800719245066113860.a n = (A206728 (n + 1) : ℚ)

end A206728

/-! ## A206728.P14587544854946842787

`A206727(n+1)^A000005(A062679(n+1))`
-/

namespace A206728.P14587544854946842787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206727 (n + 1) : ℚ) ^ (A000005 (A062679 (n + 1)).toNat : ℤ)

end

end A206728.P14587544854946842787

namespace A206728

/-- `A206727(n+1)^A000005(A062679(n+1))` -/
def P14587544854946842787.Spec : Prop :=
  ∀ n, P14587544854946842787.a n = (A206728 (n + 1) : ℚ)

end A206728

/-!
# A206729: Number of nX3 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206729, there is no canonical definition to state claims against.
-/

/-! ## A206729.P9483705792043376501

`A206734(∑[n+2]+4)`
-/

namespace A206729.P9483705792043376501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206729.P9483705792043376501

/-! ## A206729.P6697273334294187418

`A206734(A167499(n)+n)+A000038(n+1)`
-/

namespace A206729.P6697273334294187418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A167499 n + (n : ℤ)).toNat + A000038 (n + 1)

end

end A206729.P6697273334294187418

/-! ## A206729.P16549391475167834221

`lcm(A154990(n+1), A206734(A167499(n)+n))`
-/

namespace A206729.P16549391475167834221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154990 (n + 1)) (A206734 (A167499 n + (n : ℤ)).toNat)

end

end A206729.P16549391475167834221

/-! ## A206729.P13167893878434058313

`A014963(A254730(n))*A206734(A167499(n)+n)`
-/

namespace A206729.P13167893878434058313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A254730 n).toNat * A206734 (A167499 n + (n : ℤ)).toNat

end

end A206729.P13167893878434058313

/-! ## A206729.P8094409180885379628

`A014963(10*A000040(n+1))*A206734(A167499(n)+n)`
-/

namespace A206729.P8094409180885379628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * A000040 (n + 1)).toNat * A206734 (A167499 n + (n : ℤ)).toNat

end

end A206729.P8094409180885379628

/-!
# A206730: Number of nX4 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206730, there is no canonical definition to state claims against.
-/

/-! ## A206730.P14137682861496750765

`A206734(A374004(n+1))`
-/

namespace A206730.P14137682861496750765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A374004 (n + 1)).toNat

end

end A206730.P14137682861496750765

/-! ## A206730.P640689932875793301

`A206734(A141214(n)+7)`
-/

namespace A206730.P640689932875793301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A141214 n + 7).toNat

end

end A206730.P640689932875793301

/-! ## A206730.P6797957182238278102

`A206734(A052905(n)+9)`
-/

namespace A206730.P6797957182238278102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A052905 n + 9).toNat

end

end A206730.P6797957182238278102

/-! ## A206730.P14628905904731457690

`A206734(A055999(n)+10)`
-/

namespace A206730.P14628905904731457690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A055999 n + 10).toNat

end

end A206730.P14628905904731457690

/-! ## A206730.P2567395490105331331

`A206734(A167614(n+2)+1)`
-/

namespace A206730.P2567395490105331331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A167614 (n + 2) + 1).toNat

end

end A206730.P2567395490105331331

/-!
# A206731: Number of nX5 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206731, there is no canonical definition to state claims against.
-/

/-! ## A206731.P15210079685011266300

`A206734(A374005(n+1))`
-/

namespace A206731.P15210079685011266300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A374005 (n + 1)).toNat

end

end A206731.P15210079685011266300

/-! ## A206731.P13944941269343033199

`A206734(A155212(n)+13)`
-/

namespace A206731.P13944941269343033199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A155212 n + 13).toNat

end

end A206731.P13944941269343033199

/-! ## A206731.P10314625751250275584

`A206734(A056000(n)+15)`
-/

namespace A206731.P10314625751250275584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A056000 n + 15).toNat

end

end A206731.P10314625751250275584

/-! ## A206731.P630232667696936917

`A206734(eq[6, A131818(n+1)])`
-/

namespace A206731.P630232667696936917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206731.P630232667696936917

/-! ## A206731.P16785554778150299122

`A206734(eq[4, A193592(n)])`
-/

namespace A206731.P16785554778150299122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206731.P16785554778150299122

/-!
# A206732: Number of nX6 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206732, there is no canonical definition to state claims against.
-/

/-! ## A206732.P10870886792349819727

`A206734(A374007(n+1))`
-/

namespace A206732.P10870886792349819727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A374007 (n + 1)).toNat

end

end A206732.P10870886792349819727

/-! ## A206732.P6881568442138117723

`A206734(eq[7, A131818(n+1)])`
-/

namespace A206732.P6881568442138117723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206732.P6881568442138117723

/-! ## A206732.P3803330070442816329

`A206734(Δ[A023545(n+2)]-1)`
-/

namespace A206732.P3803330070442816329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (f1 (n + 1) - f1 n - 1).toNat

end

end A206732.P3803330070442816329

/-!
# A206733: Number of nX7 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206733, there is no canonical definition to state claims against.
-/

/-! ## A206733.P2995569919199530660

`A206734(A374008(n+1))`
-/

namespace A206733.P2995569919199530660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A374008 (n + 1)).toNat

end

end A206733.P2995569919199530660

/-! ## A206733.P9972781454426703817

`A206734(eq[8, A131818(n+1)])`
-/

namespace A206733.P9972781454426703817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206733.P9972781454426703817

/-!
# A206734: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206734, there is no canonical definition to state claims against.
-/

/-! ## A206734.P13366607996193999830

`A206957(n+1)-A055641(A098051(n))`
-/

namespace A206734.P13366607996193999830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (n + 1) - A055641 (A098051 n).toNat

end

end A206734.P13366607996193999830

/-! ## A206734.P14441701986660364520

`A206957(n+1)-A340999(A276086(n))`
-/

namespace A206734.P14441701986660364520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (n + 1) - A340999 ((A276086 n).toNat + 204)

end

end A206734.P14441701986660364520

/-! ## A206734.P9292219247823553693

`A206957(n+1)-A010054(A207050(n+1))`
-/

namespace A206734.P9292219247823553693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A206734.P9292219247823553693

/-! ## A206734.P11218138093816621032

`A206957(n+1)-A321379(A164363(n+1))`
-/

namespace A206734.P11218138093816621032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (n + 1) - A321379 (A164363 (n + 1)).toNat

end

end A206734.P11218138093816621032

/-! ## A206734.P12861198942699026788

`A206957(n+1)-A086075(A000079(n))`
-/

namespace A206734.P12861198942699026788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (n + 1) - A086075 (A000079 n).toNat

end

end A206734.P12861198942699026788

/-!
# A206735: Triangle T(n,k), read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A206735, the canonical program `A206735.P9027577083690455181` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206735 has offset 0).

The definition of A206735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206735.P7861408795219325846

`A007318(n)-char[∑[n+1]]`
-/

namespace A206735.P7861408795219325846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A206735.P7861408795219325846

namespace A206735

/-- `A007318(n)-char[∑[n+1]]` -/
def P7861408795219325846.Spec : Prop :=
  ∀ n, P7861408795219325846.a n = A206735 n

end A206735

/-! ## A206735.P9027577083690455181

`A153861(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A206735

/-- `A153861(n-1)-a(n-1)` -/
def P9027577083690455181.Spec : Prop :=
  ∀ n, P9027577083690455181.a n = A206735 n

theorem P9027577083690455181.correct : P9027577083690455181.Spec := by
  intro n
  simp only [A206735]

end A206735

/-! ## A206735.P16404533360117461680

`floor(A124927(abs(1-n)+1)/2)`
-/

namespace A206735.P16404533360117461680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124927 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

end

end A206735.P16404533360117461680

namespace A206735

/-- `floor(A124927(abs(1-n)+1)/2)` -/
def P16404533360117461680.Spec : Prop :=
  ∀ n, P16404533360117461680.a n = A206735 n

end A206735

/-! ## A206735.P15822325234837207438

`A123110(n)+A014473(n)`
-/

namespace A206735.P15822325234837207438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n + A014473 n

end

end A206735.P15822325234837207438

namespace A206735

/-- `A123110(n)+A014473(n)` -/
def P15822325234837207438.Spec : Prop :=
  ∀ n, P15822325234837207438.a n = A206735 n

end A206735

/-! ## A206735.P7065482774255736446

`A132735(n)-A023532(n)`
-/

namespace A206735.P7065482774255736446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n - A023532 n

end

end A206735.P7065482774255736446

namespace A206735

/-- `A132735(n)-A023532(n)` -/
def P7065482774255736446.Spec : Prop :=
  ∀ n, P7065482774255736446.a n = A206735 n

end A206735

/-! ## A206735.P15961817152679126621

`A028326(n)-A132749(n)`
-/

namespace A206735.P15961817152679126621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A132749 n

end

end A206735.P15961817152679126621

namespace A206735

/-- `A028326(n)-A132749(n)` -/
def P15961817152679126621.Spec : Prop :=
  ∀ n, P15961817152679126621.a n = A206735 n

end A206735

/-! ## A206735.P13224388055643889470

`A029635(n)-A135225(n)`
-/

namespace A206735.P13224388055643889470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A135225 n

end

end A206735.P13224388055643889470

namespace A206735

/-- `A029635(n)-A135225(n)` -/
def P13224388055643889470.Spec : Prop :=
  ∀ n, P13224388055643889470.a n = A206735 n

end A206735

/-! ## A206735.P11621308206703822602

`A007318(n)*A123110(n)`
-/

namespace A206735.P11621308206703822602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A123110 n

end

end A206735.P11621308206703822602

namespace A206735

/-- `A007318(n)*A123110(n)` -/
def P11621308206703822602.Spec : Prop :=
  ∀ n, P11621308206703822602.a n = A206735 n

end A206735

/-! ## A206735.P10291376837361330173

`A091918(n)*A123110(n)`
-/

namespace A206735.P10291376837361330173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A123110 n

end

end A206735.P10291376837361330173

namespace A206735

/-- `A091918(n)*A123110(n)` -/
def P10291376837361330173.Spec : Prop :=
  ∀ n, P10291376837361330173.a n = A206735 n

end A206735

/-! ## A206735.P12817464359631925858

`A123110(n)*A132749(n)`
-/

namespace A206735.P12817464359631925858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A132749 n

end

end A206735.P12817464359631925858

namespace A206735

/-- `A123110(n)*A132749(n)` -/
def P12817464359631925858.Spec : Prop :=
  ∀ n, P12817464359631925858.a n = A206735 n

end A206735

/-! ## A206735.P1898399964869259672

`A123110(n)*A135227(n)`
-/

namespace A206735.P1898399964869259672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A135227 n

end

end A206735.P1898399964869259672

namespace A206735

/-- `A123110(n)*A135227(n)` -/
def P1898399964869259672.Spec : Prop :=
  ∀ n, P1898399964869259672.a n = A206735 n

end A206735

/-! ## A206735.P5620285336758346160

`A123110(n)*A183154(n)`
-/

namespace A206735.P5620285336758346160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A183154 n

end

end A206735.P5620285336758346160

namespace A206735

/-- `A123110(n)*A183154(n)` -/
def P5620285336758346160.Spec : Prop :=
  ∀ n, P5620285336758346160.a n = A206735 n

end A206735

/-! ## A206735.P8444564225825049502

`A182059(n)/A059268(n)`
-/

namespace A206735.P8444564225825049502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182059 n : ℚ) / (A059268 n : ℚ)

end

end A206735.P8444564225825049502

namespace A206735

/-- `A182059(n)/A059268(n)` -/
def P8444564225825049502.Spec : Prop :=
  ∀ n, P8444564225825049502.a n = (A206735 n : ℚ)

end A206735

/-! ## A206735.P17879645011033088952

`A007318(n)%A029635(n)`
-/

namespace A206735.P17879645011033088952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A029635 n)

end

end A206735.P17879645011033088952

namespace A206735

/-- `A007318(n)%A029635(n)` -/
def P17879645011033088952.Spec : Prop :=
  ∀ n, P17879645011033088952.a n = A206735 n

end A206735

/-! ## A206735.P562712826214382307

`A029600(n)%A029635(n)`
-/

namespace A206735.P562712826214382307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029600 n) (A029635 n)

end

end A206735.P562712826214382307

namespace A206735

/-- `A029600(n)%A029635(n)` -/
def P562712826214382307.Spec : Prop :=
  ∀ n, P562712826214382307.a n = A206735 n

end A206735

/-! ## A206735.P10388421358333754396

`A091918(n)%A028326(n)`
-/

namespace A206735.P10388421358333754396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091918 n) (A028326 n)

end

end A206735.P10388421358333754396

namespace A206735

/-- `A091918(n)%A028326(n)` -/
def P10388421358333754396.Spec : Prop :=
  ∀ n, P10388421358333754396.a n = A206735 n

end A206735

/-! ## A206735.P7000486035682289915

`A135227(n)%A029635(n)`
-/

namespace A206735.P7000486035682289915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135227 n) (A029635 n)

end

end A206735.P7000486035682289915

namespace A206735

/-- `A135227(n)%A029635(n)` -/
def P7000486035682289915.Spec : Prop :=
  ∀ n, P7000486035682289915.a n = A206735 n

end A206735

/-! ## A206735.P355390407851819995

`A182042(n)%A028326(n)`
-/

namespace A206735.P355390407851819995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182042 n) (A028326 n)

end

end A206735.P355390407851819995

namespace A206735

/-- `A182042(n)%A028326(n)` -/
def P355390407851819995.Spec : Prop :=
  ∀ n, P355390407851819995.a n = A206735 n

end A206735

/-! ## A206735.P8319907797921447715

`A183154(n)%A029635(n)`
-/

namespace A206735.P8319907797921447715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183154 n) (A029635 n)

end

end A206735.P8319907797921447715

namespace A206735

/-- `A183154(n)%A029635(n)` -/
def P8319907797921447715.Spec : Prop :=
  ∀ n, P8319907797921447715.a n = A206735 n

end A206735

/-! ## A206735.P18282198737324151966

`gcd(A182042(n), A182059(n))`
-/

namespace A206735.P18282198737324151966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182042 n) (A182059 n)

end

end A206735.P18282198737324151966

namespace A206735

/-- `gcd(A182042(n), A182059(n))` -/
def P18282198737324151966.Spec : Prop :=
  ∀ n, (P18282198737324151966.a n : ℤ) = A206735 n

end A206735

/-!
# A206737: G.f.: 1/(1 - x/(1 - x^4/(1 - x^7/(1 - x^10/(1 - x^13/(1 - x^16/(1 -...- x^(3*n-2)/(1 -...)))))))), a continued fraction.

The programs for A206737, there is no canonical definition to state claims against.
-/

/-! ## A206737.P10940013087182412603

`A368941(A178457(n))`
-/

namespace A206737.P10940013087182412603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A178457 n).toNat

end

end A206737.P10940013087182412603

/-! ## A206737.P16132837427356925994

`A000196(A092483(n+1))`
-/

namespace A206737.P16132837427356925994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A092483 (n + 1)).toNat

end

end A206737.P16132837427356925994

/-! ## A206737.P2079280005792183006

`A287864(A226187(n+1))`
-/

namespace A206737.P2079280005792183006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A226187 (n + 1)).toNat

end

end A206737.P2079280005792183006

/-! ## A206737.P5678927866727420273

`A135664(4*A190168(n))`
-/

namespace A206737.P5678927866727420273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (4 * A190168 n).toNat

end

end A206737.P5678927866727420273

/-! ## A206737.P17335870260085071

`A000196(floor(sqrt(A000208(n))))`
-/

namespace A206737.P17335870260085071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.sqrt (A000208 n)).toNat

end

end A206737.P17335870260085071

/-!
# A206738: G.f.: 1/(1 - x^2/(1 - x^5/(1 - x^8/(1 - x^11/(1 - x^14/(1 - x^17/(1 -...- x^(3*n-1)/(1 -...)))))))), a continued fraction.

The programs for A206738, there is no canonical definition to state claims against.
-/

/-! ## A206738.P2098764168665177375

`Δ[A227177(Δ[A108296(n)])]`
-/

namespace A206738.P2098764168665177375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108296 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206738.P2098764168665177375

/-! ## A206738.P4931829267060885389

`A165656(A055645(n))+A143619(n)`
-/

namespace A206738.P4931829267060885389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 (A055645 n).toNat + A143619 n

end

end A206738.P4931829267060885389

/-! ## A206738.P8200389901993320274

`A185284(A014689(n+1))+A143619(n)`
-/

namespace A206738.P8200389901993320274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A014689 (n + 1)).toNat + A143619 n

end

end A206738.P8200389901993320274

/-! ## A206738.P8851506750838213474

`A185284(A066208(n+1))+A143619(n)`
-/

namespace A206738.P8851506750838213474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A066208 (n + 1)).toNat + A143619 n

end

end A206738.P8851506750838213474

/-! ## A206738.P7867986827636625684

`A029313(eq[A029269(n+4), A029273(n)])`
-/

namespace A206738.P7867986827636625684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A206738.P7867986827636625684

/-!
# A206739: G.f.: 1/(1 - x/(1 - x^4/(1 - x^9/(1 - x^16/(1 - x^25/(1 - x^36/(1 -...- x^(n^2)/(1 -...))))))), a continued fraction.

The programs for A206739, there is no canonical definition to state claims against.
-/

/-! ## A206739.P13449829046640947412

`A295072(n)+∑[A055641(A000032(n+2))]`
-/

namespace A206739.P13449829046640947412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000032 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295072 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206739.P13449829046640947412

/-! ## A206739.P17416508288104496230

`A123068(A295072(n)+1)`
-/

namespace A206739.P17416508288104496230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A295072 n + 1).toNat

end

end A206739.P17416508288104496230

/-! ## A206739.P2080515956858635740

`A000196(ceil(sqrt(A036720(n))))`
-/

namespace A206739.P2080515956858635740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈Real.sqrt (A036720 n : ℝ)⌉.toNat

end

end A206739.P2080515956858635740

/-! ## A206739.P7256304246853579947

`A000196(round(sqrt(A036720(n))))`
-/

namespace A206739.P7256304246853579947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A036720 n : ℝ))).toNat

end

end A206739.P7256304246853579947

/-! ## A206739.P10164566764378589651

`A000196(A274160(n))-char[13]`
-/

namespace A206739.P10164566764378589651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A274160 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A206739.P10164566764378589651

/-!
# A206740: G.f.: 1/(1 - x/(1 - x^3/(1 - x^6/(1 - x^10/(1 - x^15/(1 - x^21/(1 -...- x^(n*(n+1)/2)/(1 -...))))))), a continued fraction.

The programs for A206740, there is no canonical definition to state claims against.
-/

/-! ## A206740.P7524079049232501191

`A078932(floor(log2(A158291(n+1))))`
-/

namespace A206740.P7524079049232501191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (Nat.log 2 (A158291 (n + 1)).toNat)

end

end A206740.P7524079049232501191

/-! ## A206740.P15283285052628820369

`A078932(A070939(round(2^(n-2))))`
-/

namespace A206740.P15283285052628820369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat).toNat

end

end A206740.P15283285052628820369

/-! ## A206740.P2453692710406189499

`A078932(log2(A332808(ceil(2^(n-1)))))`
-/

namespace A206740.P2453692710406189499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (SequenceMachineLib.roundAway (Real.logb 2 (A332808 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℝ))).toNat

end

end A206740.P2453692710406189499

/-! ## A206740.P1934995308796648211

`A351846(A251691(n))`
-/

namespace A206740.P1934995308796648211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A251691 n).toNat

end

end A206740.P1934995308796648211

/-! ## A206740.P15880195557119474362

`A351846(A298496(n+2))`
-/

namespace A206740.P15880195557119474362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A298496 (n + 2)).toNat

end

end A206740.P15880195557119474362

/-!
# A206741: G.f.: 1/(1 - x/(1 - x/(1 - x^2/(1 - x^3/(1 - x^5/(1 - x^8/(1 -...- x^Fibonacci(n)/(1 -...)))))))), a continued fraction.

The programs for A206741, there is no canonical definition to state claims against.
-/

/-! ## A206741.P15283987110629487830

`A371092(A077946(n+1))`
-/

namespace A206741.P15283987110629487830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A077946 (n + 1)).toNat

end

end A206741.P15283987110629487830

/-! ## A206741.P12179623848108055092

`A290531(A143418(n+1))+A167750(n)`
-/

namespace A206741.P12179623848108055092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (A143418 (n + 1)).toNat + A167750 n

end

end A206741.P12179623848108055092

/-! ## A206741.P9576586775273688981

`A167750(n)-A011765(A128366(n+1))`
-/

namespace A206741.P9576586775273688981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167750 n - A011765 (A128366 (n + 1)).toNat

end

end A206741.P9576586775273688981

/-! ## A206741.P455830128373269585

`A167750(n)-A265605(A088756(n+1))`
-/

namespace A206741.P455830128373269585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167750 n - A265605 (A088756 (n + 1)).toNat

end

end A206741.P455830128373269585

/-! ## A206741.P10344154075205325484

`A167750(n)-A335520(A214101(n+1))`
-/

namespace A206741.P10344154075205325484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167750 n - A335520 (A214101 (n + 1)).toNat

end

end A206741.P10344154075205325484

/-!
# A206742: G.f.: 1/(1 - x/(1 - x^3/(1 - x^4/(1 - x^7/(1 - x^11/(1 - x^18/(1 -...- x^Lucas(n)/(1 -...)))))))), a continued fraction.

The programs for A206742, there is no canonical definition to state claims against.
-/

/-! ## A206742.P16463350650109846072

`round(A036725(n)/A036761(3*n))`
-/

namespace A206742.P16463350650109846072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036725 n : ℚ) / (A036761 (3 * n) : ℚ))

end

end A206742.P16463350650109846072

/-! ## A206742.P1930169098297872191

`A204164(ceil((A063636(n+1)+4)/13))`
-/

namespace A206742.P1930169098297872191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 ⌈(A063636 (n + 1) + 4 : ℚ) / 13⌉.toNat

end

end A206742.P1930169098297872191

/-! ## A206742.P2647384241645567125

`A294234(n)+A204164(A003120(n+1))`
-/

namespace A206742.P2647384241645567125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + A204164 (A003120 (n + 1)).toNat

end

end A206742.P2647384241645567125

/-! ## A206742.P1733330549714154258

`A351846(A274936(n+2)+A060022(n+3))`
-/

namespace A206742.P1733330549714154258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A274936 (n + 2) + A060022 (n + 3)).toNat

end

end A206742.P1733330549714154258

/-! ## A206742.P4632324351746955086

`floor(root(A124528(2*n), 10))`
-/

namespace A206742.P4632324351746955086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124528 (2 * n) : ℝ) ^ (1 / (10 : ℝ))⌋

end

end A206742.P4632324351746955086

/-!
# A206743: G.f.: 1/(1 - x/(1 - x^2/(1 - x^5/(1 - x^12/(1 - x^29/(1 - x^70/(1 -...- x^Pell(n)/(1 -...)))))))), a continued fraction.

The programs for A206743, there is no canonical definition to state claims against.
-/

/-! ## A206743.P17547427739020029022

`A001462(A001385(n))-A009714(n)`
-/

namespace A206743.P17547427739020029022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001385 n).toNat - A009714 n

end

end A206743.P17547427739020029022

/-! ## A206743.P2069947417424655623

`A071860(A374572(n+1))`
-/

namespace A206743.P2069947417424655623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A374572 (n + 1)).toNat

end

end A206743.P2069947417424655623

/-! ## A206743.P6735235535486005133

`round(A098787(3*n)/A098789(2*n+1))`
-/

namespace A206743.P6735235535486005133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A098787 (3 * n) : ℚ) / (A098789 (2 * n + 1) : ℚ))

end

end A206743.P6735235535486005133

/-! ## A206743.P1306770705605582002

`A257639(A126285(n)-A127912(n))`
-/

namespace A206743.P1306770705605582002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A126285 n - A127912 n).toNat

end

end A206743.P1306770705605582002

/-! ## A206743.P8697805108465762372

`A257639(or(A045680(n), A298417(n)))`
-/

namespace A206743.P8697805108465762372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.lor (A045680 n) (A298417 n)).toNat

end

end A206743.P8697805108465762372

/-!
# A206744: 

The programs for A206744, there is no canonical definition to state claims against.
-/

/-! ## A206744.P6854242685615872660

`A206752((n+1)²+n²)`
-/

namespace A206744.P6854242685615872660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 ((n + 1) ^ 2 + n ^ 2)

end

end A206744.P6854242685615872660

/-!
# A206745: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206745, there is no canonical definition to state claims against.
-/

/-! ## A206745.P17028997654858543708

`A206752(∑[n]+1)`
-/

namespace A206745.P17028997654858543708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206745.P17028997654858543708

/-! ## A206745.P12662698340191213092

`record[A010054(n)*A206752(n+1)]`
-/

namespace A206745.P12662698340191213092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206745.P12662698340191213092

/-! ## A206745.P2634563832300595493

`record[root(A206752(n+1), A008518(n))]`
-/

namespace A206745.P2634563832300595493
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206752 (n + 1) : ℝ) ^ (1 / (A008518 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206745.P2634563832300595493

/-! ## A206745.P8426681077786000584

`record[root(A206752(n+1), A062344(n))]`
-/

namespace A206745.P8426681077786000584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206752 (n + 1) : ℝ) ^ (1 / (A062344 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206745.P8426681077786000584

/-! ## A206745.P10876336088899729560

`record[gcd(A002262(n), A206752(n+1))]`
-/

namespace A206745.P10876336088899729560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206752 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206745.P10876336088899729560

/-!
# A206746: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206746, there is no canonical definition to state claims against.
-/

/-! ## A206746.P10884684828835847412

`A206752(∑[n+1]+2)`
-/

namespace A206746.P10884684828835847412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206746.P10884684828835847412

/-! ## A206746.P4039402884958471177

`record[A010054(n)*A206752(n+2)]`
-/

namespace A206746.P4039402884958471177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206752 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206746.P4039402884958471177

/-! ## A206746.P12514917580332024916

`record[root(A206752(n+2), A062344(n))]`
-/

namespace A206746.P12514917580332024916
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206752 (n + 2) : ℝ) ^ (1 / (A062344 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206746.P12514917580332024916

/-! ## A206746.P14055768149891253378

`record[gcd(A002262(n), A206752(n+2))]`
-/

namespace A206746.P14055768149891253378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206752 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206746.P14055768149891253378

/-! ## A206746.P18317675452610907961

`record[A206752(Δ[A003453(n+5)])]`
-/

namespace A206746.P18317675452610907961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206746.P18317675452610907961

/-!
# A206747: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206747, there is no canonical definition to state claims against.
-/

/-! ## A206747.P17255956282916816196

`A206752(∑[n+2]+4)`
-/

namespace A206747.P17255956282916816196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206747.P17255956282916816196

/-! ## A206747.P13572076215162387155

`lcm(2, A206752(A167614(n+1)))`
-/

namespace A206747.P13572076215162387155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206752 (A167614 (n + 1)).toNat)

end

end A206747.P13572076215162387155

/-! ## A206747.P14207875821592586097

`A206752(A167614(n+1))+A108782(n)`
-/

namespace A206747.P14207875821592586097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A167614 (n + 1)).toNat + A108782 n

end

end A206747.P14207875821592586097

/-! ## A206747.P14323084218239586859

`A206752(A167614(n+1))+A070139(n+1)`
-/

namespace A206747.P14323084218239586859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A167614 (n + 1)).toNat + A070139 (n + 1)

end

end A206747.P14323084218239586859

/-! ## A206747.P6811829824853572871

`A206752(A167614(n+1))%A206748(n+1)`
-/

namespace A206747.P6811829824853572871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206752 (A167614 (n + 1)).toNat) (A206748 (n + 1))

end

end A206747.P6811829824853572871

/-!
# A206748: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206748, there is no canonical definition to state claims against.
-/

/-! ## A206748.P15945527839382044500

`A206752(A141214(n)+7)`
-/

namespace A206748.P15945527839382044500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A141214 n + 7).toNat

end

end A206748.P15945527839382044500

/-! ## A206748.P1346778209893445197

`A206752(A052905(n)+9)`
-/

namespace A206748.P1346778209893445197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A052905 n + 9).toNat

end

end A206748.P1346778209893445197

/-! ## A206748.P7400254581092415635

`A206752(A167614(n+2)+1)`
-/

namespace A206748.P7400254581092415635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A167614 (n + 2) + 1).toNat

end

end A206748.P7400254581092415635

/-! ## A206748.P11234128870454408167

`A206752(A155212(n)+5)`
-/

namespace A206748.P11234128870454408167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A155212 n + 5).toNat

end

end A206748.P11234128870454408167

/-! ## A206748.P8107491353206321373

`A206752(eq[4, A141020(n)])`
-/

namespace A206748.P8107491353206321373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206748.P8107491353206321373

/-!
# A206749: 

The programs for A206749, there is no canonical definition to state claims against.
-/

/-! ## A206749.P14073193374775299502

`A206752(Δ[A023545(n+1)])`
-/

namespace A206749.P14073193374775299502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (f1 (n + 1) - f1 n).toNat

end

end A206749.P14073193374775299502

/-!
# A206750: 

The programs for A206750, there is no canonical definition to state claims against.
-/

/-! ## A206750.P17407557271053267208

`A206752(A155212(n+2)+3)`
-/

namespace A206750.P17407557271053267208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206752 (A155212 (n + 2) + 3).toNat

end

end A206750.P17407557271053267208

/-!
# A206753: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..2 introduced in row major order.

The programs for A206753, there is no canonical definition to state claims against.
-/

/-! ## A206753.P10804156178588761843

`A206761((n+1)²+n²)`
-/

namespace A206753.P10804156178588761843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 ((n + 1) ^ 2 + n ^ 2)

end

end A206753.P10804156178588761843

/-!
# A206754: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having no more than three equal edges, and new values 0..2 introduced in row major order.

The programs for A206754, there is no canonical definition to state claims against.
-/

/-! ## A206754.P14240953626310795208

`A206761(∑[n]+1)`
-/

namespace A206754.P14240953626310795208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206754.P14240953626310795208

/-! ## A206754.P2153581539207696059

`record[root(A206761(n+1), A008459(n))]`
-/

namespace A206754.P2153581539207696059
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206761 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206754.P2153581539207696059

/-! ## A206754.P8152797572274623453

`record[root(A206761(n+1), A013609(n))]`
-/

namespace A206754.P8152797572274623453
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206761 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206754.P8152797572274623453

/-! ## A206754.P7593854135066704371

`record[root(A206761(n+1), A002260(n+1))]`
-/

namespace A206754.P7593854135066704371
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206761 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206754.P7593854135066704371

/-! ## A206754.P632002144536309095

`record[root(A206761(n+1), A220614(n+1))]`
-/

namespace A206754.P632002144536309095
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206761 (n + 1) : ℝ) ^ (1 / (A220614 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206754.P632002144536309095

/-!
# A206755: Number of (n+1)X3 0..2 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..2 introduced in row major order.

The programs for A206755, there is no canonical definition to state claims against.
-/

/-! ## A206755.P12620193914917013724

`A206761(∑[n+1]+2)`
-/

namespace A206755.P12620193914917013724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206755.P12620193914917013724

/-! ## A206755.P9461014129412612222

`record[root(A206761(n+2), A013609(n))]`
-/

namespace A206755.P9461014129412612222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206761 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206755.P9461014129412612222

/-! ## A206755.P6483604945328696570

`record[A206761(A022856(n+1)+A000007(n))]`
-/

namespace A206755.P6483604945328696570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A022856 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206755.P6483604945328696570

/-! ## A206755.P10461311169305951888

`record[A206761(Δ[A003453(n+5)])]`
-/

namespace A206755.P10461311169305951888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206755.P10461311169305951888

/-! ## A206755.P1498910193962230447

`record[A206761(record[A185180(n+2)])]`
-/

namespace A206755.P1498910193962230447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206755.P1498910193962230447

/-!
# A206756: Number of (n+1)X4 0..2 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..2 introduced in row major order.

The programs for A206756, there is no canonical definition to state claims against.
-/

/-! ## A206756.P15508904965281638820

`A206761(∑[n+2]+4)`
-/

namespace A206756.P15508904965281638820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206756.P15508904965281638820

/-! ## A206756.P9206392885036980329

`or(floor(acot(n)), A206761(A167614(n+1)))`
-/

namespace A206756.P9206392885036980329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A206761 (A167614 (n + 1)).toNat)

end

end A206756.P9206392885036980329

/-! ## A206756.P1876174835288581093

`record[A206761(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A206756.P1876174835288581093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206756.P1876174835288581093

/-! ## A206756.P5430936497813810843

`record[A206761(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A206756.P5430936497813810843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206756.P5430936497813810843

/-! ## A206756.P17050467111550706871

`record[A206761(A167614(round(lcm(2, n+3)/6)))]`
-/

namespace A206756.P17050467111550706871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A167614 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206756.P17050467111550706871

/-!
# A206757: Number of (n+1)X5 0..2 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..2 introduced in row major order.

The programs for A206757, there is no canonical definition to state claims against.
-/

/-! ## A206757.P8956207047300829284

`A206761(A167614(n+2)+1)`
-/

namespace A206757.P8956207047300829284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A167614 (n + 2) + 1).toNat

end

end A206757.P8956207047300829284

/-! ## A206757.P12782445067233975573

`A206761(A052905(n+1)+2)`
-/

namespace A206757.P12782445067233975573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A052905 (n + 1) + 2).toNat

end

end A206757.P12782445067233975573

/-!
# A206758: Number of (n+1)X6 0..2 arrays with every 2X3 or 3X2 subblock having no more than three equal edges, and new values 0..2 introduced in row major order.

The programs for A206758, there is no canonical definition to state claims against.
-/

/-! ## A206758.P13412729038190848283

`A206761(A374005(n+1))`
-/

namespace A206758.P13412729038190848283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A374005 (n + 1)).toNat

end

end A206758.P13412729038190848283

/-! ## A206758.P7467029129182804203

`A206761(∑[n+5]+6)`
-/

namespace A206758.P7467029129182804203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A206758.P7467029129182804203

/-!
# A206759: 

The programs for A206759, there is no canonical definition to state claims against.
-/

/-! ## A206759.P15434227687819981737

`A206761(A000217(n+6)-5)`
-/

namespace A206759.P15434227687819981737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A000217 (n + 6) - 5).toNat

end

end A206759.P15434227687819981737

/-! ## A206759.P1155397336148700138

`A206761(A000124(n+6)-6)`
-/

namespace A206759.P1155397336148700138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A000124 (n + 6) - 6).toNat

end

end A206759.P1155397336148700138

/-! ## A206759.P8978028115277247144

`A206761(A014132(∑[n+5]+6))`
-/

namespace A206759.P8978028115277247144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206761 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 6)).toNat

end

end A206759.P8978028115277247144

/-!
# A206762: a(n) is the least number from 1,2,...,n-1, such that n!/a(n)+1 is prime, and a(n)=0, if such number does not exist.

The programs for A206762, there is no canonical definition to state claims against.
-/

/-! ## A206762.P1490032874312210358

`A212281(n+2)%A184442(A184421(2*n+3))`
-/

namespace A206762.P1490032874312210358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212281 (n + 2)) (A184442 (A184421 (2 * n + 3)).toNat)

end

end A206762.P1490032874312210358

/-! ## A206762.P15307893437849626042

`A212281(n+2)%A146308(A127687(n+1))`
-/

namespace A206762.P15307893437849626042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212281 (n + 2)) (A146308 (A127687 (n + 1)).toNat)

end

end A206762.P15307893437849626042

/-! ## A206762.P8087419503712026924

`A212281(n+2)%A154958(A294847(n))`
-/

namespace A206762.P8087419503712026924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212281 (n + 2)) (A154958 (A294847 n).toNat)

end

end A206762.P8087419503712026924

/-! ## A206762.P3230286596253782763

`A000027(A212281(n+2))%A182833(2*n+5)`
-/

namespace A206762.P3230286596253782763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A212281 (n + 2)).toNat) (A182833 (2 * n + 5))

end

end A206762.P3230286596253782763

/-! ## A206762.P17658689004337990663

`A212281(A056561(n+3))%A182833(2*n+5)`
-/

namespace A206762.P17658689004337990663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212281 (A056561 (n + 3)).toNat) (A182833 (2 * n + 5))

end

end A206762.P17658689004337990663

/-!
# A206763: G.f.: Product_{n>=1} [ (1 - (-x)^n) / (1 - (n-1)^n*x^n) ]^(1/n).

The programs for A206763, there is no canonical definition to state claims against.
-/

/-! ## A206763.P8940113719968721732

`A330123(A001281(n!))`
-/

namespace A206763.P8940113719968721732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330123 (A001281 (Nat.factorial n)).toNat

end

end A206763.P8940113719968721732

/-! ## A206763.P13500848601251534525

`A330123(A014682(n!))`
-/

namespace A206763.P13500848601251534525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330123 (A014682 (Nat.factorial n)).toNat

end

end A206763.P13500848601251534525

/-!
# A206764: a(n) = Sum_{k=1..n} binomial(n,k) * sigma(n,k) * (-1)^(n-k).

The programs for A206764, there is no canonical definition to state claims against.
-/

/-! ## A206764.P12494433464097201154

`A109613(n^(n+1))-Δ[A108954(3*n+4)]`
-/

namespace A206764.P12494433464097201154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n ^ (n + 1)) - (f1 (n + 1) - f1 n)

end

end A206764.P12494433464097201154

/-!
# A206765: G.f.: Product_{n>=1} [ (1 - 3^n*x^n) / (1 - (n+3)^n*x^n) ]^(1/n).

The programs for A206765, there is no canonical definition to state claims against.
-/

/-! ## A206765.P18387448655791700577

`A004483(A086627(n))+1`
-/

namespace A206765.P18387448655791700577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A086627 n).toNat + 1

end

end A206765.P18387448655791700577

/-!
# A206767: Number of 1's in first n terms of A205600.

The programs for A206767, there is no canonical definition to state claims against.
-/

/-! ## A206767.P16088279238560290697

`∑[2-A205600(n+1)]`
-/

namespace A206767.P16088279238560290697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A205600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P16088279238560290697

/-! ## A206767.P2681194987771180331

`∑[A205600(A000027(n+1))%2]`
-/

namespace A206767.P2681194987771180331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205600 (A000027 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P2681194987771180331

/-! ## A206767.P15800117030168104753

`A025581(∑[A205600(n+1)+n])`
-/

namespace A206767.P15800117030168104753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205600 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206767.P15800117030168104753

/-! ## A206767.P15317676333763062193

`∑[and(A000328(n), A205600(n+1))]`
-/

namespace A206767.P15317676333763062193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A205600 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P15317676333763062193

/-! ## A206767.P3974309447481211456

`∑[and(A001513(n), A205600(n+1))]`
-/

namespace A206767.P3974309447481211456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A205600 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P3974309447481211456

/-! ## A206767.P10552104662928459542

`∑[and(A001546(n), A205600(n+1))]`
-/

namespace A206767.P10552104662928459542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A205600 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P10552104662928459542

/-! ## A206767.P7145097867918880327

`∑[and(A001844(n), A205600(n+1))]`
-/

namespace A206767.P7145097867918880327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A205600 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P7145097867918880327

/-! ## A206767.P857285325132485429

`∑[and(A004768(n), A205600(n+1))]`
-/

namespace A206767.P857285325132485429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A205600 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P857285325132485429

/-! ## A206767.P10288345026137304910

`∑[A000045(Δ[A205600(n+1)]+1)]`
-/

namespace A206767.P10288345026137304910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P10288345026137304910

/-! ## A206767.P6331468316296896465

`∑[and(A000034(2*n), A205600(n+1))]`
-/

namespace A206767.P6331468316296896465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (2 * n)) (A205600 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206767.P6331468316296896465

/-!
# A206768: a(n) = smallest number k such that sigma(k-n) = sigma(k) - n, with k > n+1.

The programs for A206768, there is no canonical definition to state claims against.
-/

/-! ## A206768.P8307842570331175715

`Δ[∑[n]+∑[A015886(n)]]`
-/

namespace A206768.P8307842570331175715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206768.P8307842570331175715

/-! ## A206768.P18202769407823969166

`A015886(n+1)+1+n`
-/

namespace A206768.P18202769407823969166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015886 (n + 1) + 1 + (n : ℤ)

end

end A206768.P18202769407823969166

/-! ## A206768.P14601381653343428573

`A004442(A015886(n+1)+n)`
-/

namespace A206768.P14601381653343428573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A015886 (n + 1) + (n : ℤ)).toNat

end

end A206768.P14601381653343428573

/-! ## A206768.P3032413274103708496

`A065475(A015886(n+1)+n)`
-/

namespace A206768.P3032413274103708496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A015886 (n + 1) + (n : ℤ)).toNat

end

end A206768.P3032413274103708496

/-! ## A206768.P7243234944730244742

`A109613(A015886(n+1)+n)`
-/

namespace A206768.P7243234944730244742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A015886 (n + 1) + (n : ℤ)).toNat

end

end A206768.P7243234944730244742

/-!
# A206770: Smallest number k such that sigma(k-2*n)=sigma(k)-2*n.

The programs for A206770, there is no canonical definition to state claims against.
-/

/-! ## A206770.P11430237613901583391

`A151800(2*(n+2))-A057764(A353720(3*n+5))`
-/

namespace A206770.P11430237613901583391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (n + 2)) - A057764 (A353720 (3 * n + 5)).toNat

end

end A206770.P11430237613901583391

/-! ## A206770.P5735220301718560993

`A107257(n+1)-A166301(A022166(n))`
-/

namespace A206770.P5735220301718560993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (n + 1) - A166301 (A022166 n).toNat

end

end A206770.P5735220301718560993

/-! ## A206770.P1967666273164555690

`A020484(n+1)-A347088(A152536(n))`
-/

namespace A206770.P1967666273164555690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) - A347088 (A152536 n).toNat

end

end A206770.P1967666273164555690

/-! ## A206770.P2177017085618917345

`A007918(2*(n+2))-A235943(A343847(n))`
-/

namespace A206770.P2177017085618917345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * (n + 2)) - A235943 (A343847 n).toNat

end

end A206770.P2177017085618917345

/-!
# A206771: 0 followed by the numerators of the reduced (A001803(n) + A001790(n)) / (2*A046161(n)).

The programs for A206771, the canonical program `A206771.P12055563301580654612` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206771 has offset 0).

The definition of A206771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206771.P1066121269528861694

`abs(A002596(n)*A191871(n))`
-/

namespace A206771.P1066121269528861694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002596 n * A191871 n|

end

end A206771.P1066121269528861694

namespace A206771

/-- `abs(A002596(n)*A191871(n))` -/
def P1066121269528861694.Spec : Prop :=
  ∀ n, P1066121269528861694.a n = A206771 n

end A206771

/-! ## A206771.P12055563301580654612

`A098597(abs(1-n))*A191871(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206771

/-- `A098597(abs(1-n))*A191871(n)` -/
def P12055563301580654612.Spec : Prop :=
  ∀ n, P12055563301580654612.a n = A206771 n

theorem P12055563301580654612.correct : P12055563301580654612.Spec := by
  intro n
  simp only [A206771]

end A206771

/-! ## A206771.P546950182140308189

`(2*n-A129527(n))*A001790(abs(1-n))`
-/

namespace A206771.P546950182140308189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A129527 n) * A001790 |1 - (n : ℤ)|.toNat

end

end A206771.P546950182140308189

namespace A206771

/-- `(2*n-A129527(n))*A001790(abs(1-n))` -/
def P546950182140308189.Spec : Prop :=
  ∀ n, P546950182140308189.a n = A206771 n

end A206771

/-! ## A206771.P454898496880753453

`A001790(abs(1-n))*A030101(A030101(n))`
-/

namespace A206771.P454898496880753453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 |1 - (n : ℤ)|.toNat * A030101 (A030101 n).toNat

end

end A206771.P454898496880753453

namespace A206771

/-- `A001790(abs(1-n))*A030101(A030101(n))` -/
def P454898496880753453.Spec : Prop :=
  ∀ n, P454898496880753453.a n = A206771 n

end A206771

/-! ## A206771.P2053258913834390267

`(A049084(2*(n+1))-A033999(n))*A002596(n)*A191871(n)`
-/

namespace A206771.P2053258913834390267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049084 (2 * (n + 1)) - A033999 n) * (A002596 n * A191871 n)

end

end A206771.P2053258913834390267

namespace A206771

/-- `(A049084(2*(n+1))-A033999(n))*A002596(n)*A191871(n)` -/
def P2053258913834390267.Spec : Prop :=
  ∀ n, P2053258913834390267.a n = A206771 n

end A206771

/-! ## A206771.P11343802685615182653

`(A049084(2*(n+1))-A009531(2*n+1))*A002596(n)*A191871(n)`
-/

namespace A206771.P11343802685615182653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049084 (2 * (n + 1)) - A009531 (2 * n + 1)) * (A002596 n * A191871 n)

end

end A206771.P11343802685615182653

namespace A206771

/-- `(A049084(2*(n+1))-A009531(2*n+1))*A002596(n)*A191871(n)` -/
def P11343802685615182653.Spec : Prop :=
  ∀ n, P11343802685615182653.a n = A206771 n

end A206771

/-!
# A206772: Table T(n,k)=max{4*n+k-4,n+4*k-4} n, k > 0, read by antidiagonals.

The programs for A206772, the canonical program `A206772.P13480883509910150050` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206772 has offset 1).

The definition of A206772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206772.P9606179278256610881

`A204008(n+1)+A003984(n)`
-/

namespace A206772.P9606179278256610881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (n + 1) + A003984 n

end

end A206772.P9606179278256610881

namespace A206772

/-- `A204008(n+1)+A003984(n)` -/
def P9606179278256610881.Spec : Prop :=
  ∀ n, P9606179278256610881.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P13480883509910150050

`A279891(n)+A204154(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A206772

/-- `A279891(n)+A204154(n+1)` -/
def P13480883509910150050.Spec : Prop :=
  ∀ n, P13480883509910150050.a n = A206772 (n + 1)

theorem P13480883509910150050.correct : P13480883509910150050.Spec := by
  intro n
  simp only [A206772, Nat.add_sub_cancel]

end A206772

/-! ## A206772.P8831265330333691204

`A204154(n+1)+A131507(n)-1`
-/

namespace A206772.P8831265330333691204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + (A131507 n - 1)

end

end A206772.P8831265330333691204

namespace A206772

/-- `A204154(n+1)+A131507(n)-1` -/
def P8831265330333691204.Spec : Prop :=
  ∀ n, P8831265330333691204.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P12823119779785648290

`A204154(n+1)+2*A003056(n)`
-/

namespace A206772.P12823119779785648290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + 2 * A003056 n

end

end A206772.P12823119779785648290

namespace A206772

/-- `A204154(n+1)+2*A003056(n)` -/
def P12823119779785648290.Spec : Prop :=
  ∀ n, P12823119779785648290.a n = A206772 (n + 1)

theorem P12823119779785648290.correct : P12823119779785648290.Spec := by
  intro n
  simp only [A206772, Nat.add_sub_cancel, A206772.P12823119779785648290.a, A206772.P13480883509910150050.a, A003056, A003056.P5318256527314048597.a, A204154, A204154.P17367594193220542085.a, A279891, A279891.P15168887197681408912.a, A111650, A111650.P12812755283030262400.a, A204028, A204028.P5390969343002212322.a, A002024, A002024.P11700297927830783882.a, A036561, A036561.P7490084913005378529.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A206772

/-! ## A206772.P10885731811830967226

`A204004(n+1)+2*A003984(n)`
-/

namespace A206772.P10885731811830967226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + 2 * A003984 n

end

end A206772.P10885731811830967226

namespace A206772

/-- `A204004(n+1)+2*A003984(n)` -/
def P10885731811830967226.Spec : Prop :=
  ∀ n, P10885731811830967226.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P12378483424017564367

`A003983(n+1)+4*A003984(n)`
-/

namespace A206772.P12378483424017564367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + 4 * A003984 n

end

end A206772.P12378483424017564367

namespace A206772

/-- `A003983(n+1)+4*A003984(n)` -/
def P12378483424017564367.Spec : Prop :=
  ∀ n, P12378483424017564367.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P9820914401960803761

`A204004(n+1)+A204022(n+1)-1`
-/

namespace A206772.P9820914401960803761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + (A204022 (n + 1) - 1)

end

end A206772.P9820914401960803761

namespace A206772

/-- `A204004(n+1)+A204022(n+1)-1` -/
def P9820914401960803761.Spec : Prop :=
  ∀ n, P9820914401960803761.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P4311000566837631009

`A111650(n+1)+A204154(n+1)-2`
-/

namespace A206772.P4311000566837631009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A204154 (n + 1) - 2)

end

end A206772.P4311000566837631009

namespace A206772

/-- `A111650(n+1)+A204154(n+1)-2` -/
def P4311000566837631009.Spec : Prop :=
  ∀ n, P4311000566837631009.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P1636232765663562993

`2*A204008(n+1)-A204004(n+1)`
-/

namespace A206772.P1636232765663562993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204008 (n + 1) - A204004 (n + 1)

end

end A206772.P1636232765663562993

namespace A206772

/-- `2*A204008(n+1)-A204004(n+1)` -/
def P1636232765663562993.Spec : Prop :=
  ∀ n, P1636232765663562993.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P16085746053000805529

`A016777(A003984(n))+A003056(n)`
-/

namespace A206772.P16085746053000805529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A003984 n).toNat + A003056 n

end

end A206772.P16085746053000805529

namespace A206772

/-- `A016777(A003984(n))+A003056(n)` -/
def P16085746053000805529.Spec : Prop :=
  ∀ n, P16085746053000805529.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P15075523314376942996

`A008585(A003984(n))+A002024(n+1)`
-/

namespace A206772.P15075523314376942996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A003984 n).toNat + A002024 (n + 1)

end

end A206772.P15075523314376942996

namespace A206772

/-- `A008585(A003984(n))+A002024(n+1)` -/
def P15075523314376942996.Spec : Prop :=
  ∀ n, P15075523314376942996.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P6077720733836455776

`A003056(n)+A001651(A204022(n+1))`
-/

namespace A206772.P6077720733836455776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A001651 (A204022 (n + 1)).toNat

end

end A206772.P6077720733836455776

namespace A206772

/-- `A003056(n)+A001651(A204022(n+1))` -/
def P6077720733836455776.Spec : Prop :=
  ∀ n, P6077720733836455776.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P12267094281347538593

`A004273(A204022(n+1))+A004197(n)`
-/

namespace A206772.P12267094281347538593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A204022 (n + 1)).toNat + A004197 n

end

end A206772.P12267094281347538593

namespace A206772

/-- `A004273(A204022(n+1))+A004197(n)` -/
def P12267094281347538593.Spec : Prop :=
  ∀ n, P12267094281347538593.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P11820696342639605365

`A204154(n+1)+A005843(A003056(n))`
-/

namespace A206772.P11820696342639605365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A005843 (A003056 n).toNat

end

end A206772.P11820696342639605365

namespace A206772

/-- `A204154(n+1)+A005843(A003056(n))` -/
def P11820696342639605365.Spec : Prop :=
  ∀ n, P11820696342639605365.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P15558227028012613239

`A204154(n+1)+A052928(A131507(n))`
-/

namespace A206772.P15558227028012613239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A052928 (A131507 n).toNat

end

end A206772.P15558227028012613239

namespace A206772

/-- `A204154(n+1)+A052928(A131507(n))` -/
def P15558227028012613239.Spec : Prop :=
  ∀ n, P15558227028012613239.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P5376358300344638317

`A005408(2*A003984(n))+A004197(n)`
-/

namespace A206772.P5376358300344638317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A003984 n).toNat + A004197 n

end

end A206772.P5376358300344638317

namespace A206772

/-- `A005408(2*A003984(n))+A004197(n)` -/
def P5376358300344638317.Spec : Prop :=
  ∀ n, P5376358300344638317.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P15850374380658204321

`A204004(n+1)+A204008(n+1)-A002024(n+1)`
-/

namespace A206772.P15850374380658204321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + (A204008 (n + 1) - A002024 (n + 1))

end

end A206772.P15850374380658204321

namespace A206772

/-- `A204004(n+1)+A204008(n+1)-A002024(n+1)` -/
def P15850374380658204321.Spec : Prop :=
  ∀ n, P15850374380658204321.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P5861518595739770078

`A005843(A111650(n+1)-A003983(n+1))-A003983(n+1)`
-/

namespace A206772.P5861518595739770078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A111650 (n + 1) - A003983 (n + 1)).toNat - A003983 (n + 1)

end

end A206772.P5861518595739770078

namespace A206772

/-- `A005843(A111650(n+1)-A003983(n+1))-A003983(n+1)` -/
def P5861518595739770078.Spec : Prop :=
  ∀ n, P5861518595739770078.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P4300349658748005263

`A204154(n+1)+A055086(A061885(n))`
-/

namespace A206772.P4300349658748005263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A055086 (A061885 n).toNat

end

end A206772.P4300349658748005263

namespace A206772

/-- `A204154(n+1)+A055086(A061885(n))` -/
def P4300349658748005263.Spec : Prop :=
  ∀ n, P4300349658748005263.a n = A206772 (n + 1)

end A206772

/-! ## A206772.P3596266099399925316

`A204154(n+1)+A003056(A292564(n))`
-/

namespace A206772.P3596266099399925316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A003056 (A292564 n).toNat

end

end A206772.P3596266099399925316

namespace A206772

/-- `A204154(n+1)+A003056(A292564(n))` -/
def P3596266099399925316.Spec : Prop :=
  ∀ n, P3596266099399925316.a n = A206772 (n + 1)

end A206772

/-!
# A206773: Sum of the nonprime proper divisors (or nonprime aliquot parts) of n.

The programs for A206773, the canonical program `A206773.P1039150232301474807` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206773 has offset 1).

The definition of A206773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206773.P1039150232301474807

`A001065(n+1)-A105221(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A206773

/-- `A001065(n+1)-A105221(n+1)` -/
def P1039150232301474807.Spec : Prop :=
  ∀ n, P1039150232301474807.a n = A206773 (n + 1)

theorem P1039150232301474807.correct : P1039150232301474807.Spec := by
  intro n
  simp only [A206773, Nat.add_sub_cancel]

end A206773

/-! ## A206773.P16523241897027423687

`(A060278(n+1)+1)%(4*n-1)`
-/

namespace A206773.P16523241897027423687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060278 (n + 1) + 1) ((4 * n : ℤ) - 1)

end

end A206773.P16523241897027423687

namespace A206773

/-- `(A060278(n+1)+1)%(4*n-1)` -/
def P16523241897027423687.Spec : Prop :=
  ∀ n, P16523241897027423687.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P11871534098682084765

`A060278(n+1)+A057427(n)`
-/

namespace A206773.P11871534098682084765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1) + A057427 n

end

end A206773.P11871534098682084765

namespace A206773

/-- `A060278(n+1)+A057427(n)` -/
def P11871534098682084765.Spec : Prop :=
  ∀ n, P11871534098682084765.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P3351554079336991247

`A060278(n+1)-A057428(n)`
-/

namespace A206773.P3351554079336991247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1) - A057428 n

end

end A206773.P3351554079336991247

namespace A206773

/-- `A060278(n+1)-A057428(n)` -/
def P3351554079336991247.Spec : Prop :=
  ∀ n, P3351554079336991247.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P17228496545799246996

`A023890(n+1)-A191558(n+1)`
-/

namespace A206773.P17228496545799246996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A191558 (n + 1)

end

end A206773.P17228496545799246996

namespace A206773

/-- `A023890(n+1)-A191558(n+1)` -/
def P17228496545799246996.Spec : Prop :=
  ∀ n, P17228496545799246996.a n = A206773 (n + 1)

theorem P17228496545799246996.correct : P17228496545799246996.Spec := by
  intro n
  simp only [A206773, Nat.add_sub_cancel, A206773.P17228496545799246996.a, A206773.P1039150232301474807.a, A001065, A001065.P4097147489331274860.a, A023890, A023890.P4514850295399263827.a, A105221, A105221.P17719623874901943766.a, A191558, A191558.P14009675995309042097.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A010051, A010051.P15078252821583414300.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A206773

/-! ## A206773.P8340087625220016383

`A060278(n+1)+A139250(n)%2`
-/

namespace A206773.P8340087625220016383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1) + Int.tmod (A139250 n) 2

end

end A206773.P8340087625220016383

namespace A206773

/-- `A060278(n+1)+A139250(n)%2` -/
def P8340087625220016383.Spec : Prop :=
  ∀ n, P8340087625220016383.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P7882948109992092594

`A060278(n+1)+A005171(2*(n+1))`
-/

namespace A206773.P7882948109992092594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1) + A005171 (2 * (n + 1))

end

end A206773.P7882948109992092594

namespace A206773

/-- `A060278(n+1)+A005171(2*(n+1))` -/
def P7882948109992092594.Spec : Prop :=
  ∀ n, P7882948109992092594.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P6449840144394207580

`A060278(n+1)+gcd(n, A132281(n+1))`
-/

namespace A206773.P6449840144394207580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1) + (Int.gcd (n : ℤ) (A132281 (n + 1)) : ℤ)

end

end A206773.P6449840144394207580

namespace A206773

/-- `A060278(n+1)+gcd(n, A132281(n+1))` -/
def P6449840144394207580.Spec : Prop :=
  ∀ n, P6449840144394207580.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P15906996853464000032

`A023890(n+1)-(n+1)*A005171(n+1)`
-/

namespace A206773.P15906996853464000032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - (n + 1 : ℤ) * A005171 (n + 1)

end

end A206773.P15906996853464000032

namespace A206773

/-- `A023890(n+1)-(n+1)*A005171(n+1)` -/
def P15906996853464000032.Spec : Prop :=
  ∀ n, P15906996853464000032.a n = A206773 (n + 1)

theorem P15906996853464000032.correct : P15906996853464000032.Spec := by
  intro n
  simp only [A206773, Nat.add_sub_cancel, A206773.P15906996853464000032.a, A206773.P1039150232301474807.a, A001065, A001065.P4097147489331274860.a, A005171, A005171.P15860856746370777121.a, A023890, A023890.P4514850295399263827.a, A105221, A105221.P17719623874901943766.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A206773

/-! ## A206773.P2277399199345952619

`∑{d}[n+1, A023890(#)*A157658((n+1)/#)]`
-/

namespace A206773.P2277399199345952619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023890 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A206773.P2277399199345952619

namespace A206773

/-- `∑{d}[n+1, A023890(#)*A157658((n+1)/#)]` -/
def P2277399199345952619.Spec : Prop :=
  ∀ n, P2277399199345952619.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P14230588083005028410

`∑{d}[n+1, A344617(#)*A358077((n+1)/#)]`
-/

namespace A206773.P14230588083005028410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344617 d * A358077 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A206773.P14230588083005028410

namespace A206773

/-- `∑{d}[n+1, A344617(#)*A358077((n+1)/#)]` -/
def P14230588083005028410.Spec : Prop :=
  ∀ n, P14230588083005028410.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P16946017183087096364

`∑{d}[n+1, A057427(#-1)*A191558((n+1)/#)]`
-/

namespace A206773.P16946017183087096364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A206773.P16946017183087096364

namespace A206773

/-- `∑{d}[n+1, A057427(#-1)*A191558((n+1)/#)]` -/
def P16946017183087096364.Spec : Prop :=
  ∀ n, P16946017183087096364.a n = A206773 (n + 1)

end A206773

/-! ## A206773.P6100264157148700922

`A001065(n+1)+A061397(n+1)-A008472(n+1)`
-/

namespace A206773.P6100264157148700922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A061397 (n + 1) - A008472 (n + 1))

end

end A206773.P6100264157148700922

namespace A206773

/-- `A001065(n+1)+A061397(n+1)-A008472(n+1)` -/
def P6100264157148700922.Spec : Prop :=
  ∀ n, P6100264157148700922.a n = A206773 (n + 1)

theorem P6100264157148700922.correct : P6100264157148700922.Spec := by
  intro n
  simp only [A206773, Nat.add_sub_cancel, A206773.P6100264157148700922.a, A206773.P1039150232301474807.a, A001065, A001065.P4097147489331274860.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A061397, A061397.P17730824645895443051.a, A105221, A105221.P17719623874901943766.a, A000027, A000027.P10331202704469894836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A206773

/-! ## A206773.P3456502917434567280

`A060278(n+1)+A001065(n+1)/A173455(n+1)`
-/

namespace A206773.P3456502917434567280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060278 (n + 1) : ℚ) + (A001065 (n + 1) : ℚ) / (A173455 (n + 1) : ℚ)

end

end A206773.P3456502917434567280

namespace A206773

/-- `A060278(n+1)+A001065(n+1)/A173455(n+1)` -/
def P3456502917434567280.Spec : Prop :=
  ∀ n, P3456502917434567280.a n = (A206773 (n + 1) : ℚ)

end A206773

/-! ## A206773.P10955380814641372927

`A023890(A103164(n+1))-A103164(n+1)`
-/

namespace A206773.P10955380814641372927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A103164 (n + 1)).toNat - A103164 (n + 1)

end

end A206773.P10955380814641372927

namespace A206773

/-- `A023890(A103164(n+1))-A103164(n+1)` -/
def P10955380814641372927.Spec : Prop :=
  ∀ n, P10955380814641372927.a n = A206773 (n + 1)

end A206773

/-!
# A206774: First differences of A033922.

The programs for A206774, there is no canonical definition to state claims against.
-/

/-! ## A206774.P1716759125193039857

`A033922(n+1)-A033922(n)`
-/

namespace A206774.P1716759125193039857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (n + 1) - A033922 n

end

end A206774.P1716759125193039857

/-! ## A206774.P15850799237996517894

`Δ[A033922(n)]`
-/

namespace A206774.P15850799237996517894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206774.P15850799237996517894

/-! ## A206774.P8306871563454641950

`Δ[A326032(n)-A040001(n)]`
-/

namespace A206774.P8306871563454641950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 n - A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206774.P8306871563454641950

/-! ## A206774.P4149891116224030652

`Δ[A326032(n)]-A062157(n)`
-/

namespace A206774.P4149891116224030652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062157 n

end

end A206774.P4149891116224030652

/-! ## A206774.P12574664693068258106

`Δ[A326032(n)+A135528(n+1)]`
-/

namespace A206774.P12574664693068258106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 n + A135528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206774.P12574664693068258106

/-!
# A206776: a(n) = 3*a(n-1) + 2*a(n-2) for n>1, a(0)=2, a(1)=3.

The programs for A206776, the canonical program `A206776.P2228107440392899219` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206776 has offset 0).

The definition of A206776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)` (program `A206776.P2228107440392899219`, by `A206776.P2228107440392899219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206776.P2228107440392899219

`3*a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206776

/-- `3*a(n-1)+2*a(n-2)` -/
def P2228107440392899219.Spec : Prop :=
  ∀ n, (P2228107440392899219.a n : ℤ) = A206776 n

theorem P2228107440392899219.correct : P2228107440392899219.Spec := by
  intro n
  simp only [A206776]

end A206776

/-! ## A206776.P18424871724765721369

`((3+sqrt(17))/2)^n+((3-sqrt(17))/2)^n`
-/

namespace A206776.P18424871724765721369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (17 : ℝ)) / 2) ^ n + ((3 - Real.sqrt (17 : ℝ)) / 2) ^ n

end

end A206776.P18424871724765721369

namespace A206776

/-- `((3+sqrt(17))/2)^n+((3-sqrt(17))/2)^n` -/
def P18424871724765721369.Spec : Prop :=
  ∀ n, P18424871724765721369.a n = (A206776 n : ℝ)

theorem P18424871724765721369.correct : P18424871724765721369.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A206776, Nat.add_sub_cancel, A206776.P18424871724765721369.a, A206776.P2228107440392899219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A206776, Nat.add_sub_cancel, A206776.P18424871724765721369.a, A206776.P2228107440392899219.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A206776

/-! ## A206776.P16534254189010722152

`ogf((-2+3x)/(-1+3x+2x^2))`
-/

namespace A206776.P16534254189010722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -3, -2] n

end

end A206776.P16534254189010722152

namespace A206776

/-- `ogf((-2+3x)/(-1+3x+2x^2))` -/
def P16534254189010722152.Spec : Prop :=
  ∀ n, P16534254189010722152.a n = A206776 n

end A206776

/-! ## A206776.P3870098404426791279

`Δ[2*a(n-2)-(1-3*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A206776.P3870098404426791279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 2) - (1 - 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206776.P3870098404426791279

namespace A206776

/-- `Δ[2*a(n-2)-(1-3*a(n-1))]` -/
def P3870098404426791279.Spec : Prop :=
  ∀ n, P3870098404426791279.a n = A206776 n

end A206776

/-! ## A206776.P17550935063640596997

`abs(2*a(n-2)-(a(n-1)-4*a(n-1)))` with `a(0)=2, a(1)=3`
-/

namespace A206776.P17550935063640596997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))|

end

end A206776.P17550935063640596997

namespace A206776

/-- `abs(2*a(n-2)-(a(n-1)-4*a(n-1)))` -/
def P17550935063640596997.Spec : Prop :=
  ∀ n, P17550935063640596997.a n = A206776 n

end A206776

/-! ## A206776.P11012435225959059104

`floor(2*a(n-2)-(a(n-1)-4*a(n-1)))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A206776.P11012435225959059104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A206776.P11012435225959059104

namespace A206776

/-- `floor(2*a(n-2)-(a(n-1)-4*a(n-1)))` -/
def P11012435225959059104.Spec : Prop :=
  ∀ n, P11012435225959059104.a n = A206776 n

end A206776

/-! ## A206776.P1996348239646202491

`abs(xor(1, -A124805(n)))`
-/

namespace A206776.P1996348239646202491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A124805 n)|

end

end A206776.P1996348239646202491

namespace A206776

/-- `abs(xor(1, -A124805(n)))` -/
def P1996348239646202491.Spec : Prop :=
  ∀ n, P1996348239646202491.a n = A206776 n

end A206776

/-! ## A206776.P395750165740140633

`abs(A124805(n)-A158388(n))`
-/

namespace A206776.P395750165740140633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124805 n - A158388 n|

end

end A206776.P395750165740140633

namespace A206776

/-- `abs(A124805(n)-A158388(n))` -/
def P395750165740140633.Spec : Prop :=
  ∀ n, P395750165740140633.a n = A206776 n

end A206776

/-! ## A206776.P7677789103128652782

`gcd(1-A124805(n), A000038(n))`
-/

namespace A206776.P7677789103128652782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A124805 n) (A000038 n)

end

end A206776.P7677789103128652782

namespace A206776

/-- `gcd(1-A124805(n), A000038(n))` -/
def P7677789103128652782.Spec : Prop :=
  ∀ n, (P7677789103128652782.a n : ℤ) = A206776 n

end A206776

/-! ## A206776.P1200082417060903067

`abs(A153881(n+1)+A124805(n))`
-/

namespace A206776.P1200082417060903067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153881 (n + 1) + A124805 n|

end

end A206776.P1200082417060903067

namespace A206776

/-- `abs(A153881(n+1)+A124805(n))` -/
def P1200082417060903067.Spec : Prop :=
  ∀ n, P1200082417060903067.a n = A206776 n

end A206776

/-! ## A206776.P13576285176366493797

`Δ[A180144(n)-A104934(n)]`
-/

namespace A206776.P13576285176366493797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n - A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206776.P13576285176366493797

namespace A206776

/-- `Δ[A180144(n)-A104934(n)]` -/
def P13576285176366493797.Spec : Prop :=
  ∀ n, P13576285176366493797.a n = A206776 n

end A206776

/-!
# A206778: Irregular triangle in which n-th row lists squarefree divisors (A005117) of n.

The programs for A206778, the canonical program `A206778.P8563083119957903362` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206778 has offset 1).

The definition of A206778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206778.P5538895318839712966

`filter[A027750(n+1), A008966(#)]`
-/

namespace A206778.P5538895318839712966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P5538895318839712966

namespace A206778

/-- `filter[A027750(n+1), A008966(#)]` -/
def P5538895318839712966.Spec : Prop :=
  ∀ n, P5538895318839712966.a n = A206778 (n + 1)

end A206778

/-! ## A206778.P1869900390017183282

`filter[A394673(n+1), A008966(#)]`
-/

namespace A206778.P1869900390017183282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P1869900390017183282

namespace A206778

/-- `filter[A394673(n+1), A008966(#)]` -/
def P1869900390017183282.Spec : Prop :=
  ∀ n, P1869900390017183282.a n = A206778 (n + 1)

end A206778

/-! ## A206778.P12563024440688228180

`A027750(record[lcm(n+1, A225817(n+1))])`
-/

namespace A206778.P12563024440688228180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A225817 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A206778.P12563024440688228180

namespace A206778

/-- `A027750(record[lcm(n+1, A225817(n+1))])` -/
def P12563024440688228180.Spec : Prop :=
  ∀ n, P12563024440688228180.a n = A206778 (n + 1)

end A206778

/-! ## A206778.P15065394055607225025

`A027750(eq[1, ∏{e}[A027750(n+1), #]]+1)`
-/

namespace A206778.P15065394055607225025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A206778.P15065394055607225025

namespace A206778

/-- `A027750(eq[1, ∏{e}[A027750(n+1), #]]+1)` -/
def P15065394055607225025.Spec : Prop :=
  ∀ n, P15065394055607225025.a n = A206778 (n + 1)

end A206778

/-! ## A206778.P8563083119957903362

`filter[A162306(n+1), A008966(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A206778

/-- `filter[A162306(n+1), A008966(#)]` -/
def P8563083119957903362.Spec : Prop :=
  ∀ n, P8563083119957903362.a n = A206778 (n + 1)

theorem P8563083119957903362.correct : P8563083119957903362.Spec := by
  intro n
  simp only [A206778, Nat.add_sub_cancel]

end A206778

/-! ## A206778.P3684440781554468278

`filter[A376248(n+1), A008966(#)]`
-/

namespace A206778.P3684440781554468278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P3684440781554468278

namespace A206778

/-- `filter[A376248(n+1), A008966(#)]` -/
def P3684440781554468278.Spec : Prop :=
  ∀ n, P3684440781554468278.a n = A206778 (n + 1)

end A206778

/-! ## A206778.P5242011043775909932

`A002260(eq[A002260(n+1), A130106(n+1)]+1)`
-/

namespace A206778.P5242011043775909932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A206778.P5242011043775909932

namespace A206778

/-- `A002260(eq[A002260(n+1), A130106(n+1)]+1)` -/
def P5242011043775909932.Spec : Prop :=
  ∀ n, P5242011043775909932.a n = A206778 (n + 1)

end A206778

/-!
# A206779: Number of n X n 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206779, there is no canonical definition to state claims against.
-/

/-! ## A206779.P13802407394110214447

`A206785(∑[4*n]+1)`
-/

namespace A206779.P13802407394110214447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206779.P13802407394110214447

/-! ## A206779.P4133067923544901177

`lcm(2, A206785(A001844(n)))`
-/

namespace A206779.P4133067923544901177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206785 (A001844 n).toNat)

end

end A206779.P4133067923544901177

/-! ## A206779.P715758187504792758

`record[gcd(A114327(n), A206785(n+1))]`
-/

namespace A206779.P715758187504792758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206785 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206779.P715758187504792758

/-! ## A206779.P6677918864469718007

`A206785(A001844(n))+A185203(n)`
-/

namespace A206779.P6677918864469718007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A001844 n).toNat + A185203 n

end

end A206779.P6677918864469718007

/-! ## A206779.P3480105581491660813

`A206785(A001844(n))+A185246(n)`
-/

namespace A206779.P3480105581491660813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A001844 n).toNat + A185246 n

end

end A206779.P3480105581491660813

/-!
# A206780: Number of nX3 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206780, there is no canonical definition to state claims against.
-/

/-! ## A206780.P17972772035759182082

`A206785(∑[n+2]+4)`
-/

namespace A206780.P17972772035759182082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206780.P17972772035759182082

/-! ## A206780.P8645357681266433100

`lcm((-1)^n, A206785(A167614(n+1)))`
-/

namespace A206780.P8645357681266433100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A206785 (A167614 (n + 1)).toNat)

end

end A206780.P8645357681266433100

/-! ## A206780.P3425745480827633706

`A206785(A167614(n+1))+A025469(n)`
-/

namespace A206780.P3425745480827633706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A167614 (n + 1)).toNat + A025469 n

end

end A206780.P3425745480827633706

/-! ## A206780.P4694966422826599357

`A206785(A167614(n+1))+A185246(n)`
-/

namespace A206780.P4694966422826599357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A167614 (n + 1)).toNat + A185246 n

end

end A206780.P4694966422826599357

/-! ## A206780.P1245508767750714204

`A206785(A167614(n+1))+A185284(n)`
-/

namespace A206780.P1245508767750714204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A167614 (n + 1)).toNat + A185284 n

end

end A206780.P1245508767750714204

/-!
# A206781: Number of nX4 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206781, there is no canonical definition to state claims against.
-/

/-! ## A206781.P436268493444780243

`A206785(A374004(n+1))`
-/

namespace A206781.P436268493444780243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A374004 (n + 1)).toNat

end

end A206781.P436268493444780243

/-! ## A206781.P13264739030366248250

`A206785(A141214(n)+7)`
-/

namespace A206781.P13264739030366248250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A141214 n + 7).toNat

end

end A206781.P13264739030366248250

/-! ## A206781.P15564752492231755245

`A206785(A052905(n)+9)`
-/

namespace A206781.P15564752492231755245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A052905 n + 9).toNat

end

end A206781.P15564752492231755245

/-! ## A206781.P18159222852475030571

`A206785(A055999(n)+10)`
-/

namespace A206781.P18159222852475030571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A055999 n + 10).toNat

end

end A206781.P18159222852475030571

/-! ## A206781.P5812992811116232429

`A206785(A167614(n+2)+1)`
-/

namespace A206781.P5812992811116232429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A167614 (n + 2) + 1).toNat

end

end A206781.P5812992811116232429

/-!
# A206782: Number of nX5 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206782, there is no canonical definition to state claims against.
-/

/-! ## A206782.P874601375503016873

`A206785(A374005(n+1))`
-/

namespace A206782.P874601375503016873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A374005 (n + 1)).toNat

end

end A206782.P874601375503016873

/-! ## A206782.P11760711001685530373

`A206785(A155212(n)+13)`
-/

namespace A206782.P11760711001685530373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A155212 n + 13).toNat

end

end A206782.P11760711001685530373

/-! ## A206782.P2853261601309371513

`A206785(A056000(n)+15)`
-/

namespace A206782.P2853261601309371513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A056000 n + 15).toNat

end

end A206782.P2853261601309371513

/-! ## A206782.P10637540638312586999

`A206785(A000124(n+4)+4)`
-/

namespace A206782.P10637540638312586999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A000124 (n + 4) + 4).toNat

end

end A206782.P10637540638312586999

/-! ## A206782.P5623619640297765968

`A206785(A000096(n+3)+6)`
-/

namespace A206782.P5623619640297765968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A000096 (n + 3) + 6).toNat

end

end A206782.P5623619640297765968

/-!
# A206783: Number of nX6 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206783, there is no canonical definition to state claims against.
-/

/-! ## A206783.P7088870308699919490

`A206785(A374007(n+1))`
-/

namespace A206783.P7088870308699919490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A374007 (n + 1)).toNat

end

end A206783.P7088870308699919490

/-! ## A206783.P60895225373771045

`A206785(A052905(n+3))`
-/

namespace A206783.P60895225373771045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A052905 (n + 3)).toNat

end

end A206783.P60895225373771045

/-! ## A206783.P9296606166013816897

`A206785(eq[5, A193592(n)])`
-/

namespace A206783.P9296606166013816897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206783.P9296606166013816897

/-! ## A206783.P7393159730863790637

`A206785(eq[8, A258709(n)])`
-/

namespace A206783.P7393159730863790637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206783.P7393159730863790637

/-! ## A206783.P12754636502259185739

`A206785(Δ[Δ[A006504(n+1)]])`
-/

namespace A206783.P12754636502259185739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (f1 (n + 1) - f1 n).toNat

end

end A206783.P12754636502259185739

/-!
# A206784: Number of nX7 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206784, there is no canonical definition to state claims against.
-/

/-! ## A206784.P7759832738699686483

`A206785(A374008(n+1))`
-/

namespace A206784.P7759832738699686483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A374008 (n + 1)).toNat

end

end A206784.P7759832738699686483

/-! ## A206784.P6340430855779863076

`A206785(eq[11, A066657(n)])`
-/

namespace A206784.P6340430855779863076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206784.P6340430855779863076

/-! ## A206784.P13461105046585939666

`A206785(A000096(n+5)+8)`
-/

namespace A206784.P13461105046585939666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (A000096 (n + 5) + 8).toNat

end

end A206784.P13461105046585939666

/-! ## A206784.P4428721680311836818

`A206785(eq[8, A131818(n+1)])`
-/

namespace A206784.P4428721680311836818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206784.P4428721680311836818

/-! ## A206784.P14022309067217130229

`A206785(eq[6, A193592(n)])`
-/

namespace A206784.P14022309067217130229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206784.P14022309067217130229

/-!
# A206785: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 1 horizontally and 0 1 1 vertically.

The programs for A206785, there is no canonical definition to state claims against.
-/

/-! ## A206785.P7329097185198073791

`A188523(n+1)+A173636(A174545(n))`
-/

namespace A206785.P7329097185198073791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A173636 (A174545 n).toNat

end

end A206785.P7329097185198073791

/-! ## A206785.P4923915221883876367

`A188523(n+1)+A014707(A022171(n))`
-/

namespace A206785.P4923915221883876367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A014707 (A022171 n).toNat

end

end A206785.P4923915221883876367

/-! ## A206785.P7102317521948860740

`A188523(n+1)+A025465(A023105(n))`
-/

namespace A206785.P7102317521948860740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A025465 (A023105 n).toNat

end

end A206785.P7102317521948860740

/-! ## A206785.P18211232754273039996

`A188523(n+1)+A025469(A045925(n))`
-/

namespace A206785.P18211232754273039996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A025469 (A045925 n).toNat

end

end A206785.P18211232754273039996

/-! ## A206785.P5377560585832657493

`A188523(n+1)+A055641(A022112(n))`
-/

namespace A206785.P5377560585832657493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A055641 (A022112 n).toNat

end

end A206785.P5377560585832657493

/-!
# A206787: Sum of the odd squarefree divisors of n.

The programs for A206787, the canonical program `A206787.P5835391057460083436` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206787 has offset 1).

The definition of A206787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206787.P4541120778110416751

`A000593(A007947(n+1))`
-/

namespace A206787.P4541120778110416751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A007947 (n + 1)).toNat

end

end A206787.P4541120778110416751

namespace A206787

/-- `A000593(A007947(n+1))` -/
def P4541120778110416751.Spec : Prop :=
  ∀ n, P4541120778110416751.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P5037948187353537382

`A000203(A204455(n+1))`
-/

namespace A206787.P5037948187353537382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A204455 (n + 1)).toNat

end

end A206787.P5037948187353537382

namespace A206787

/-- `A000203(A204455(n+1))` -/
def P5037948187353537382.Spec : Prop :=
  ∀ n, P5037948187353537382.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P5835391057460083436

`A048250(n+1)/A010684(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A206787

/-- `A048250(n+1)/A010684(n)` -/
def P5835391057460083436.Spec : Prop :=
  ∀ n, P5835391057460083436.a n = (A206787 (n + 1) : ℚ)

end A206787

/-! ## A206787.P9971325342780261894

`A347385(n+1)/A336651(n+1)`
-/

namespace A206787.P9971325342780261894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347385 (n + 1) : ℚ) / (A336651 (n + 1) : ℚ)

end

end A206787.P9971325342780261894

namespace A206787

/-- `A347385(n+1)/A336651(n+1)` -/
def P9971325342780261894.Spec : Prop :=
  ∀ n, P9971325342780261894.a n = (A206787 (n + 1) : ℚ)

end A206787

/-! ## A206787.P15122277941373399412

`A048250(n+1)/A176040(n+1)`
-/

namespace A206787.P15122277941373399412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A176040 (n + 1) : ℚ)

end

end A206787.P15122277941373399412

namespace A206787

/-- `A048250(n+1)/A176040(n+1)` -/
def P15122277941373399412.Spec : Prop :=
  ∀ n, P15122277941373399412.a n = (A206787 (n + 1) : ℚ)

end A206787

/-! ## A206787.P9068734109565464103

`∏{p}[n+1, -xor(1, -#)]`
-/

namespace A206787.P9068734109565464103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-Int.xor 1 (-(p : ℤ)))

end

end A206787.P9068734109565464103

namespace A206787

/-- `∏{p}[n+1, -xor(1, -#)]` -/
def P9068734109565464103.Spec : Prop :=
  ∀ n, P9068734109565464103.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P12198174535807167217

`∏{p}[n+1, #-(-1)^#]`
-/

namespace A206787.P12198174535807167217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (-1) ^ p)

end

end A206787.P12198174535807167217

namespace A206787

/-- `∏{p}[n+1, #-(-1)^#]` -/
def P12198174535807167217.Spec : Prop :=
  ∀ n, P12198174535807167217.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P2272606108900603340

`A000593(∏{p}[n+1, #])`
-/

namespace A206787.P2272606108900603340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206787.P2272606108900603340

namespace A206787

/-- `A000593(∏{p}[n+1, #])` -/
def P2272606108900603340.Spec : Prop :=
  ∀ n, P2272606108900603340.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P9767301961219784600

`A113184(∏{p}[n+1, #])`
-/

namespace A206787.P9767301961219784600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206787.P9767301961219784600

namespace A206787

/-- `A113184(∏{p}[n+1, #])` -/
def P9767301961219784600.Spec : Prop :=
  ∀ n, P9767301961219784600.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P11442590421960114274

`A192066(∏{p}[n+1, #])`
-/

namespace A206787.P11442590421960114274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206787.P11442590421960114274

namespace A206787

/-- `A192066(∏{p}[n+1, #])` -/
def P11442590421960114274.Spec : Prop :=
  ∀ n, P11442590421960114274.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P9158063145819628205

`A253629(∏{p}[n+1, #])`
-/

namespace A206787.P9158063145819628205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253629 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206787.P9158063145819628205

namespace A206787

/-- `A253629(∏{p}[n+1, #])` -/
def P9158063145819628205.Spec : Prop :=
  ∀ n, P9158063145819628205.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P17361352179040974514

`A300894(∏{p}[n+1, #])`
-/

namespace A206787.P17361352179040974514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300894 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206787.P17361352179040974514

namespace A206787

/-- `A300894(∏{p}[n+1, #])` -/
def P17361352179040974514.Spec : Prop :=
  ∀ n, P17361352179040974514.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P13837030905921991464

`A327095(∏{p}[n+1, #])`
-/

namespace A206787.P13837030905921991464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A206787.P13837030905921991464

namespace A206787

/-- `A327095(∏{p}[n+1, #])` -/
def P13837030905921991464.Spec : Prop :=
  ∀ n, P13837030905921991464.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P14240689252484025975

`A319697(2*(n+1))/2`
-/

namespace A206787.P14240689252484025975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319697 (2 * (n + 1)) : ℚ) / 2

end

end A206787.P14240689252484025975

namespace A206787

/-- `A319697(2*(n+1))/2` -/
def P14240689252484025975.Spec : Prop :=
  ∀ n, P14240689252484025975.a n = (A206787 (n + 1) : ℚ)

end A206787

/-! ## A206787.P5096483454895098559

`∑{d}[n+1, #*A323239(#)]`
-/

namespace A206787.P5096483454895098559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323239 d

end

end A206787.P5096483454895098559

namespace A206787

/-- `∑{d}[n+1, #*A323239(#)]` -/
def P5096483454895098559.Spec : Prop :=
  ∀ n, P5096483454895098559.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P4413997888673112055

`A000203(∏{p}[2*(n+1), #]/2)`
-/

namespace A206787.P4413997888673112055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2)).toNat

end

end A206787.P4413997888673112055

namespace A206787

/-- `A000203(∏{p}[2*(n+1), #]/2)` -/
def P4413997888673112055.Spec : Prop :=
  ∀ n, P4413997888673112055.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P18125839855991067729

`∏{p}[n+2+n, A000203(#)]/3`
-/

namespace A206787.P18125839855991067729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A000203 p : ℤ) : ℚ) / 3

end

end A206787.P18125839855991067729

namespace A206787

/-- `∏{p}[n+2+n, A000203(#)]/3` -/
def P18125839855991067729.Spec : Prop :=
  ∀ n, P18125839855991067729.a n = (A206787 (n + 1) : ℚ)

end A206787

/-! ## A206787.P15802189517152608219

`A048250(A000265(n+1))`
-/

namespace A206787.P15802189517152608219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A000265 (n + 1)).toNat

end

end A206787.P15802189517152608219

namespace A206787

/-- `A048250(A000265(n+1))` -/
def P15802189517152608219.Spec : Prop :=
  ∀ n, P15802189517152608219.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P5519520978031978865

`A300894(A065883(n+1))`
-/

namespace A206787.P5519520978031978865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300894 (A065883 (n + 1)).toNat

end

end A206787.P5519520978031978865

namespace A206787

/-- `A300894(A065883(n+1))` -/
def P5519520978031978865.Spec : Prop :=
  ∀ n, P5519520978031978865.a n = A206787 (n + 1)

end A206787

/-! ## A206787.P12823478113214478487

`A347385(2*A204455(n+1))`
-/

namespace A206787.P12823478113214478487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347385 (2 * A204455 (n + 1)).toNat

end

end A206787.P12823478113214478487

namespace A206787

/-- `A347385(2*A204455(n+1))` -/
def P12823478113214478487.Spec : Prop :=
  ∀ n, P12823478113214478487.a n = A206787 (n + 1)

end A206787

/-!
# A206788: Denominators of semiconvergents to log_2(3), which equals log(3)/log(2).

The programs for A206788, there is no canonical definition to state claims against.
-/

/-! ## A206788.P8835198849348313533

`A245325(A332579(n)+A000975(n+2))`
-/

namespace A206788.P8835198849348313533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A332579 n + A000975 (n + 2)).toNat

end

end A206788.P8835198849348313533

/-! ## A206788.P1288173358740024889

`A181657(∑[xor(1, n)+1])`
-/

namespace A206788.P1288173358740024889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206788.P1288173358740024889

/-! ## A206788.P208381127705703029

`A181657(∑[-xor(n, -2)])`
-/

namespace A206788.P208381127705703029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206788.P208381127705703029

/-! ## A206788.P2027773226333653484

`A070082(A148375(n))`
-/

namespace A206788.P2027773226333653484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A148375 n).toNat

end

end A206788.P2027773226333653484

/-! ## A206788.P10997565398238176298

`A194967(A257863(n))`
-/

namespace A206788.P10997565398238176298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A257863 n).toNat

end

end A206788.P10997565398238176298

/-!
# A206789: Number of n X n 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206789, there is no canonical definition to state claims against.
-/

/-! ## A206789.P10545306570869083439

`A206797(∑[4*n]+1)`
-/

namespace A206789.P10545306570869083439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206789.P10545306570869083439

/-!
# A206790: Number of nX1 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206790, the canonical program `A206790.P4473329158765432903` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206790 has offset 1).

The definition of A206790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206790.P9511177049033683651

`ogf((4+x^2)/(1-4x+x^2-x^3))`
-/

namespace A206790.P9511177049033683651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 1] [1, -4, 1, -1] n

end

end A206790.P9511177049033683651

namespace A206790

/-- `ogf((4+x^2)/(1-4x+x^2-x^3))` -/
def P9511177049033683651.Spec : Prop :=
  ∀ n, P9511177049033683651.a n = A206790 (n + 1)

end A206790

/-! ## A206790.P4473329158765432903

`4*a(n-1)-a(n-2)+a(n-3)` with `a(0)=4, a(1)=16, a(2)=61`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206790

/-- `4*a(n-1)-a(n-2)+a(n-3)` -/
def P4473329158765432903.Spec : Prop :=
  ∀ n, P4473329158765432903.a n = A206790 (n + 1)

theorem P4473329158765432903.correct : P4473329158765432903.Spec := by
  intro n
  simp only [A206790, Nat.add_sub_cancel]

end A206790

/-! ## A206790.P10839368930708509867

`sqrt(A206791(n+1))`
-/

namespace A206790.P10839368930708509867
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206791 (n + 1) : ℝ)

end

end A206790.P10839368930708509867

namespace A206790

/-- `sqrt(A206791(n+1))` -/
def P10839368930708509867.Spec : Prop :=
  ∀ n, P10839368930708509867.a n = (A206790 (n + 1) : ℝ)

end A206790

/-! ## A206790.P8511657572837624054

`A206967(∑[n]+1)`
-/

namespace A206790.P8511657572837624054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206790.P8511657572837624054

namespace A206790

/-- `A206967(∑[n]+1)` -/
def P8511657572837624054.Spec : Prop :=
  ∀ n, P8511657572837624054.a n = A206790 (n + 1)

end A206790

/-! ## A206790.P15547012784899007810

`record[root(A206967(n+1), A008277(n+1))]`
-/

namespace A206790.P15547012784899007810
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206967 (n + 1) : ℝ) ^ (1 / (A008277 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206790.P15547012784899007810

namespace A206790

/-- `record[root(A206967(n+1), A008277(n+1))]` -/
def P15547012784899007810.Spec : Prop :=
  ∀ n, P15547012784899007810.a n = (A206790 (n + 1) : ℝ)

end A206790

/-!
# A206791: Number of n X 2 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206791, the canonical program `A206791.P11088321705880561275` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206791 has offset 1).

The definition of A206791 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206790, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206791.P11088321705880561275

`A206790(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206791

/-- `A206790(n+1)²` -/
def P11088321705880561275.Spec : Prop :=
  ∀ n, P11088321705880561275.a n = A206791 (n + 1)

theorem P11088321705880561275.correct : P11088321705880561275.Spec := by
  intro n
  simp only [A206791, Nat.add_sub_cancel]

end A206791

/-! ## A206791.P18180922705177389512

`record[A206790(A152271(n))²]`
-/

namespace A206791.P18180922705177389512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206790 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206791.P18180922705177389512

namespace A206791

/-- `record[A206790(A152271(n))²]` -/
def P18180922705177389512.Spec : Prop :=
  ∀ n, P18180922705177389512.a n = A206791 (n + 1)

end A206791

/-! ## A206791.P6584707114394457366

`record[A206790(A152271(n))]*A206790(n+1)`
-/

namespace A206791.P6584707114394457366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206790 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A206790 (n + 1)

end

end A206791.P6584707114394457366

namespace A206791

/-- `record[A206790(A152271(n))]*A206790(n+1)` -/
def P6584707114394457366.Spec : Prop :=
  ∀ n, P6584707114394457366.a n = A206791 (n + 1)

end A206791

/-! ## A206791.P4748997171249410672

`A206790(n+1)^A000005(A001359(n+1))`
-/

namespace A206791.P4748997171249410672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206790 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A206791.P4748997171249410672

namespace A206791

/-- `A206790(n+1)^A000005(A001359(n+1))` -/
def P4748997171249410672.Spec : Prop :=
  ∀ n, P4748997171249410672.a n = (A206791 (n + 1) : ℚ)

end A206791

/-! ## A206791.P4760212343184063764

`A206790(n+1)^A000005(A033216(n+1))`
-/

namespace A206791.P4760212343184063764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206790 (n + 1) : ℚ) ^ (A000005 (A033216 (n + 1)).toNat : ℤ)

end

end A206791.P4760212343184063764

namespace A206791

/-- `A206790(n+1)^A000005(A033216(n+1))` -/
def P4760212343184063764.Spec : Prop :=
  ∀ n, P4760212343184063764.a n = (A206791 (n + 1) : ℚ)

end A206791

/-! ## A206791.P15608668733097634373

`A206790(n+1)^A000005(A247981(n+1))`
-/

namespace A206791.P15608668733097634373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206790 (n + 1) : ℚ) ^ (A000005 (A247981 (n + 1)).toNat : ℤ)

end

end A206791.P15608668733097634373

namespace A206791

/-- `A206790(n+1)^A000005(A247981(n+1))` -/
def P15608668733097634373.Spec : Prop :=
  ∀ n, P15608668733097634373.a n = (A206791 (n + 1) : ℚ)

end A206791

/-! ## A206791.P3455706712443528457

`A206790(n+1)^A248218(A256342(n+1))`
-/

namespace A206791.P3455706712443528457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206790 (n + 1) : ℚ) ^ (A248218 (A256342 (n + 1)).toNat : ℤ)

end

end A206791.P3455706712443528457

namespace A206791

/-- `A206790(n+1)^A248218(A256342(n+1))` -/
def P3455706712443528457.Spec : Prop :=
  ∀ n, P3455706712443528457.a n = (A206791 (n + 1) : ℚ)

end A206791

/-!
# A206792: Number of nX3 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206792, there is no canonical definition to state claims against.
-/

/-! ## A206792.P6486010648970569352

`A206797(∑[n+2]+4)`
-/

namespace A206792.P6486010648970569352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206792.P6486010648970569352

/-! ## A206792.P3339338654622236214

`A347689(n)+A206797(A167614(n+1))`
-/

namespace A206792.P3339338654622236214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A206797 (A167614 (n + 1)).toNat

end

end A206792.P3339338654622236214

/-! ## A206792.P6420779070623112716

`A206797(A167614(n+1))*A238015(n)`
-/

namespace A206792.P6420779070623112716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A167614 (n + 1)).toNat * A238015 n

end

end A206792.P6420779070623112716

/-! ## A206792.P3870845870878630425

`A206797(A167614(n+1))*A257463(n)`
-/

namespace A206792.P3870845870878630425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A167614 (n + 1)).toNat * A257463 n

end

end A206792.P3870845870878630425

/-! ## A206792.P854186393581371996

`lcm(A020985(n), A206797(A167614(n+1)))`
-/

namespace A206792.P854186393581371996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A206797 (A167614 (n + 1)).toNat)

end

end A206792.P854186393581371996

/-!
# A206793: Number of nX4 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206793, there is no canonical definition to state claims against.
-/

/-! ## A206793.P1246615605062348311

`A206797(A141214(n)+7)`
-/

namespace A206793.P1246615605062348311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A141214 n + 7).toNat

end

end A206793.P1246615605062348311

/-! ## A206793.P5957380639384595640

`A206797(A052905(n)+9)`
-/

namespace A206793.P5957380639384595640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A052905 n + 9).toNat

end

end A206793.P5957380639384595640

/-! ## A206793.P12979406531294387596

`A206797(A055999(n)+10)`
-/

namespace A206793.P12979406531294387596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A055999 n + 10).toNat

end

end A206793.P12979406531294387596

/-! ## A206793.P12397866837671604485

`A206797(A167614(n+2)+1)`
-/

namespace A206793.P12397866837671604485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A167614 (n + 2) + 1).toNat

end

end A206793.P12397866837671604485

/-! ## A206793.P14206499035216733290

`A206797(eq[5, A131818(n+1)])`
-/

namespace A206793.P14206499035216733290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206793.P14206499035216733290

/-!
# A206794: Number of nX5 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206794, there is no canonical definition to state claims against.
-/

/-! ## A206794.P11192248216621605659

`A206797(Δ[A264443(n)])`
-/

namespace A206794.P11192248216621605659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (f1 (n + 1) - f1 n).toNat

end

end A206794.P11192248216621605659

/-! ## A206794.P9303294621127967912

`A206797(A374005(n+1))`
-/

namespace A206794.P9303294621127967912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A374005 (n + 1)).toNat

end

end A206794.P9303294621127967912

/-! ## A206794.P985460958654305536

`A206797(eq[4, A193592(n)])`
-/

namespace A206794.P985460958654305536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206794.P985460958654305536

/-!
# A206795: 

The programs for A206795, there is no canonical definition to state claims against.
-/

/-! ## A206795.P17330430181627908151

`A206797(A000096(n+5)-4)`
-/

namespace A206795.P17330430181627908151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A000096 (n + 5) - 4).toNat

end

end A206795.P17330430181627908151

/-!
# A206796: 

The programs for A206796, there is no canonical definition to state claims against.
-/

/-! ## A206796.P2508614323024339255

`A206797(A000096(n+5)+8)`
-/

namespace A206796.P2508614323024339255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206797 (A000096 (n + 5) + 8).toNat

end

end A206796.P2508614323024339255

/-!
# A206797: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206797, there is no canonical definition to state claims against.
-/

/-! ## A206797.P6389602549679173885

`A206967(A084192(∑[n]))`
-/

namespace A206797.P6389602549679173885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206797.P6389602549679173885

/-! ## A206797.P14737091909763598833

`A206967(A084193(∑[n]))`
-/

namespace A206797.P14737091909763598833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206797.P14737091909763598833

/-! ## A206797.P1890880297642850251

`A206967(A043317(n+1))`
-/

namespace A206797.P1890880297642850251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A043317 (n + 1)).toNat

end

end A206797.P1890880297642850251

/-! ## A206797.P17895629976849061397

`A206967(A044914(n+1))`
-/

namespace A206797.P17895629976849061397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A044914 (n + 1)).toNat

end

end A206797.P17895629976849061397

/-! ## A206797.P14557363675999876544

`A206967(A049872(n)+1)`
-/

namespace A206797.P14557363675999876544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206967 (A049872 n + 1).toNat

end

end A206797.P14557363675999876544

/-!
# A206798: Beginning with the natural numbers, swap the k-th composite number (A002808) and k-th noncomposite number (A008578), for k = 1,2,3,...

The programs for A206798, there is no canonical definition to state claims against.
-/

/-! ## A206798.P5272286401566502650

`A026239(A026234(A026239(n+1)))`
-/

namespace A206798.P5272286401566502650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A026234 (A026239 (n + 1)).toNat).toNat

end

end A206798.P5272286401566502650

/-! ## A206798.P5933116320951040139

`A181097(record[A077168(n)]%A324528(n+3))`
-/

namespace A206798.P5933116320951040139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181097 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A324528 (n + 3))).toNat

end

end A206798.P5933116320951040139

