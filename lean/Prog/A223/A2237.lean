import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

/-!
# A223700: The maximum value of the Collatz (3x+1) iteration beginning at A223699(n).

The programs for A223700, there is no canonical definition to state claims against.
-/

/-! ## A223700.P12791077123244400014

`A025586(A223699(n+1))`
-/

namespace A223700.P12791077123244400014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A223699 (n + 1)).toNat

end

end A223700.P12791077123244400014

/-! ## A223700.P4145656008136797782

`A360910(A349260(n))`
-/

namespace A223700.P4145656008136797782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 (A349260 n).toNat

end

end A223700.P4145656008136797782

/-! ## A223700.P9420689557777525744

`A324391(A398036(n+1))`
-/

namespace A223700.P9420689557777525744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324391 (A398036 (n + 1)).toNat

end

end A223700.P9420689557777525744

/-! ## A223700.P534384561422679955

`(2^n)%A316470(2^(comp[∑[n]]-n))`
-/

namespace A223700.P534384561422679955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A316470 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat)

end

end A223700.P534384561422679955

/-! ## A223700.P8236300466335065712

`(2^n)%A117817(A244421(n))`
-/

namespace A223700.P8236300466335065712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A117817 (A244421 n).toNat)

end

end A223700.P8236300466335065712

/-!
# A223702: Irregular triangle of numbers k such that A002313(n), the n-th prime not congruent to 3 mod 4, is the largest prime factor of k^2 + 1.

The programs for A223702, there is no canonical definition to state claims against.
-/

/-! ## A223702.P4366438881261157090

`A077223(A285282(n+1))`
-/

namespace A223702.P4366438881261157090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (A285282 (n + 1)).toNat

end

end A223702.P4366438881261157090

/-! ## A223702.P9387264382905685089

`A285282(A084489(n+1))`
-/

namespace A223702.P9387264382905685089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285282 (A084489 (n + 1)).toNat

end

end A223702.P9387264382905685089

/-! ## A223702.P9260509494436750138

`A285282(A309151(n+1))`
-/

namespace A223702.P9260509494436750138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285282 (A309151 (n + 1)).toNat

end

end A223702.P9260509494436750138

/-! ## A223702.P10177608252584721395

`A077223(lt[A248746(n+1), 4]+1)`
-/

namespace A223702.P10177608252584721395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248746 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A223702.P10177608252584721395

/-! ## A223702.P7812157684836630825

`A077223(lt[A061395((n+1)²+1), 7]+1)`
-/

namespace A223702.P7812157684836630825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A223702.P7812157684836630825

/-!
# A223705: Least number k such that prime(n) is the largest divisor of k^2 + 1, or 0 if there is no such k.

The programs for A223705, there is no canonical definition to state claims against.
-/

/-! ## A223705.P16974797131835186770

`A070669(p?[xor(1, n)+1])%A039915(n+1)`
-/

namespace A223705.P16974797131835186770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (A039915 (n + 1))

end

end A223705.P16974797131835186770

/-! ## A223705.P17795193053946047604

`A070669(p?[round(n/(n%2+1/2))])%A039915(n+1)`
-/

namespace A223705.P17795193053946047604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A039915 (n + 1))

end

end A223705.P17795193053946047604

/-! ## A223705.P16100421641835196356

`A070669(p?[A027656(n)])%A039915(n+1)`
-/

namespace A223705.P16100421641835196356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A039915 (n + 1))

end

end A223705.P16100421641835196356

/-! ## A223705.P9028613439593734292

`A070669(A000040(n+1))%A039915(n+1)`
-/

namespace A223705.P9028613439593734292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (A000040 (n + 1)).toNat) (A039915 (n + 1))

end

end A223705.P9028613439593734292

/-! ## A223705.P9902501914527755480

`A070669(A006005(n+1))%A039915(n+1)`
-/

namespace A223705.P9902501914527755480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (A006005 (n + 1)).toNat) (A039915 (n + 1))

end

end A223705.P9902501914527755480

/-! ## A223705.P1412025119498870793

`A070669(eq[1, A003415(n)])%A039915(n+1)`
-/

namespace A223705.P1412025119498870793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A039915 (n + 1))

end

end A223705.P1412025119498870793

/-! ## A223705.P5223813150822023990

`A070669(record[A006530(n+2)])%A039915(n+1)`
-/

namespace A223705.P5223813150822023990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A039915 (n + 1))

end

end A223705.P5223813150822023990

/-!
# A223708: Nonzero terms in A107628; related to quadratic forms ax^2 + bxy + cy^2.

The programs for A223708, there is no canonical definition to state claims against.
-/

/-! ## A223708.P15157138991714444153

`A107628(gcd(2, n)+2*n+1)`
-/

namespace A223708.P15157138991714444153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (Nat.gcd 2 n + (2 * n + 1))

end

end A223708.P15157138991714444153

/-! ## A223708.P5284057961080259541

`A107628(A014601(n+1))`
-/

namespace A223708.P5284057961080259541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A014601 (n + 1)).toNat

end

end A223708.P5284057961080259541

/-! ## A223708.P7957692404146252568

`A107628(A154708(n+1))`
-/

namespace A223708.P7957692404146252568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A154708 (n + 1)).toNat

end

end A223708.P7957692404146252568

/-! ## A223708.P12469566378380339170

`A107628(A053438(n+1)+1)`
-/

namespace A223708.P12469566378380339170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A053438 (n + 1) + 1).toNat

end

end A223708.P12469566378380339170

/-! ## A223708.P25318857105522970

`A107628(A042963(n+1)+2)`
-/

namespace A223708.P25318857105522970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A042963 (n + 1) + 2).toNat

end

end A223708.P25318857105522970

/-! ## A223708.P18087243297145383979

`A107628(lt[0, A107628(n+1)]+1)`
-/

namespace A223708.P18087243297145383979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A223708.P18087243297145383979

/-! ## A223708.P12921890351945081475

`A107628(A056699(2*(n+1)))+A107628(2*(n+1))`
-/

namespace A223708.P12921890351945081475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A056699 (2 * (n + 1))).toNat + A107628 (2 * (n + 1))

end

end A223708.P12921890351945081475

/-! ## A223708.P11394498988586501935

`A107628(2*(n+1))+A107628(2*n+3)`
-/

namespace A223708.P11394498988586501935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (2 * (n + 1)) + A107628 (2 * n + 3)

end

end A223708.P11394498988586501935

/-!
# A223711: Number of n X 2 0..1 arrays with row sums and column sums unimodal.

The programs for A223711, the canonical program `A223711.P11284749659478516657` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223711 has offset 1).

The definition of A223711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223711.P11284749659478516657

`∑[∑[(n+1)*2^(n+1)+1]]+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223711

/-- `∑[∑[(n+1)*2^(n+1)+1]]+1` -/
def P11284749659478516657.Spec : Prop :=
  ∀ n, (P11284749659478516657.a n : ℤ) = A223711 (n + 1)

theorem P11284749659478516657.correct : P11284749659478516657.Spec := by
  intro n
  simp only [A223711, Nat.add_sub_cancel]

end A223711

/-! ## A223711.P7743357724406805571

`∑[A241204(n)+3+n]`
-/

namespace A223711.P7743357724406805571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241204 n + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223711.P7743357724406805571

namespace A223711

/-- `∑[A241204(n)+3+n]` -/
def P7743357724406805571.Spec : Prop :=
  ∀ n, P7743357724406805571.a n = A223711 (n + 1)

end A223711

/-! ## A223711.P6973384310884808247

`∑[C(2, n+2)+A088578(n+1)+n]`
-/

namespace A223711.P6973384310884808247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A088578 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223711.P6973384310884808247

namespace A223711

/-- `∑[C(2, n+2)+A088578(n+1)+n]` -/
def P6973384310884808247.Spec : Prop :=
  ∀ n, P6973384310884808247.a n = A223711 (n + 1)

end A223711

/-! ## A223711.P9785391779642748621

`∑[A088578(n+1)+A028310(n)]`
-/

namespace A223711.P9785391779642748621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088578 (n + 1) + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223711.P9785391779642748621

namespace A223711

/-- `∑[A088578(n+1)+A028310(n)]` -/
def P9785391779642748621.Spec : Prop :=
  ∀ n, P9785391779642748621.a n = A223711 (n + 1)

end A223711

/-! ## A223711.P4218786877167907226

`∑[A000007(n)+A088578(n+1)+n]`
-/

namespace A223711.P4218786877167907226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A088578 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223711.P4218786877167907226

namespace A223711

/-- `∑[A000007(n)+A088578(n+1)+n]` -/
def P4218786877167907226.Spec : Prop :=
  ∀ n, P4218786877167907226.a n = A223711 (n + 1)

end A223711

/-! ## A223711.P12182317587595302362

`∑[A339431(A004016(n))+A088578(n+1)+n]`
-/

namespace A223711.P12182317587595302362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339431 (A004016 n).toNat + (A088578 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223711.P12182317587595302362

namespace A223711

/-- `∑[A339431(A004016(n))+A088578(n+1)+n]` -/
def P12182317587595302362.Spec : Prop :=
  ∀ n, P12182317587595302362.a n = A223711 (n + 1)

end A223711

/-! ## A223711.P3533596449152640531

`∑[A088578(n+1)+A007318(A000124(n))]`
-/

namespace A223711.P3533596449152640531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088578 (n + 1) + A007318 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223711.P3533596449152640531

namespace A223711

/-- `∑[A088578(n+1)+A007318(A000124(n))]` -/
def P3533596449152640531.Spec : Prop :=
  ∀ n, P3533596449152640531.a n = A223711 (n + 1)

end A223711

/-!
# A223712: Number of nX3 0..1 arrays with row sums and column sums unimodal.

The programs for A223712, there is no canonical definition to state claims against.
-/

/-! ## A223712.P4884444491604617420

`A223716(∑[n+2]+4)`
-/

namespace A223712.P4884444491604617420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223712.P4884444491604617420

/-! ## A223712.P11338539454775092737

`record[gcd(A223716(n+4), A229586(n+1))]`
-/

namespace A223712.P11338539454775092737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223716 (n + 4)) (A229586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223712.P11338539454775092737

/-! ## A223712.P9042741524222416325

`A223716(A167614(n+1))+A025437(n)`
-/

namespace A223712.P9042741524222416325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A167614 (n + 1)).toNat + A025437 n

end

end A223712.P9042741524222416325

/-! ## A223712.P17472833256968059972

`A223716(A167614(n+1))+A185284(n)`
-/

namespace A223712.P17472833256968059972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A167614 (n + 1)).toNat + A185284 n

end

end A223712.P17472833256968059972

/-! ## A223712.P11307556631329452816

`A326545(n)+A223716(A167614(n+1))`
-/

namespace A223712.P11307556631329452816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A223716 (A167614 (n + 1)).toNat

end

end A223712.P11307556631329452816

/-!
# A223713: Number of nX4 0..1 arrays with row sums and column sums unimodal.

The programs for A223713, there is no canonical definition to state claims against.
-/

/-! ## A223713.P13575249295381644557

`A223716(A374004(n+1))`
-/

namespace A223713.P13575249295381644557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A374004 (n + 1)).toNat

end

end A223713.P13575249295381644557

/-! ## A223713.P2597800977379001576

`A223716(A141214(n)+7)`
-/

namespace A223713.P2597800977379001576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A141214 n + 7).toNat

end

end A223713.P2597800977379001576

/-! ## A223713.P12481619713867816704

`A223716(A052905(n)+9)`
-/

namespace A223713.P12481619713867816704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A052905 n + 9).toNat

end

end A223713.P12481619713867816704

/-! ## A223713.P13557531917102137543

`A223716(A055999(n)+10)`
-/

namespace A223713.P13557531917102137543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A055999 n + 10).toNat

end

end A223713.P13557531917102137543

/-! ## A223713.P4429752795243612081

`A223716(eq[5, A066657(n)])`
-/

namespace A223713.P4429752795243612081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223713.P4429752795243612081

/-!
# A223714: Number of n X 5 0..1 arrays with row sums and column sums unimodal.

The programs for A223714, there is no canonical definition to state claims against.
-/

/-! ## A223714.P18291619917522827198

`A223716(A374005(n+1))`
-/

namespace A223714.P18291619917522827198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A374005 (n + 1)).toNat

end

end A223714.P18291619917522827198

/-! ## A223714.P14457332499001246156

`A223716(A167499(n+3))`
-/

namespace A223714.P14457332499001246156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A167499 (n + 3)).toNat

end

end A223714.P14457332499001246156

/-! ## A223714.P2742889963192744867

`A223716(A155212(n)+13)`
-/

namespace A223714.P2742889963192744867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A155212 n + 13).toNat

end

end A223714.P2742889963192744867

/-! ## A223714.P1808825001663375836

`A223716(A056000(n)+15)`
-/

namespace A223714.P1808825001663375836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A056000 n + 15).toNat

end

end A223714.P1808825001663375836

/-! ## A223714.P14728181693571615218

`A223716(eq[7, A066657(n)])`
-/

namespace A223714.P14728181693571615218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223714.P14728181693571615218

/-!
# A223715: Number of nX6 0..1 arrays with row sums and column sums unimodal.

The programs for A223715, there is no canonical definition to state claims against.
-/

/-! ## A223715.P16078706795880695723

`A223716(A374007(n+1))`
-/

namespace A223715.P16078706795880695723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A374007 (n + 1)).toNat

end

end A223715.P16078706795880695723

/-! ## A223715.P4689797156909387127

`A223716(A056115(n)+21)`
-/

namespace A223715.P4689797156909387127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A056115 n + 21).toNat

end

end A223715.P4689797156909387127

/-! ## A223715.P16961835456406907743

`A223716(A167614(n+4)+3)`
-/

namespace A223715.P16961835456406907743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A167614 (n + 4) + 3).toNat

end

end A223715.P16961835456406907743

/-! ## A223715.P271709679129700368

`A223716(A000217(n+5)+6)`
-/

namespace A223715.P271709679129700368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A000217 (n + 5) + 6).toNat

end

end A223715.P271709679129700368

/-! ## A223715.P17310784032457058783

`A223716(A056000(n+1)+16)`
-/

namespace A223715.P17310784032457058783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (A056000 (n + 1) + 16).toNat

end

end A223715.P17310784032457058783

/-!
# A223716: T(n,k)=Number of nXk 0..1 arrays with row sums and column sums unimodal.

The programs for A223716, there is no canonical definition to state claims against.
-/

/-! ## A223716.P11560354918328727065

`A223782(n+1)+A083928(A292600(A305593(n+1)))`
-/

namespace A223716.P11560354918328727065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (n + 1) + A083928 (A292600 (A305593 (n + 1)).toNat).toNat

end

end A223716.P11560354918328727065

/-! ## A223716.P8834258160708330500

`A223782(n+1)+A025458(A221125(n+1))`
-/

namespace A223716.P8834258160708330500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (n + 1) + A025458 (A221125 (n + 1)).toNat

end

end A223716.P8834258160708330500

/-! ## A223716.P16443346357958364729

`A223782(n+1)+A083928(A305422(A000124(n)))`
-/

namespace A223716.P16443346357958364729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (n + 1) + A083928 (A305422 (A000124 n).toNat).toNat

end

end A223716.P16443346357958364729

/-! ## A223716.P9090872062120114331

`A223782(A043317(n+1))`
-/

namespace A223716.P9090872062120114331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A043317 (n + 1)).toNat

end

end A223716.P9090872062120114331

/-! ## A223716.P11935239792037053326

`A223782(A044914(n+1))`
-/

namespace A223716.P11935239792037053326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A044914 (n + 1)).toNat

end

end A223716.P11935239792037053326

/-!
# A223717: Number of n X n 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223717, there is no canonical definition to state claims against.
-/

/-! ## A223717.P3732746958663126632

`A223725(∑[4*n]+1)`
-/

namespace A223717.P3732746958663126632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223717.P3732746958663126632

/-! ## A223717.P14608354097711218243

`record[root(A223725(n+1), A143182(n))]`
-/

namespace A223717.P14608354097711218243
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223725 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223717.P14608354097711218243

/-! ## A223717.P5399811314446832551

`record[gcd(A003987(n), A223725(n+1))]`
-/

namespace A223717.P5399811314446832551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A223725 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223717.P5399811314446832551

/-! ## A223717.P933999153078905388

`record[A203994(n+1)*A223725(n+1)]`
-/

namespace A223717.P933999153078905388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A223725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223717.P933999153078905388

/-! ## A223717.P16375376860138338495

`record[root(A223725(n+1), A072030(n+1))]`
-/

namespace A223717.P16375376860138338495
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223725 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223717.P16375376860138338495

/-!
# A223718: Number of unimodal functions [1..n]->[0..2].

The programs for A223718, the canonical program `A223718.P16873858530125486885` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223718 has offset 0).

The definition of A223718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223718.P16873858530125486885

`1+n*(n+1)*(n²+5*n+18)/24`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223718

/-- `1+n*(n+1)*(n²+5*n+18)/24` -/
def P16873858530125486885.Spec : Prop :=
  ∀ n, P16873858530125486885.a n = (A223718 n : ℚ)

end A223718

/-! ## A223718.P3187416753781374202

`∑[A003600(n)]`
-/

namespace A223718.P3187416753781374202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P3187416753781374202

namespace A223718

/-- `∑[A003600(n)]` -/
def P3187416753781374202.Spec : Prop :=
  ∀ n, P3187416753781374202.a n = A223718 n

end A223718

/-! ## A223718.P16225831158704853738

`∑[A028310(n)+∑[∑[n]]]`
-/

namespace A223718.P16225831158704853738
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P16225831158704853738

namespace A223718

/-- `∑[A028310(n)+∑[∑[n]]]` -/
def P16225831158704853738.Spec : Prop :=
  ∀ n, P16225831158704853738.a n = A223718 n

end A223718

/-! ## A223718.P18324181123903606373

`A177206(n)%A229422(n+1)`
-/

namespace A223718.P18324181123903606373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177206 n) (A229422 (n + 1))

end

end A223718.P18324181123903606373

namespace A223718

/-- `A177206(n)%A229422(n+1)` -/
def P18324181123903606373.Spec : Prop :=
  ∀ n, P18324181123903606373.a n = A223718 n

end A223718

/-! ## A223718.P15128074846312894553

`∑[A057428(n)+∑[A000124(n)]]`
-/

namespace A223718.P15128074846312894553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P15128074846312894553

namespace A223718

/-- `∑[A057428(n)+∑[A000124(n)]]` -/
def P15128074846312894553.Spec : Prop :=
  ∀ n, P15128074846312894553.a n = A223718 n

end A223718

/-! ## A223718.P663339606192012336

`∑[A005232(A004273(n))+n]`
-/

namespace A223718.P663339606192012336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A004273 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P663339606192012336

namespace A223718

/-- `∑[A005232(A004273(n))+n]` -/
def P663339606192012336.Spec : Prop :=
  ∀ n, P663339606192012336.a n = A223718 n

end A223718

/-! ## A223718.P602800176363778050

`∑[A052250(∑[n+3])]`
-/

namespace A223718.P602800176363778050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P602800176363778050

namespace A223718

/-- `∑[A052250(∑[n+3])]` -/
def P602800176363778050.Spec : Prop :=
  ∀ n, P602800176363778050.a n = A223718 n

end A223718

/-! ## A223718.P2705721611354715945

`A210219(∑[n+1]+n)`
-/

namespace A223718.P2705721611354715945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A223718.P2705721611354715945

namespace A223718

/-- `A210219(∑[n+1]+n)` -/
def P2705721611354715945.Spec : Prop :=
  ∀ n, P2705721611354715945.a n = A223718 n

end A223718

/-! ## A223718.P846480346105974547

`A071922(∑[n+3])`
-/

namespace A223718.P846480346105974547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223718.P846480346105974547

namespace A223718

/-- `A071922(∑[n+3])` -/
def P846480346105974547.Spec : Prop :=
  ∀ n, P846480346105974547.a n = A223718 n

end A223718

/-! ## A223718.P16017365796201648595

`∑[A128176(∑[n+3])]`
-/

namespace A223718.P16017365796201648595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P16017365796201648595

namespace A223718

/-- `∑[A128176(∑[n+3])]` -/
def P16017365796201648595.Spec : Prop :=
  ∀ n, P16017365796201648595.a n = A223718 n

end A223718

/-! ## A223718.P11914532210630842089

`∑[A202191(∑[n+3])]`
-/

namespace A223718.P11914532210630842089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P11914532210630842089

namespace A223718

/-- `∑[A202191(∑[n+3])]` -/
def P11914532210630842089.Spec : Prop :=
  ∀ n, P11914532210630842089.a n = A223718 n

end A223718

/-! ## A223718.P3320687612959563717

`∑[A209555(∑[n+3])]`
-/

namespace A223718.P3320687612959563717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209555 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223718.P3320687612959563717

namespace A223718

/-- `∑[A209555(∑[n+3])]` -/
def P3320687612959563717.Spec : Prop :=
  ∀ n, P3320687612959563717.a n = A223718 n

end A223718

/-! ## A223718.P4699206371090104061

`A209690(A034856(n+2))`
-/

namespace A223718.P4699206371090104061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209690 (A034856 (n + 2)).toNat

end

end A223718.P4699206371090104061

namespace A223718

/-- `A209690(A034856(n+2))` -/
def P4699206371090104061.Spec : Prop :=
  ∀ n, P4699206371090104061.a n = A223718 n

end A223718

/-! ## A223718.P10830651407196235490

`A131054(A052905(n+1))`
-/

namespace A223718.P10830651407196235490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 (A052905 (n + 1)).toNat

end

end A223718.P10830651407196235490

namespace A223718

/-- `A131054(A052905(n+1))` -/
def P10830651407196235490.Spec : Prop :=
  ∀ n, P10830651407196235490.a n = A223718 n

end A223718

/-! ## A223718.P10479333972177679501

`A131054(A155212(n+1)+2)`
-/

namespace A223718.P10479333972177679501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 (A155212 (n + 1) + 2).toNat

end

end A223718.P10479333972177679501

namespace A223718

/-- `A131054(A155212(n+1)+2)` -/
def P10479333972177679501.Spec : Prop :=
  ∀ n, P10479333972177679501.a n = A223718 n

end A223718

/-!
# A223719: Number of n X 2 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223719, the canonical program `A223719.P7390346333002389672` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223719 has offset 1).

The definition of A223719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223719.P7390346333002389672

`(∑[∑[∑[n+1]+1]]+1)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223719

/-- `(∑[∑[∑[n+1]+1]]+1)²` -/
def P7390346333002389672.Spec : Prop :=
  ∀ n, (P7390346333002389672.a n : ℤ) = A223719 (n + 1)

theorem P7390346333002389672.correct : P7390346333002389672.Spec := by
  intro n
  simp only [A223719, Nat.add_sub_cancel]

end A223719

/-! ## A223719.P8758749035569278962

`A223718(n+1)^2`
-/

namespace A223719.P8758749035569278962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) ^ 2

end

end A223719.P8758749035569278962

namespace A223719

/-- `A223718(n+1)^2` -/
def P8758749035569278962.Spec : Prop :=
  ∀ n, P8758749035569278962.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P15234427558191634420

`(A051744(n+1)+1)^2`
-/

namespace A223719.P15234427558191634420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051744 (n + 1) + 1) ^ 2

end

end A223719.P15234427558191634420

namespace A223719

/-- `(A051744(n+1)+1)^2` -/
def P15234427558191634420.Spec : Prop :=
  ∀ n, P15234427558191634420.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P16502754180126104819

`record[A223718(A344180(n))²]`
-/

namespace A223719.P16502754180126104819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223719.P16502754180126104819

namespace A223719

/-- `record[A223718(A344180(n))²]` -/
def P16502754180126104819.Spec : Prop :=
  ∀ n, P16502754180126104819.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P15787840215254362441

`or(A223718(n+1)², A000007(n))`
-/

namespace A223719.P15787840215254362441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A223718 (n + 1) ^ 2) (A000007 n)

end

end A223719.P15787840215254362441

namespace A223719

/-- `or(A223718(n+1)², A000007(n))` -/
def P15787840215254362441.Spec : Prop :=
  ∀ n, P15787840215254362441.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P17691167441941530826

`A223718(n+1)²%A223682(n+1)`
-/

namespace A223719.P17691167441941530826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223718 (n + 1) ^ 2) (A223682 (n + 1))

end

end A223719.P17691167441941530826

namespace A223719

/-- `A223718(n+1)²%A223682(n+1)` -/
def P17691167441941530826.Spec : Prop :=
  ∀ n, P17691167441941530826.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P13567431454258485151

`or((A051744(n+1)+1)², A000007(n))`
-/

namespace A223719.P13567431454258485151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((A051744 (n + 1) + 1) ^ 2) (A000007 n)

end

end A223719.P13567431454258485151

namespace A223719

/-- `or((A051744(n+1)+1)², A000007(n))` -/
def P13567431454258485151.Spec : Prop :=
  ∀ n, P13567431454258485151.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P371440144887670961

`lcm(xor(-1, A051744(n+1))², A020985(n))`
-/

namespace A223719.P371440144887670961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (-1) (A051744 (n + 1)) ^ 2) (A020985 n)

end

end A223719.P371440144887670961

namespace A223719

/-- `lcm(xor(-1, A051744(n+1))², A020985(n))` -/
def P371440144887670961.Spec : Prop :=
  ∀ n, (P371440144887670961.a n : ℤ) = A223719 (n + 1)

end A223719

/-! ## A223719.P14832410143995102282

`record[A223718(A344180(n))]*A223718(n+1)`
-/

namespace A223719.P14832410143995102282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223718 (n + 1)

end

end A223719.P14832410143995102282

namespace A223719

/-- `record[A223718(A344180(n))]*A223718(n+1)` -/
def P14832410143995102282.Spec : Prop :=
  ∀ n, P14832410143995102282.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P13681850494280357986

`A223718(A000027(n+1))*A223718(n+1)`
-/

namespace A223719.P13681850494280357986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A000027 (n + 1)).toNat * A223718 (n + 1)

end

end A223719.P13681850494280357986

namespace A223719

/-- `A223718(A000027(n+1))*A223718(n+1)` -/
def P13681850494280357986.Spec : Prop :=
  ∀ n, P13681850494280357986.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P9713810149253430827

`A000007(n+1)+A223718(n+1)²`
-/

namespace A223719.P9713810149253430827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A223718 (n + 1) ^ 2

end

end A223719.P9713810149253430827

namespace A223719

/-- `A000007(n+1)+A223718(n+1)²` -/
def P9713810149253430827.Spec : Prop :=
  ∀ n, P9713810149253430827.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P14973312876816837934

`Δ[A145127(n)+A064999(n)/2]^2`
-/

namespace A223719.P14973312876816837934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145127 n : ℚ) + (A064999 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A223719.P14973312876816837934

namespace A223719

/-- `Δ[A145127(n)+A064999(n)/2]^2` -/
def P14973312876816837934.Spec : Prop :=
  ∀ n, P14973312876816837934.a n = (A223719 (n + 1) : ℚ)

end A223719

/-! ## A223719.P13323369429734954400

`A223718(n+1)²*char[A004442(n)]`
-/

namespace A223719.P13323369429734954400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) ^ 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A223719.P13323369429734954400

namespace A223719

/-- `A223718(n+1)²*char[A004442(n)]` -/
def P13323369429734954400.Spec : Prop :=
  ∀ n, P13323369429734954400.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P1201275024788092706

`record[A223718(A003602(n+1))²]`
-/

namespace A223719.P1201275024788092706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A003602 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223719.P1201275024788092706

namespace A223719

/-- `record[A223718(A003602(n+1))²]` -/
def P1201275024788092706.Spec : Prop :=
  ∀ n, P1201275024788092706.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P3855904388676340642

`record[A223718(A003602(n+1))]*A223718(n+1)`
-/

namespace A223719.P3855904388676340642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223718 (n + 1)

end

end A223719.P3855904388676340642

namespace A223719

/-- `record[A223718(A003602(n+1))]*A223718(n+1)` -/
def P3855904388676340642.Spec : Prop :=
  ∀ n, P3855904388676340642.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P1195223951735575215

`A223718(A003602(2*n+1))*A223718(n+1)`
-/

namespace A223719.P1195223951735575215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A003602 (2 * n + 1)).toNat * A223718 (n + 1)

end

end A223719.P1195223951735575215

namespace A223719

/-- `A223718(A003602(2*n+1))*A223718(n+1)` -/
def P1195223951735575215.Spec : Prop :=
  ∀ n, P1195223951735575215.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P2811862677558487524

`record[A223718(A286552(n))²]`
-/

namespace A223719.P2811862677558487524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A286552 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223719.P2811862677558487524

namespace A223719

/-- `record[A223718(A286552(n))²]` -/
def P2811862677558487524.Spec : Prop :=
  ∀ n, P2811862677558487524.a n = A223719 (n + 1)

end A223719

/-! ## A223719.P17684999580816454222

`record[A223718(A286552(n))]*A223718(n+1)`
-/

namespace A223719.P17684999580816454222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A286552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223718 (n + 1)

end

end A223719.P17684999580816454222

namespace A223719

/-- `record[A223718(A286552(n))]*A223718(n+1)` -/
def P17684999580816454222.Spec : Prop :=
  ∀ n, P17684999580816454222.a n = A223719 (n + 1)

end A223719

/-!
# A223720: Number of n X 3 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223720, there is no canonical definition to state claims against.
-/

/-! ## A223720.P13098712465089429564

`A223725(∑[n+2]+4)`
-/

namespace A223720.P13098712465089429564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223720.P13098712465089429564

/-! ## A223720.P14960952698565609707

`A223725(A167614(n+1))+A185284(n)`
-/

namespace A223720.P14960952698565609707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A167614 (n + 1)).toNat + A185284 n

end

end A223720.P14960952698565609707

/-! ## A223720.P15976123367282186161

`lcm(A033999(n), A223725(A167614(n+1)))`
-/

namespace A223720.P15976123367282186161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223725 (A167614 (n + 1)).toNat)

end

end A223720.P15976123367282186161

/-! ## A223720.P9559724691529115981

`or(A000038(n), A223725(A167614(n+1)))`
-/

namespace A223720.P9559724691529115981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223725 (A167614 (n + 1)).toNat)

end

end A223720.P9559724691529115981

/-! ## A223720.P2831765031902364371

`A244606(n+1)+A223725(A167614(n+1))`
-/

namespace A223720.P2831765031902364371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (n + 1) + A223725 (A167614 (n + 1)).toNat

end

end A223720.P2831765031902364371

/-!
# A223721: Number of nX4 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223721, there is no canonical definition to state claims against.
-/

/-! ## A223721.P14056783624463908525

`A223725(A374004(n+1))`
-/

namespace A223721.P14056783624463908525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A374004 (n + 1)).toNat

end

end A223721.P14056783624463908525

/-! ## A223721.P825445186890909806

`A223725(A141214(n)+7)`
-/

namespace A223721.P825445186890909806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A141214 n + 7).toNat

end

end A223721.P825445186890909806

/-! ## A223721.P13417571698722745260

`A223725(A052905(n)+9)`
-/

namespace A223721.P13417571698722745260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A052905 n + 9).toNat

end

end A223721.P13417571698722745260

/-! ## A223721.P7838409937627948288

`A223725(A055999(n)+10)`
-/

namespace A223721.P7838409937627948288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A055999 n + 10).toNat

end

end A223721.P7838409937627948288

/-! ## A223721.P7460186968848666297

`A223725(A167614(n+2)+1)`
-/

namespace A223721.P7460186968848666297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A167614 (n + 2) + 1).toNat

end

end A223721.P7460186968848666297

/-!
# A223722: Number of nX5 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223722, there is no canonical definition to state claims against.
-/

/-! ## A223722.P8708889633180755914

`A223725(A374005(n+1))`
-/

namespace A223722.P8708889633180755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A374005 (n + 1)).toNat

end

end A223722.P8708889633180755914

/-! ## A223722.P2898821188313233946

`A223725(A155212(n)+13)`
-/

namespace A223722.P2898821188313233946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A155212 n + 13).toNat

end

end A223722.P2898821188313233946

/-! ## A223722.P13173294104718382649

`A223725(eq[6, A131818(n+1)])`
-/

namespace A223722.P13173294104718382649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223722.P13173294104718382649

/-! ## A223722.P13262116877880533439

`A223725(Δ[A264443(n)])`
-/

namespace A223722.P13262116877880533439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (f1 (n + 1) - f1 n).toNat

end

end A223722.P13262116877880533439

/-! ## A223722.P6555696067063333747

`A223725(eq[5, A239144(n)])`
-/

namespace A223722.P6555696067063333747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223722.P6555696067063333747

/-!
# A223723: Number of nX6 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223723, there is no canonical definition to state claims against.
-/

/-! ## A223723.P4272025431543763483

`A223725(C(n+7, 2)-n)`
-/

namespace A223723.P4272025431543763483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (Nat.choose (n + 7) 2 - n)

end

end A223723.P4272025431543763483

/-! ## A223723.P6704870755410443066

`A223725(A374007(n+1))`
-/

namespace A223723.P6704870755410443066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A374007 (n + 1)).toNat

end

end A223723.P6704870755410443066

/-! ## A223723.P17189017220350965506

`A223725(eq[7, A131818(n+1)])`
-/

namespace A223723.P17189017220350965506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223723.P17189017220350965506

/-! ## A223723.P10204984247066835920

`A223725(A052905(n+3))`
-/

namespace A223723.P10204984247066835920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A052905 (n + 3)).toNat

end

end A223723.P10204984247066835920

/-! ## A223723.P13207678146907482450

`A223725(eq[3, A219347(n)])`
-/

namespace A223723.P13207678146907482450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223723.P13207678146907482450

/-!
# A223724: Number of nX7 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223724, there is no canonical definition to state claims against.
-/

/-! ## A223724.P8410657853597706622

`A223725(A374008(n+1))`
-/

namespace A223724.P8410657853597706622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (A374008 (n + 1)).toNat

end

end A223724.P8410657853597706622

/-! ## A223724.P12229596267531975303

`A223725(eq[8, A131818(n+1)])`
-/

namespace A223724.P12229596267531975303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223724.P12229596267531975303

/-! ## A223724.P5168602674897051752

`A223725(C(n+7, 2)+n+1)`
-/

namespace A223724.P5168602674897051752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (Nat.choose (n + 7) 2 + (n + 1))

end

end A223724.P5168602674897051752

/-! ## A223724.P16628234547015390125

`A223725(eq[4, A219347(n)])`
-/

namespace A223724.P16628234547015390125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223724.P16628234547015390125

/-! ## A223724.P143351531557473479

`A223725(eq[6, A193592(n)])`
-/

namespace A223724.P143351531557473479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223724.P143351531557473479

/-!
# A223725: T(n,k)=Number of nXk 0..2 arrays with rows, antidiagonals and columns unimodal.

The programs for A223725, there is no canonical definition to state claims against.
-/

/-! ## A223725.P4187868526991098214

`A014682(A223831(n+1)+A223742(n+1))`
-/

namespace A223725.P4187868526991098214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A223831 (n + 1) + A223742 (n + 1)).toNat

end

end A223725.P4187868526991098214

/-! ## A223725.P13239767576889225416

`A223742(A084192(∑[n]))`
-/

namespace A223725.P13239767576889225416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223725.P13239767576889225416

/-! ## A223725.P9065009617271298954

`A223742(A193897(∑[n]))`
-/

namespace A223725.P9065009617271298954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A193897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223725.P9065009617271298954

/-! ## A223725.P5170775980960576664

`A223742(A043317(n+1))`
-/

namespace A223725.P5170775980960576664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A043317 (n + 1)).toNat

end

end A223725.P5170775980960576664

/-! ## A223725.P14011926700962141009

`A223742(A044914(n+1))`
-/

namespace A223725.P14011926700962141009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A044914 (n + 1)).toNat

end

end A223725.P14011926700962141009

/-!
# A223726: Multiplicities for A004433: sum of four distinct nonzero squares.

The programs for A223726, there is no canonical definition to state claims against.
-/

/-! ## A223726.P317849183081463159

`A025443(A004433(n+1))`
-/

namespace A223726.P317849183081463159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A004433 (n + 1)).toNat

end

end A223726.P317849183081463159

/-! ## A223726.P13982565134668314537

`A025443(lt[0, A025443(n)])`
-/

namespace A223726.P13982565134668314537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A223726.P13982565134668314537

/-! ## A223726.P13271657753184291966

`A025443(A316835(n+1)/4)`
-/

namespace A223726.P13271657753184291966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (SequenceMachineLib.roundAway ((A316835 (n + 1) : ℚ) / 4)).toNat

end

end A223726.P13271657753184291966

/-! ## A223726.P16104686354695451690

`A025443(comp[A004441(n+1)-1]+1)`
-/

namespace A223726.P16104686354695451690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A223726.P16104686354695451690

/-! ## A223726.P15421633222032237888

`gcd(A223728(n+1), A244492(n))`
-/

namespace A223726.P15421633222032237888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223728 (n + 1)) (A244492 n)

end

end A223726.P15421633222032237888

/-!
# A223727: Numbers which are a sum of four distinct nonzero squares where the summands have no common factor > 1.

The programs for A223727, there is no canonical definition to state claims against.
-/

/-! ## A223727.P11873767530396786806

`lt[C(n+7, 7)%2, A025443(n)]`
-/

namespace A223727.P11873767530396786806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223727.P11873767530396786806

/-! ## A223727.P1402682848197230499

`A004433(record[A287635(n+1)])`
-/

namespace A223727.P1402682848197230499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004433 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223727.P1402682848197230499

/-! ## A223727.P2081181976264356568

`lt[abs(A014025(n)), A025443(n)]`
-/

namespace A223727.P2081181976264356568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014025 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223727.P2081181976264356568

/-! ## A223727.P15400008369721686987

`lt[abs(A015241(n)), A025443(n)]`
-/

namespace A223727.P15400008369721686987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015241 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223727.P15400008369721686987

/-! ## A223727.P10920794322397238187

`lt[A010194(n), exp(A025443(n))]`
-/

namespace A223727.P10920794322397238187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A025443 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A223727.P10920794322397238187

/-! ## A223727.P2432181294472286732

`filter[A004433(n+1), A168181(#)]`
-/

namespace A223727.P2432181294472286732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A223727.P2432181294472286732

/-! ## A223727.P13003028690945228166

`lt[A055029(n+1), A025443(n)]`
-/

namespace A223727.P13003028690945228166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223727.P13003028690945228166

/-! ## A223727.P15873406126720311002

`lt[A227291(n+1), A025443(n)]`
-/

namespace A223727.P15873406126720311002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223727.P15873406126720311002

/-! ## A223727.P970015159676187489

`lt[A015241(n*A025443(n)), 1]`
-/

namespace A223727.P970015159676187489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 ((n : ℤ) * A025443 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223727.P970015159676187489

/-! ## A223727.P83909471821681214

`lt[A010194(n*A025443(n)), 2]`
-/

namespace A223727.P83909471821681214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 ((n : ℤ) * A025443 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223727.P83909471821681214

/-!
# A223728: Multiplicities for A223727: primitive sums of four distinct nonzero squares.

The programs for A223728, there is no canonical definition to state claims against.
-/

/-! ## A223728.P6863081156761255765

`A025443(A223727(n+1))`
-/

namespace A223728.P6863081156761255765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A223727 (n + 1)).toNat

end

end A223728.P6863081156761255765

/-! ## A223728.P18256656526422567503

`A223726(record[A287635(n+1)]%A223727(n+1))`
-/

namespace A223728.P18256656526422567503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223726 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A223727 (n + 1))).toNat

end

end A223728.P18256656526422567503

/-!
# A223730: Multiplicities for representations of positive numbers n as primitive sums of three nonzero squares.

The programs for A223730, there is no canonical definition to state claims against.
-/

/-! ## A223730.P11690079738676159571

`∑{d}[n+1, A025427(#)*A271102((n+1)/#)]`
-/

namespace A223730.P11690079738676159571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025427 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A223730.P11690079738676159571

/-! ## A223730.P16295817864425726382

`A025427(A261969(n+1))%A053641(A031285(n))`
-/

namespace A223730.P16295817864425726382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025427 (A261969 (n + 1)).toNat) (A053641 (A031285 n).toNat)

end

end A223730.P16295817864425726382

/-! ## A223730.P4153186586294834356

`A025427(A261969(n+1)%A141214(n))`
-/

namespace A223730.P4153186586294834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (Int.tmod (A261969 (n + 1)) (A141214 n)).toNat

end

end A223730.P4153186586294834356

/-! ## A223730.P4508500976301845495

`A025427(A261969(n+1))+A000007(A181312(n+1))`
-/

namespace A223730.P4508500976301845495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A261969 (n + 1)).toNat + A000007 (A181312 (n + 1)).toNat

end

end A223730.P4508500976301845495

/-!
# A223731: All positive numbers that are primitive sums of three nonzero squares.

The programs for A223731, there is no canonical definition to state claims against.
-/

/-! ## A223731.P1636780426663700412

`comp[∪[4*n, A004214(n+1)]]`
-/

namespace A223731.P1636780426663700412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A223731.P1636780426663700412

/-! ## A223731.P310822522376764868

`record[A065883(A000408(n+1))]`
-/

namespace A223731.P310822522376764868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A000408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223731.P310822522376764868

/-! ## A223731.P17222183385062280670

`filter[A000408(n+1), A166486(#)]`
-/

namespace A223731.P17222183385062280670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A223731.P17222183385062280670

/-! ## A223731.P16499618482569042345

`∩[A000408(n+1), A042968(n+1)]`
-/

namespace A223731.P16499618482569042345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223731.P16499618482569042345

/-! ## A223731.P11013152353586725162

`∩[A000408(n+1), A047449(n+1)]`
-/

namespace A223731.P11013152353586725162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223731.P11013152353586725162

/-! ## A223731.P13648784132259437895

`lt[1-A223730(A028310(n)), 1]`
-/

namespace A223731.P13648784132259437895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A223730 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223731.P13648784132259437895

/-! ## A223731.P1259671667809190826

`eq[A010121(n), A057427(A063691(n))]`
-/

namespace A223731.P1259671667809190826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A223731.P1259671667809190826

/-! ## A223731.P7632017008919627242

`eq[A010153(n), A057427(A063691(n))]`
-/

namespace A223731.P7632017008919627242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A063691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A223731.P7632017008919627242

/-! ## A223731.P16093947271462947890

`eq[A000038(A063691(n)), A121262(n)]`
-/

namespace A223731.P16093947271462947890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A063691 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A223731.P16093947271462947890

/-! ## A223731.P13181191293256260195

`eq[A028310(A223730(n+1)), A223730(n+1)]+1`
-/

namespace A223731.P13181191293256260195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A223730 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A223731.P13181191293256260195

/-!
# A223732: Positive numbers that are the sum of three nonzero squares with no common factor > 1 in exactly one way.

The programs for A223732, there is no canonical definition to state claims against.
-/

/-! ## A223732.P16881932864861621211

`1+eq[1, A223730(n+1)]`
-/

namespace A223732.P16881932864861621211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223732.P16881932864861621211

/-! ## A223732.P4499670791325396914

`eq[1, A223730(A028310(n))]`
-/

namespace A223732.P4499670791325396914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223732.P4499670791325396914

/-! ## A223732.P9477616186191165539

`A020725(eq[1, A223730(n+1)])`
-/

namespace A223732.P9477616186191165539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223732.P9477616186191165539

/-! ## A223732.P10169433946251462009

`A153152(eq[1, A223730(n+1)])`
-/

namespace A223732.P10169433946251462009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223732.P10169433946251462009

/-! ## A223732.P13068363738924302900

`eq[1, A223730(A233583(n+1))]`
-/

namespace A223732.P13068363738924302900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223732.P13068363738924302900

/-! ## A223732.P2052460349129932773

`eq[1, A223730(A065033(2*n))]`
-/

namespace A223732.P2052460349129932773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223732.P2052460349129932773

/-! ## A223732.P1180246733729083188

`eq[1, A223730(A123108(2*n))]`
-/

namespace A223732.P1180246733729083188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223732.P1180246733729083188

/-!
# A223733: Positive numbers that are the sum of three nonzero squares with no common factor > 1 in exactly two ways.

The programs for A223733, there is no canonical definition to state claims against.
-/

/-! ## A223733.P6039968731557427126

`eq[2, A223730(n+1)]+1`
-/

namespace A223733.P6039968731557427126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223733.P6039968731557427126

/-! ## A223733.P18145090182143269395

`eq[2, A223730(A028310(n))]`
-/

namespace A223733.P18145090182143269395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223733.P18145090182143269395

/-! ## A223733.P12237685643601270544

`A020725(eq[2, A223730(n+1)])`
-/

namespace A223733.P12237685643601270544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223733.P12237685643601270544

/-! ## A223733.P10258899009777951634

`eq[2, A223730(A138153(n+1))]`
-/

namespace A223733.P10258899009777951634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223733.P10258899009777951634

/-! ## A223733.P7848815148964444279

`A153152(eq[2, A223730(n+1)])`
-/

namespace A223733.P7848815148964444279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223733.P7848815148964444279

/-! ## A223733.P8059664939664006808

`eq[2, A223730(A065033(2*n))]`
-/

namespace A223733.P8059664939664006808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223733.P8059664939664006808

/-! ## A223733.P3462923197093101471

`eq[2, A223730(A123108(2*n))]`
-/

namespace A223733.P3462923197093101471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223733.P3462923197093101471

/-! ## A223733.P17659981204303278517

`eq[2, A223730(A233583(n+1))]`
-/

namespace A223733.P17659981204303278517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223733.P17659981204303278517

/-!
# A223734: Positive numbers that are the sum of three nonzero squares with no common factor > 1 in exactly three ways.

The programs for A223734, there is no canonical definition to state claims against.
-/

/-! ## A223734.P12266674817410666606

`eq[3, A223730(n+1)]+1`
-/

namespace A223734.P12266674817410666606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223734.P12266674817410666606

/-! ## A223734.P7220793388069268022

`eq[3, A223730(A028310(n))]`
-/

namespace A223734.P7220793388069268022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223734.P7220793388069268022

/-! ## A223734.P18361824231301572162

`A020725(eq[3, A223730(n+1)])`
-/

namespace A223734.P18361824231301572162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223734.P18361824231301572162

/-! ## A223734.P7922468910561908436

`A153152(eq[3, A223730(n+1)])`
-/

namespace A223734.P7922468910561908436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223734.P7922468910561908436

/-! ## A223734.P1443408156005823030

`eq[3, A223730(A065033(2*n))]`
-/

namespace A223734.P1443408156005823030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223734.P1443408156005823030

/-! ## A223734.P736690575886740944

`eq[3, A223730(A080513(A004275(n)))]`
-/

namespace A223734.P736690575886740944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A080513 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223734.P736690575886740944

/-! ## A223734.P14131282388425344888

`eq[3, A223730(A233583(n+1))]`
-/

namespace A223734.P14131282388425344888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223734.P14131282388425344888

/-!
# A223735: Positive numbers that are not representable as a primitive sum of three nonzero squares.

The programs for A223735, there is no canonical definition to state claims against.
-/

/-! ## A223735.P15245417738312566801

`∪[A004214(n+1), A008574(n)]`
-/

namespace A223735.P15245417738312566801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223735.P15245417738312566801

/-! ## A223735.P4836746458243446536

`∪[A004214(n+1), A136724(n+1)]`
-/

namespace A223735.P4836746458243446536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223735.P4836746458243446536

/-! ## A223735.P18208432123977510448

`∪[A004214(n+1), A192544(n+1)]`
-/

namespace A223735.P18208432123977510448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223735.P18208432123977510448

/-! ## A223735.P7780922581666165563

`eq[0, A223730(n+1)]+1`
-/

namespace A223735.P7780922581666165563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223735.P7780922581666165563

/-! ## A223735.P990761619092038931

`record[(n+1)/A000108(A223730(n+1)+1)]`
-/

namespace A223735.P990761619092038931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000108 (A223730 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223735.P990761619092038931

/-! ## A223735.P15359646944395286967

`record[(n+1)/A002024(A223730(n+1)+1)]`
-/

namespace A223735.P15359646944395286967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002024 (A223730 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223735.P15359646944395286967

/-! ## A223735.P7725696957583836859

`record[n+1-A000378(3*A223730(n+1)+1)]`
-/

namespace A223735.P7725696957583836859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000378 (3 * A223730 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223735.P7725696957583836859

/-! ## A223735.P16799222369311898702

`record[n+1-A000404(n+1)*A223730(n+1)]`
-/

namespace A223735.P16799222369311898702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000404 (n + 1) * A223730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223735.P16799222369311898702

/-! ## A223735.P10383915257882196881

`∪[A004214(n+1), A019442(n+1)]`
-/

namespace A223735.P10383915257882196881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223735.P10383915257882196881

/-!
# A223736: Number of n X n 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223736, there is no canonical definition to state claims against.
-/

/-! ## A223736.P15511851710732484765

`A223742(∑[4*n]+1)`
-/

namespace A223736.P15511851710732484765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223736.P15511851710732484765

/-! ## A223736.P3667628490776649963

`record[A223742(A330613(n+1))]`
-/

namespace A223736.P3667628490776649963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223736.P3667628490776649963

/-! ## A223736.P8148462720985996371

`record[A223742(A286457(n+2))]`
-/

namespace A223736.P8148462720985996371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223736.P8148462720985996371

/-! ## A223736.P5279619381962756851

`record[A003982(n)*A223742(n+1)]`
-/

namespace A223736.P5279619381962756851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223736.P5279619381962756851

/-!
# A223737: Number of nX3 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223737, there is no canonical definition to state claims against.
-/

/-! ## A223737.P6559817732281756214

`A223742(∑[n+2]+4)`
-/

namespace A223737.P6559817732281756214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223737.P6559817732281756214

/-! ## A223737.P2519875500585433378

`record[gcd(A173787(n), A223742(n+4))]`
-/

namespace A223737.P2519875500585433378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173787 n) (A223742 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223737.P2519875500585433378

/-! ## A223737.P16057397537274901236

`record[A223742(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A223737.P16057397537274901236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223737.P16057397537274901236

/-! ## A223737.P18011117262428506284

`lcm(∏{p}[n+1, -1%#], A223742(A167614(n+1)))`
-/

namespace A223737.P18011117262428506284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) (A223742 (A167614 (n + 1)).toNat)

end

end A223737.P18011117262428506284

/-! ## A223737.P13583162354115035133

`A223742(A167614(n+1))+A181838(n)`
-/

namespace A223737.P13583162354115035133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A167614 (n + 1)).toNat + A181838 n

end

end A223737.P13583162354115035133

/-!
# A223738: Number of n X 4 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223738, there is no canonical definition to state claims against.
-/

/-! ## A223738.P7950105926398755323

`A223742(A145018(n+4))`
-/

namespace A223738.P7950105926398755323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A145018 (n + 4)).toNat

end

end A223738.P7950105926398755323

/-! ## A223738.P15834261067215032817

`A223742(A141214(n)+7)`
-/

namespace A223738.P15834261067215032817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A141214 n + 7).toNat

end

end A223738.P15834261067215032817

/-! ## A223738.P14257855306211785721

`A223742(A052905(n)+9)`
-/

namespace A223738.P14257855306211785721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A052905 n + 9).toNat

end

end A223738.P14257855306211785721

/-! ## A223738.P16465907797601097821

`A223742(A055999(n)+10)`
-/

namespace A223738.P16465907797601097821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A055999 n + 10).toNat

end

end A223738.P16465907797601097821

/-! ## A223738.P14875323463760644219

`A223742(eq[5, A066657(n)])`
-/

namespace A223738.P14875323463760644219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223738.P14875323463760644219

/-!
# A223739: Number of nX5 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223739, there is no canonical definition to state claims against.
-/

/-! ## A223739.P12183887552530463508

`A223742(∑[n+4]+11)`
-/

namespace A223739.P12183887552530463508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223739.P12183887552530463508

/-!
# A223740: Number of nX6 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223740, there is no canonical definition to state claims against.
-/

/-! ## A223740.P7693693973484135430

`A223742(∑[n+5]+16)`
-/

namespace A223740.P7693693973484135430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223740.P7693693973484135430

/-!
# A223741: Number of nX7 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223741, there is no canonical definition to state claims against.
-/

/-! ## A223741.P6198416149424090287

`A223742(A056119(n)+28)`
-/

namespace A223741.P6198416149424090287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A056119 n + 28).toNat

end

end A223741.P6198416149424090287

/-! ## A223741.P5332545134939467422

`A223742(eq[11, A066657(n)])`
-/

namespace A223741.P5332545134939467422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223741.P5332545134939467422

/-! ## A223741.P153906570927935699

`A223742(A166136(n+5)+1)`
-/

namespace A223741.P153906570927935699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A166136 (n + 5) + 1).toNat

end

end A223741.P153906570927935699

/-! ## A223741.P12618346955643319226

`A223742(A167499(n+5)+2)`
-/

namespace A223741.P12618346955643319226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A167499 (n + 5) + 2).toNat

end

end A223741.P12618346955643319226

/-! ## A223741.P9871412836455541592

`A223742(A000217(n+6)+7)`
-/

namespace A223741.P9871412836455541592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223742 (A000217 (n + 6) + 7).toNat

end

end A223741.P9871412836455541592

/-!
# A223742: T(n,k)=Number of nXk 0..2 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223742, there is no canonical definition to state claims against.
-/

/-! ## A223742.P9174058662689240256

`A004277(A223725(n+1))-A223831(n+1)`
-/

namespace A223742.P9174058662689240256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223725 (n + 1)).toNat - A223831 (n + 1)

end

end A223742.P9174058662689240256

/-!
# A223743: Number of nX1 0..2 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223743, there is no canonical definition to state claims against.
-/

/-! ## A223743.P3581791714231712279

`A245134(∑[n+2])`
-/

namespace A223743.P3581791714231712279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223743.P3581791714231712279

/-! ## A223743.P14996834676731621162

`or(1, A245134(A000096(n+1)))`
-/

namespace A223743.P14996834676731621162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245134 (A000096 (n + 1)).toNat)

end

end A223743.P14996834676731621162

/-! ## A223743.P17585359442628058698

`A245134(A000096(n+1))+A000007(n+1)`
-/

namespace A223743.P17585359442628058698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A223743.P17585359442628058698

/-! ## A223743.P15632181074301908247

`A245134(A000096(n+1))%A245130(n+1)`
-/

namespace A223743.P15632181074301908247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245134 (A000096 (n + 1)).toNat) (A245130 (n + 1))

end

end A223743.P15632181074301908247

/-! ## A223743.P2629320321045465532

`A040011(2*n+1)*A245134(A000096(n+1))`
-/

namespace A223743.P2629320321045465532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 (2 * n + 1) * A245134 (A000096 (n + 1)).toNat

end

end A223743.P2629320321045465532

/-! ## A223743.P15354599217624381408

`A245134(A000096(n+1))+val(A000040(n+2), 2)`
-/

namespace A223743.P15354599217624381408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000096 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 2)).toNat 2 : ℤ)

end

end A223743.P15354599217624381408

/-! ## A223743.P7452243845454602433

`A245134(A000096(n+1))+(A000032(n)-4)%-1`
-/

namespace A223743.P7452243845454602433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000096 (n + 1)).toNat + Int.tmod (A000032 n - 4) (-1)

end

end A223743.P7452243845454602433

/-! ## A223743.P8567224919748206775

`A001222(A060264(n))*A245134(A000096(n+1))`
-/

namespace A223743.P8567224919748206775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060264 n).toNat * A245134 (A000096 (n + 1)).toNat

end

end A223743.P8567224919748206775

/-! ## A223743.P11124416058374203981

`A245134(A000096(n+1))+A151763(A000005(n+1)²)`
-/

namespace A223743.P11124416058374203981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000096 (n + 1)).toNat + A151763 (A000005 (n + 1) ^ 2).toNat

end

end A223743.P11124416058374203981

/-!
# A223744: Number of nX3 0..2 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223744, there is no canonical definition to state claims against.
-/

/-! ## A223744.P15998479392749233659

`A223743(n+1)²`
-/

namespace A223744.P15998479392749233659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223743 (n + 1) ^ 2

end

end A223744.P15998479392749233659

/-! ## A223744.P16011292576661731103

`A245134(∑[n+2])²`
-/

namespace A223744.P16011292576661731103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A223744.P16011292576661731103

/-! ## A223744.P12927998081914325903

`A245134(A000096(n+1))^2`
-/

namespace A223744.P12927998081914325903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A000096 (n + 1)).toNat ^ 2

end

end A223744.P12927998081914325903

/-! ## A223744.P9244387360328718538

`A223743(n+1)^(2%A055983(n))`
-/

namespace A223744.P9244387360328718538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223743 (n + 1) : ℚ) ^ (Int.tmod 2 (A055983 n) : ℤ)

end

end A223744.P9244387360328718538

/-! ## A223744.P5345920545309548126

`A245134(∑[n+2])^(A000027(n+1)-(n-1))`
-/

namespace A223744.P5345920545309548126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245134 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A000027 (n + 1) - ((n : ℤ) - 1) : ℤ)

end

end A223744.P5345920545309548126

/-!
# A223745: Number of nX5 0..2 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223745, there is no canonical definition to state claims against.
-/

/-! ## A223745.P2806475342334467569

`A223747(A167499(n+3))`
-/

namespace A223745.P2806475342334467569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A167499 (n + 3)).toNat

end

end A223745.P2806475342334467569

/-! ## A223745.P8200009856628324615

`A223747(A155212(n)+13)`
-/

namespace A223745.P8200009856628324615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A155212 n + 13).toNat

end

end A223745.P8200009856628324615

/-! ## A223745.P226541324817010091

`A223747(A056000(n)+15)`
-/

namespace A223745.P226541324817010091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A056000 n + 15).toNat

end

end A223745.P226541324817010091

/-! ## A223745.P3008584936034057375

`A223747(eq[7, A066657(n)])`
-/

namespace A223745.P3008584936034057375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223745.P3008584936034057375

/-! ## A223745.P6001384020157947557

`A223747(A046691(n+2)+9)`
-/

namespace A223745.P6001384020157947557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A046691 (n + 2) + 9).toNat

end

end A223745.P6001384020157947557

/-!
# A223746: Number of nX6 0..2 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223746, there is no canonical definition to state claims against.
-/

/-! ## A223746.P18342159494625896285

`A223747(A166136(n+4))`
-/

namespace A223746.P18342159494625896285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A166136 (n + 4)).toNat

end

end A223746.P18342159494625896285

/-! ## A223746.P10036729265021744329

`A223747(A056115(n)+21)`
-/

namespace A223746.P10036729265021744329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A056115 n + 21).toNat

end

end A223746.P10036729265021744329

/-! ## A223746.P4314037657359158913

`A223747(A134869(n+5)+5)`
-/

namespace A223746.P4314037657359158913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A134869 (n + 5) + 5).toNat

end

end A223746.P4314037657359158913

/-! ## A223746.P16391097994149893440

`A223747(A000096(n+4)+7)`
-/

namespace A223746.P16391097994149893440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A000096 (n + 4) + 7).toNat

end

end A223746.P16391097994149893440

/-! ## A223746.P11817267299593305783

`A223747(A000217(n+5)+6)`
-/

namespace A223746.P11817267299593305783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (A000217 (n + 5) + 6).toNat

end

end A223746.P11817267299593305783

/-!
# A223747: T(n,k)=Number of nXk 0..2 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223747, there is no canonical definition to state claims against.
-/

/-! ## A223747.P11126313547837803571

`A336850(A234769(n+1))`
-/

namespace A223747.P11126313547837803571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (A234769 (n + 1)).toNat

end

end A223747.P11126313547837803571

/-! ## A223747.P15834385705789940102

`3*A002033(A196545(n+1))`
-/

namespace A223747.P15834385705789940102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002033 (A196545 (n + 1)).toNat

end

end A223747.P15834385705789940102

/-! ## A223747.P8918253243180901734

`A305932(3^A203181(n+1))`
-/

namespace A223747.P8918253243180901734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A203181 (n + 1) : ℤ))).toNat

end

end A223747.P8918253243180901734

/-!
# A223748: Number of n X 3 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223748, there is no canonical definition to state claims against.
-/

/-! ## A223748.P4193951882573452141

`A223045(n+1)*A223160(n+1)`
-/

namespace A223748.P4193951882573452141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223045 (n + 1) * A223160 (n + 1)

end

end A223748.P4193951882573452141

/-! ## A223748.P18422740870351744449

`A223045(n+1)/A223161(n+1)*A223162(n+1)`
-/

namespace A223748.P18422740870351744449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223045 (n + 1) : ℚ) / (A223161 (n + 1) : ℚ) * (A223162 (n + 1) : ℚ)

end

end A223748.P18422740870351744449

/-! ## A223748.P2241787526079223635

`A223046(n+1)/A223044(n+1)*A223160(n+1)`
-/

namespace A223748.P2241787526079223635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223046 (n + 1) : ℚ) / (A223044 (n + 1) : ℚ) * (A223160 (n + 1) : ℚ)

end

end A223748.P2241787526079223635

/-! ## A223748.P1135388327065916119

`A222856(n+1)/A223306(n+1)*A223046(n+1)*A223160(n+1)`
-/

namespace A223748.P1135388327065916119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222856 (n + 1) : ℚ) / (A223306 (n + 1) : ℚ) * (A223046 (n + 1) : ℚ) * (A223160 (n + 1) : ℚ)

end

end A223748.P1135388327065916119

/-! ## A223748.P11244100076231748251

`A223045(n+1)*A223165(∑[n]+1)`
-/

namespace A223748.P11244100076231748251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223045 (n + 1) * A223165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223748.P11244100076231748251

/-!
# A223749: Number of nX4 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223749, there is no canonical definition to state claims against.
-/

/-! ## A223749.P14060728095582812550

`A223751(∑[n+3]+1)`
-/

namespace A223749.P14060728095582812550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223749.P14060728095582812550

/-! ## A223749.P15467553431371120552

`record[A223751(A198464(n+1))]`
-/

namespace A223749.P15467553431371120552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223749.P15467553431371120552

/-!
# A223750: Number of nX5 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223750, there is no canonical definition to state claims against.
-/

/-! ## A223750.P11916499613827025789

`A223751(A141214(n+1))`
-/

namespace A223750.P11916499613827025789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (A141214 (n + 1)).toNat

end

end A223750.P11916499613827025789

/-! ## A223750.P11880498194757483798

`A223751(record[A198464(n+2)-1])`
-/

namespace A223750.P11880498194757483798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198464 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A223750.P11880498194757483798

/-!
# A223751: T(n,k)=Number of nX(k+1) 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223751, there is no canonical definition to state claims against.
-/

/-! ## A223751.P5362089445462678961

`A193978(A062354(n+1)+A002568(n+1))`
-/

namespace A223751.P5362089445462678961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193978 (A062354 (n + 1) + A002568 (n + 1)).toNat

end

end A223751.P5362089445462678961

/-!
# A223752: Number of 1X(n+1) 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223752, there is no canonical definition to state claims against.
-/

/-! ## A223752.P15793867029393746870

`A222926(n+1)/A222925(n+1)`
-/

namespace A223752.P15793867029393746870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222926 (n + 1) : ℚ) / (A222925 (n + 1) : ℚ)

end

end A223752.P15793867029393746870

/-! ## A223752.P1752139670599821734

`A223754(n+1)/A223753(n+1)`
-/

namespace A223752.P1752139670599821734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223754 (n + 1) : ℚ) / (A223753 (n + 1) : ℚ)

end

end A223752.P1752139670599821734

/-! ## A223752.P687377685285805314

`A223751(∑[n]+1)`
-/

namespace A223752.P687377685285805314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223752.P687377685285805314

/-! ## A223752.P2193278888095040870

`A223751(A000124(n))+char[10]`
-/

namespace A223752.P2193278888095040870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223752.P2193278888095040870

/-! ## A223752.P15933057126561387326

`record[A010054(n)*A223751(n+1)]`
-/

namespace A223752.P15933057126561387326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223752.P15933057126561387326

/-!
# A223753: Number of 2X(n+1) 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223753, there is no canonical definition to state claims against.
-/

/-! ## A223753.P6090390194071026871

`A223754(n+1)/A223752(n+1)`
-/

namespace A223753.P6090390194071026871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223754 (n + 1) : ℚ) / (A223752 (n + 1) : ℚ)

end

end A223753.P6090390194071026871

/-! ## A223753.P8436254340759146755

`A222925(n+1)/A222926(n+1)*A223754(n+1)`
-/

namespace A223753.P8436254340759146755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222925 (n + 1) : ℚ) / (A222926 (n + 1) : ℚ) * (A223754 (n + 1) : ℚ)

end

end A223753.P8436254340759146755

/-! ## A223753.P14214945937169187546

`A223754(n+1)/A223751(A000124(n))`
-/

namespace A223753.P14214945937169187546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223754 (n + 1) : ℚ) / (A223751 (A000124 n).toNat : ℚ)

end

end A223753.P14214945937169187546

/-! ## A223753.P7294358692830667528

`A223754(n+1)/record[A010054(n)*A223751(n+1)]`
-/

namespace A223753.P7294358692830667528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223751 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223754 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A223753.P7294358692830667528

/-! ## A223753.P8429545322402489287

`A223751(∑[n+1]+2)`
-/

namespace A223753.P8429545322402489287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223753.P8429545322402489287

/-!
# A223754: Number of 3X(n+1) 0..3 arrays with every row least squares fitting to a positive slope straight line and every column least squares fitting to a zero or positive slope straight line, with a single point array taken as having zero slope.

The programs for A223754, there is no canonical definition to state claims against.
-/

/-! ## A223754.P16366110587347985599

`A223752(n+1)*A223753(n+1)`
-/

namespace A223754.P16366110587347985599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223752 (n + 1) * A223753 (n + 1)

end

end A223754.P16366110587347985599

/-! ## A223754.P14957003970017219626

`A222926(n+1)/A222925(n+1)*A223753(n+1)`
-/

namespace A223754.P14957003970017219626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222926 (n + 1) : ℚ) / (A222925 (n + 1) : ℚ) * (A223753 (n + 1) : ℚ)

end

end A223754.P14957003970017219626

/-! ## A223754.P14330494808346506217

`A223751(∑[n]+1)*A223753(n+1)`
-/

namespace A223754.P14330494808346506217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A223753 (n + 1)

end

end A223754.P14330494808346506217

/-! ## A223754.P10011309193552883735

`record[A010054(n)*A223751(n+1)]*A223753(n+1)`
-/

namespace A223754.P10011309193552883735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A223753 (n + 1)

end

end A223754.P10011309193552883735

/-! ## A223754.P11376618421245362377

`A223751(∑[n+1]+2)*A223752(n+1)`
-/

namespace A223754.P11376618421245362377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223751 (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A223752 (n + 1)

end

end A223754.P11376618421245362377

/-!
# A223755: Number of n X n 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223755, there is no canonical definition to state claims against.
-/

/-! ## A223755.P7268592285446630160

`A223762((n+1)²+n²)`
-/

namespace A223755.P7268592285446630160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 ((n + 1) ^ 2 + n ^ 2)

end

end A223755.P7268592285446630160

/-!
# A223756: Number of n X 2 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223756, the canonical program `A223756.P3397043722478657849` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223756 has offset 1).

The definition of A223756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A223659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A223756.P3397043722478657849

`A223659(n+1)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A223756

/-- `A223659(n+1)²` -/
def P3397043722478657849.Spec : Prop :=
  ∀ n, P3397043722478657849.a n = A223756 (n + 1)

theorem P3397043722478657849.correct : P3397043722478657849.Spec := by
  intro n
  simp only [A223756, Nat.add_sub_cancel]

end A223756

/-! ## A223756.P1871056728211680436

`(∑[A257890(n)]+1)²`
-/

namespace A223756.P1871056728211680436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A223756.P1871056728211680436

namespace A223756

/-- `(∑[A257890(n)]+1)²` -/
def P1871056728211680436.Spec : Prop :=
  ∀ n, P1871056728211680436.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P13501842007124620487

`(∑[∑[A223718(n+1)]]+1)²`
-/

namespace A223756.P13501842007124620487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A223756.P13501842007124620487

namespace A223756

/-- `(∑[∑[A223718(n+1)]]+1)²` -/
def P13501842007124620487.Spec : Prop :=
  ∀ n, P13501842007124620487.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P144601017421465716

`(A225011(n+1)-A000581(n+8))²`
-/

namespace A223756.P144601017421465716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225011 (n + 1) - A000581 (n + 8)) ^ 2

end

end A223756.P144601017421465716

namespace A223756

/-- `(A225011(n+1)-A000581(n+8))²` -/
def P144601017421465716.Spec : Prop :=
  ∀ n, P144601017421465716.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P4610870388603839590

`(∑[∑[A223718(n+1)]]+1)*A223659(n+1)`
-/

namespace A223756.P4610870388603839590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A223659 (n + 1)

end

end A223756.P4610870388603839590

namespace A223756

/-- `(∑[∑[A223718(n+1)]]+1)*A223659(n+1)` -/
def P4610870388603839590.Spec : Prop :=
  ∀ n, P4610870388603839590.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P2632402150194087606

`A223659(A000027(n+1))*A223659(n+1)`
-/

namespace A223756.P2632402150194087606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 (A000027 (n + 1)).toNat * A223659 (n + 1)

end

end A223756.P2632402150194087606

namespace A223756

/-- `A223659(A000027(n+1))*A223659(n+1)` -/
def P2632402150194087606.Spec : Prop :=
  ∀ n, P2632402150194087606.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P15628550106991289361

`(A000127(n+1)-(A227675(n+1)+A000124(n)))²`
-/

namespace A223756.P15628550106991289361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000127 (n + 1) - (A227675 (n + 1) + A000124 n)) ^ 2

end

end A223756.P15628550106991289361

namespace A223756

/-- `(A000127(n+1)-(A227675(n+1)+A000124(n)))²` -/
def P15628550106991289361.Spec : Prop :=
  ∀ n, P15628550106991289361.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P2452955236262125118

`(Δ[A000580(n+7)]-A257890(n))²`
-/

namespace A223756.P2452955236262125118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A257890 n) ^ 2

end

end A223756.P2452955236262125118

namespace A223756

/-- `(Δ[A000580(n+7)]-A257890(n))²` -/
def P2452955236262125118.Spec : Prop :=
  ∀ n, P2452955236262125118.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P12088193648008114344

`record[A131054(A155212(n+1))²]`
-/

namespace A223756.P12088193648008114344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 (A155212 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223756.P12088193648008114344

namespace A223756

/-- `record[A131054(A155212(n+1))²]` -/
def P12088193648008114344.Spec : Prop :=
  ∀ n, P12088193648008114344.a n = A223756 (n + 1)

end A223756

/-! ## A223756.P2261684437567323771

`A225010(A167614(n+1))²`
-/

namespace A223756.P2261684437567323771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (A167614 (n + 1)).toNat ^ 2

end

end A223756.P2261684437567323771

namespace A223756

/-- `A225010(A167614(n+1))²` -/
def P2261684437567323771.Spec : Prop :=
  ∀ n, P2261684437567323771.a n = A223756 (n + 1)

end A223756

/-!
# A223757: Number of nX3 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223757, there is no canonical definition to state claims against.
-/

/-! ## A223757.P7019796380702756285

`A223762(∑[n+2]+4)`
-/

namespace A223757.P7019796380702756285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223757.P7019796380702756285

/-! ## A223757.P12277487157325607592

`A223762(A167614(n+1))+A184946(n)`
-/

namespace A223757.P12277487157325607592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A167614 (n + 1)).toNat + A184946 n

end

end A223757.P12277487157325607592

/-! ## A223757.P4678711295377665047

`A223762(A167614(n+1))*A304042(n)`
-/

namespace A223757.P4678711295377665047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A167614 (n + 1)).toNat * A304042 n

end

end A223757.P4678711295377665047

/-! ## A223757.P10631387487895080795

`lcm(A033999(n), A223762(A167614(n+1)))`
-/

namespace A223757.P10631387487895080795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223762 (A167614 (n + 1)).toNat)

end

end A223757.P10631387487895080795

/-! ## A223757.P16653517113083266946

`A161618(n+1)*A223762(A167614(n+1))`
-/

namespace A223757.P16653517113083266946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A223762 (A167614 (n + 1)).toNat

end

end A223757.P16653517113083266946

/-!
# A223758: Number of nX4 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223758, there is no canonical definition to state claims against.
-/

/-! ## A223758.P10436385485332565358

`A223762(A052905(n)+9)`
-/

namespace A223758.P10436385485332565358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A052905 n + 9).toNat

end

end A223758.P10436385485332565358

/-! ## A223758.P14906048416845195760

`A223762(A055999(n)+10)`
-/

namespace A223758.P14906048416845195760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A055999 n + 10).toNat

end

end A223758.P14906048416845195760

/-! ## A223758.P7696605050696410677

`A223762(A167614(n+2)+1)`
-/

namespace A223758.P7696605050696410677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A167614 (n + 2) + 1).toNat

end

end A223758.P7696605050696410677

/-! ## A223758.P11307984515762086833

`A223762(eq[5, A131818(n+1)])`
-/

namespace A223758.P11307984515762086833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223758.P11307984515762086833

/-! ## A223758.P12605287618479039281

`A223762(Δ[A264443(n)-n²])`
-/

namespace A223758.P12605287618479039281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (f1 (n + 1) - f1 n).toNat

end

end A223758.P12605287618479039281

/-!
# A223759: Number of nX5 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223759, there is no canonical definition to state claims against.
-/

/-! ## A223759.P10891093387470615761

`A223762(eq[6, A131818(n+1)])`
-/

namespace A223759.P10891093387470615761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223759.P10891093387470615761

/-! ## A223759.P7359845436729622978

`A223762(eq[5, A135223(n+1)]+1)`
-/

namespace A223759.P7359845436729622978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223759.P7359845436729622978

/-! ## A223759.P4009375296377457439

`A223762(Δ[A264443(n)])`
-/

namespace A223759.P4009375296377457439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (f1 (n + 1) - f1 n).toNat

end

end A223759.P4009375296377457439

/-! ## A223759.P8963711952790596399

`A223762(A374005(n+1))`
-/

namespace A223759.P8963711952790596399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A374005 (n + 1)).toNat

end

end A223759.P8963711952790596399

/-! ## A223759.P7669937986933502216

`A223762(eq[4, A193592(n)])`
-/

namespace A223759.P7669937986933502216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223759.P7669937986933502216

/-!
# A223760: Number of nX6 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223760, there is no canonical definition to state claims against.
-/

/-! ## A223760.P12785343483329917751

`A223762(eq[7, A131818(n+1)])`
-/

namespace A223760.P12785343483329917751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223760.P12785343483329917751

/-! ## A223760.P14891259782374102462

`A223762(A374007(n+1))`
-/

namespace A223760.P14891259782374102462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A374007 (n + 1)).toNat

end

end A223760.P14891259782374102462

/-! ## A223760.P5997801402676967902

`A223762(A052905(n+3))`
-/

namespace A223760.P5997801402676967902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A052905 (n + 3)).toNat

end

end A223760.P5997801402676967902

/-! ## A223760.P14449426477814492037

`A223762(eq[5, A193592(n)])`
-/

namespace A223760.P14449426477814492037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223760.P14449426477814492037

/-! ## A223760.P4026518131107928392

`A223762(eq[6, A200370(n+1)])`
-/

namespace A223760.P4026518131107928392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223760.P4026518131107928392

/-!
# A223761: Number of nX7 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223761, there is no canonical definition to state claims against.
-/

/-! ## A223761.P5094184693349403993

`A223762(eq[8, A131818(n+1)])`
-/

namespace A223761.P5094184693349403993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223761.P5094184693349403993

/-! ## A223761.P5562032860000503787

`A223762(A374008(n+1))`
-/

namespace A223761.P5562032860000503787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (A374008 (n + 1)).toNat

end

end A223761.P5562032860000503787

/-! ## A223761.P5552862600510943975

`A223762(eq[3, A118745(n+2)])`
-/

namespace A223761.P5552862600510943975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118745 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223761.P5552862600510943975

/-!
# A223762: T(n,k)=Number of nXk 0..3 arrays with rows, antidiagonals and columns unimodal.

The programs for A223762, there is no canonical definition to state claims against.
-/

/-! ## A223762.P10824584667404510924

`∑{e}[3^(n+1), A223850(#)]`
-/

namespace A223762.P10824584667404510924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A223850 (Nat.factorization (f1 n) p)

end

end A223762.P10824584667404510924

/-! ## A223762.P10680303892145768462

`A223811(A031501(∑[n]))`
-/

namespace A223762.P10680303892145768462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A031501 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223762.P10680303892145768462

/-! ## A223762.P2906540619737319658

`A223811(A084192(∑[n]))`
-/

namespace A223762.P2906540619737319658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223762.P2906540619737319658

/-! ## A223762.P9623229738778078730

`A223811(A084193(∑[n]))`
-/

namespace A223762.P9623229738778078730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223762.P9623229738778078730

/-! ## A223762.P7291217547858300122

`A004182(A223811(n+1))`
-/

namespace A223762.P7291217547858300122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A223811 (n + 1)).toNat

end

end A223762.P7291217547858300122

/-!
# A223763: Number of n X n 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223763, there is no canonical definition to state claims against.
-/

/-! ## A223763.P10564251437105330677

`A223770(∑[4*n]+1)`
-/

namespace A223763.P10564251437105330677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223763.P10564251437105330677

/-! ## A223763.P13689813885415563376

`record[A223770(Δ[A235355(n)])]`
-/

namespace A223763.P13689813885415563376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223763.P13689813885415563376

/-! ## A223763.P9067494614319666786

`record[A223770(A330613(n+1))]`
-/

namespace A223763.P9067494614319666786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223763.P9067494614319666786

/-! ## A223763.P14445799926338299565

`A223770(A001844(n))+char[17]`
-/

namespace A223763.P14445799926338299565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223763.P14445799926338299565

/-! ## A223763.P6422516146326828325

`record[A003982(n)*A223770(n+1)]`
-/

namespace A223763.P6422516146326828325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223763.P6422516146326828325

/-!
# A223764: Number of n X 2 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223764, the canonical program `A223764.P14770677288579789585` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223764 has offset 1).

The definition of A223764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223764.P14770677288579789585

`∑[∑[∑[n+1]+2]]+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A223764

/-- `∑[∑[∑[n+1]+2]]+1` -/
def P14770677288579789585.Spec : Prop :=
  ∀ n, (P14770677288579789585.a n : ℤ) = A223764 (n + 1)

theorem P14770677288579789585.correct : P14770677288579789585.Spec := by
  intro n
  simp only [A223764, Nat.add_sub_cancel]

end A223764

/-! ## A223764.P10036181817797014432

`∑[A003600(n)+A000217(n+2)]`
-/

namespace A223764.P10036181817797014432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n + A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223764.P10036181817797014432

namespace A223764

/-- `∑[A003600(n)+A000217(n+2)]` -/
def P10036181817797014432.Spec : Prop :=
  ∀ n, P10036181817797014432.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P489283398660192401

`Δ[A027658(n)+A000330(n)]`
-/

namespace A223764.P489283398660192401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P489283398660192401

namespace A223764

/-- `Δ[A027658(n)+A000330(n)]` -/
def P489283398660192401.Spec : Prop :=
  ∀ n, P489283398660192401.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P18274239706133872225

`Δ[A056520(n)+A027658(n)]`
-/

namespace A223764.P18274239706133872225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n + A027658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P18274239706133872225

namespace A223764

/-- `Δ[A056520(n)+A027658(n)]` -/
def P18274239706133872225.Spec : Prop :=
  ∀ n, P18274239706133872225.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P18377484148872736967

`Δ[A153056(n)+A027658(n)]`
-/

namespace A223764.P18377484148872736967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 n + A027658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P18377484148872736967

namespace A223764

/-- `Δ[A153056(n)+A027658(n)]` -/
def P18377484148872736967.Spec : Prop :=
  ∀ n, P18377484148872736967.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P14147564184615706464

`Δ[A153057(n)+A027658(n)]`
-/

namespace A223764.P14147564184615706464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 n + A027658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P14147564184615706464

namespace A223764

/-- `Δ[A153057(n)+A027658(n)]` -/
def P14147564184615706464.Spec : Prop :=
  ∀ n, P14147564184615706464.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P8028477655938698284

`Δ[A153058(n)+A027658(n)]`
-/

namespace A223764.P8028477655938698284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n + A027658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P8028477655938698284

namespace A223764

/-- `Δ[A153058(n)+A027658(n)]` -/
def P8028477655938698284.Spec : Prop :=
  ∀ n, P8028477655938698284.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P1172594335594617527

`Δ[A145127(n)+A064999(n)]`
-/

namespace A223764.P1172594335594617527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n + A064999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P1172594335594617527

namespace A223764

/-- `Δ[A145127(n)+A064999(n)]` -/
def P1172594335594617527.Spec : Prop :=
  ∀ n, P1172594335594617527.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P6942160072523477983

`Δ[A145127(n)+2*A000292(n)]`
-/

namespace A223764.P6942160072523477983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n + 2 * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223764.P6942160072523477983

namespace A223764

/-- `Δ[A145127(n)+2*A000292(n)]` -/
def P6942160072523477983.Spec : Prop :=
  ∀ n, P6942160072523477983.a n = A223764 (n + 1)

end A223764

/-! ## A223764.P17135825131512317955

`A210235(∑[n+3]+1)`
-/

namespace A223764.P17135825131512317955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210235 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223764.P17135825131512317955

namespace A223764

/-- `A210235(∑[n+3]+1)` -/
def P17135825131512317955.Spec : Prop :=
  ∀ n, P17135825131512317955.a n = A223764 (n + 1)

end A223764

/-!
# A223765: Number of n X 3 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223765, there is no canonical definition to state claims against.
-/

/-! ## A223765.P5427664426951222059

`A223770(∑[n+2]+4)`
-/

namespace A223765.P5427664426951222059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223765.P5427664426951222059

/-! ## A223765.P3782453748944584888

`record[A223770(A008795(n)+3)]`
-/

namespace A223765.P3782453748944584888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223765.P3782453748944584888

/-! ## A223765.P537061207599079092

`or(char[2], A223770(A167614(n+1)))`
-/

namespace A223765.P537061207599079092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223770 (A167614 (n + 1)).toNat)

end

end A223765.P537061207599079092

/-! ## A223765.P5310771043413072351

`record[A023531(n)*A223770(n+4)]`
-/

namespace A223765.P5310771043413072351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A223770 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223765.P5310771043413072351

/-! ## A223765.P3293453548914993294

`or(char[2], A223770(A166136(n+1)-3))`
-/

namespace A223765.P3293453548914993294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223770 (A166136 (n + 1) - 3).toNat)

end

end A223765.P3293453548914993294

/-!
# A223766: Number of n X 4 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223766, there is no canonical definition to state claims against.
-/

/-! ## A223766.P14457920904447696963

`A223770(∑[n+3]+7)`
-/

namespace A223766.P14457920904447696963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223766.P14457920904447696963

/-! ## A223766.P15727225462853338858

`or(char[2], A223770(A055999(n)+10))`
-/

namespace A223766.P15727225462853338858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223770 (A055999 n + 10).toNat)

end

end A223766.P15727225462853338858

/-! ## A223766.P6779022418022345519

`A223770(A052905(n)+9)+char[24]`
-/

namespace A223766.P6779022418022345519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223766.P6779022418022345519

/-! ## A223766.P3123189877569361451

`and(1, A000045(n))!*A223770(A055999(n)+10)`
-/

namespace A223766.P3123189877569361451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A223770 (A055999 n + 10).toNat

end

end A223766.P3123189877569361451

/-! ## A223766.P13851616678503216371

`A223770(A055999(n)+10)%(A000040(n+1)^4)`
-/

namespace A223766.P13851616678503216371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223770 (A055999 n + 10).toNat) (A000040 (n + 1) ^ 4)

end

end A223766.P13851616678503216371

/-!
# A223767: Number of nX5 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223767, there is no canonical definition to state claims against.
-/

/-! ## A223767.P15676902685556122066

`A223770(A374005(n+1))`
-/

namespace A223767.P15676902685556122066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A374005 (n + 1)).toNat

end

end A223767.P15676902685556122066

/-! ## A223767.P2110049344164195297

`A223770(A167499(n+3))`
-/

namespace A223767.P2110049344164195297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A167499 (n + 3)).toNat

end

end A223767.P2110049344164195297

/-! ## A223767.P15251072504067312215

`A223770(A288937(n+7))`
-/

namespace A223767.P15251072504067312215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A288937 (n + 7)).toNat

end

end A223767.P15251072504067312215

/-! ## A223767.P10529765850593689993

`A223770(A155212(n)+13)`
-/

namespace A223767.P10529765850593689993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A155212 n + 13).toNat

end

end A223767.P10529765850593689993

/-! ## A223767.P674159706172607554

`A223770(A056000(n)+15)`
-/

namespace A223767.P674159706172607554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A056000 n + 15).toNat

end

end A223767.P674159706172607554

/-!
# A223768: Number of nX6 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223768, there is no canonical definition to state claims against.
-/

/-! ## A223768.P7218284176711125318

`A223770(A374007(n+1))`
-/

namespace A223768.P7218284176711125318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A374007 (n + 1)).toNat

end

end A223768.P7218284176711125318

/-! ## A223768.P10757846207898311375

`A223770(A166136(n+4))`
-/

namespace A223768.P10757846207898311375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A166136 (n + 4)).toNat

end

end A223768.P10757846207898311375

/-! ## A223768.P17409059053199470873

`A223770(A056115(n)+21)`
-/

namespace A223768.P17409059053199470873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A056115 n + 21).toNat

end

end A223768.P17409059053199470873

/-! ## A223768.P321920211457067835

`A223770(A167499(n+4)+1)`
-/

namespace A223768.P321920211457067835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A167499 (n + 4) + 1).toNat

end

end A223768.P321920211457067835

/-! ## A223768.P5963080272766826221

`A223770(A167614(n+4)+3)`
-/

namespace A223768.P5963080272766826221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A167614 (n + 4) + 3).toNat

end

end A223768.P5963080272766826221

/-!
# A223769: Number of nX7 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223769, there is no canonical definition to state claims against.
-/

/-! ## A223769.P8533933495059193286

`A223770(A374008(n+1))`
-/

namespace A223769.P8533933495059193286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A374008 (n + 1)).toNat

end

end A223769.P8533933495059193286

/-! ## A223769.P9103745803981339977

`A223770(A167487(n+5))`
-/

namespace A223769.P9103745803981339977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A167487 (n + 5)).toNat

end

end A223769.P9103745803981339977

/-! ## A223769.P5905517226572515246

`A223770(A056119(n)+28)`
-/

namespace A223769.P5905517226572515246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A056119 n + 28).toNat

end

end A223769.P5905517226572515246

/-! ## A223769.P12248412823988787728

`A223770(A166136(n+5)+1)`
-/

namespace A223769.P12248412823988787728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A166136 (n + 5) + 1).toNat

end

end A223769.P12248412823988787728

/-! ## A223769.P16004993551195362823

`A223770(A000124(n+6)+6)`
-/

namespace A223769.P16004993551195362823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223770 (A000124 (n + 6) + 6).toNat

end

end A223769.P16004993551195362823

/-!
# A223770: T(n,k)=Number of nXk 0..1 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223770, there is no canonical definition to state claims against.
-/

/-! ## A223770.P6671582229613787690

`A033676(A156902(n+1)*A223777(n+1))`
-/

namespace A223770.P6671582229613787690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A156902 (n + 1) * A223777 (n + 1)).toNat

end

end A223770.P6671582229613787690

/-! ## A223770.P7029528347697330019

`A223777(n+1)-A112315(A063570(A209553(n+1)))`
-/

namespace A223770.P7029528347697330019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (n + 1) - A112315 (A063570 (A209553 (n + 1)).toNat).toNat

end

end A223770.P7029528347697330019

/-! ## A223770.P11183070892642929091

`A223777(A084193(∑[n]))`
-/

namespace A223770.P11183070892642929091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223770.P11183070892642929091

/-! ## A223770.P15688190191768286237

`A097449(A223777(n+1))`
-/

namespace A223770.P15688190191768286237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A223777 (n + 1)).toNat

end

end A223770.P15688190191768286237

/-! ## A223770.P10199037624269475016

`A223777(A004896(n+2))`
-/

namespace A223770.P10199037624269475016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A004896 (n + 2)).toNat

end

end A223770.P10199037624269475016

/-!
# A223771: Number of n X n 0..1 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A223771, there is no canonical definition to state claims against.
-/

/-! ## A223771.P13711782111923516652

`A223777(∑[4*n]+1)`
-/

namespace A223771.P13711782111923516652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223771.P13711782111923516652

/-! ## A223771.P7129644797696435818

`record[A223777(Δ[A235355(n)])]`
-/

namespace A223771.P7129644797696435818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223771.P7129644797696435818

/-! ## A223771.P8426963416384701694

`record[A223777(A330613(n+1))]`
-/

namespace A223771.P8426963416384701694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223771.P8426963416384701694

/-! ## A223771.P10908775430809807746

`A223777(A001844(n))+char[15]`
-/

namespace A223771.P10908775430809807746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223771.P10908775430809807746

/-! ## A223771.P10879038760090432268

`record[A003982(n)*A223777(n+1)]`
-/

namespace A223771.P10879038760090432268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223771.P10879038760090432268

/-!
# A223772: Number of n X 3 0..1 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A223772, there is no canonical definition to state claims against.
-/

/-! ## A223772.P2202583699992678148

`A223777(∑[n+2]+4)`
-/

namespace A223772.P2202583699992678148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223772.P2202583699992678148

/-! ## A223772.P11214775903866374282

`record[A223777(A008795(n)+3)]`
-/

namespace A223772.P11214775903866374282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223772.P11214775903866374282

/-! ## A223772.P9956810647957176412

`and(-1, A223777(A167614(n+1)))`
-/

namespace A223772.P9956810647957176412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223777 (A167614 (n + 1)).toNat)

end

end A223772.P9956810647957176412

/-! ## A223772.P17376727741516490547

`(A223777(A166136(n+1)-3)^(1/2))²`
-/

namespace A223772.P17376727741516490547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A223777 (A166136 (n + 1) - 3).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A223772.P17376727741516490547

/-! ## A223772.P3814075026669352216

`A223777(A167614(n+1))+A025466(n)`
-/

namespace A223772.P3814075026669352216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A167614 (n + 1)).toNat + A025466 n

end

end A223772.P3814075026669352216

/-!
# A223773: Number of n X 4 0..1 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A223773, there is no canonical definition to state claims against.
-/

/-! ## A223773.P12398704245000978060

`A223777(∑[n+3]+7)`
-/

namespace A223773.P12398704245000978060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223773.P12398704245000978060

/-! ## A223773.P1290614087980394514

`or(char[3], A223777(A055999(n)+10))`
-/

namespace A223773.P1290614087980394514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223777 (A055999 n + 10).toNat)

end

end A223773.P1290614087980394514

/-! ## A223773.P459870708814558968

`A223777(A055999(n)+10)%A000108(n+5)`
-/

namespace A223773.P459870708814558968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223777 (A055999 n + 10).toNat) (A000108 (n + 5))

end

end A223773.P459870708814558968

/-! ## A223773.P13002720073237364903

`A007318(C(n, 2))*A223777(A055999(n)+10)`
-/

namespace A223773.P13002720073237364903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A223777 (A055999 n + 10).toNat

end

end A223773.P13002720073237364903

/-! ## A223773.P8342464563611526344

`ceil(1/A007318(n))*A223777(A055999(n)+10)`
-/

namespace A223773.P8342464563611526344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A223777 (A055999 n + 10).toNat

end

end A223773.P8342464563611526344

/-!
# A223774: Number of n X 5 0..1 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A223774, there is no canonical definition to state claims against.
-/

/-! ## A223774.P11375244596595690416

`A223777(A374005(n+1))`
-/

namespace A223774.P11375244596595690416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A374005 (n + 1)).toNat

end

end A223774.P11375244596595690416

/-! ## A223774.P17306885457408053900

`A223777(A167499(n+3))`
-/

namespace A223774.P17306885457408053900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A167499 (n + 3)).toNat

end

end A223774.P17306885457408053900

/-! ## A223774.P18437532772761286409

`A223777(A288937(n+7))`
-/

namespace A223774.P18437532772761286409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A288937 (n + 7)).toNat

end

end A223774.P18437532772761286409

/-! ## A223774.P3689568390403444295

`A223777(A155212(n)+13)`
-/

namespace A223774.P3689568390403444295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A155212 n + 13).toNat

end

end A223774.P3689568390403444295

/-! ## A223774.P9737665834767671568

`A223777(A056000(n)+15)`
-/

namespace A223774.P9737665834767671568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A056000 n + 15).toNat

end

end A223774.P9737665834767671568

/-!
# A223775: Number of n X 6 0..1 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A223775, there is no canonical definition to state claims against.
-/

/-! ## A223775.P4812594109272190043

`A223777(A374007(n+1))`
-/

namespace A223775.P4812594109272190043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A374007 (n + 1)).toNat

end

end A223775.P4812594109272190043

/-! ## A223775.P4638794497313135321

`A223777(A166136(n+4))`
-/

namespace A223775.P4638794497313135321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A166136 (n + 4)).toNat

end

end A223775.P4638794497313135321

/-! ## A223775.P10894789096316819405

`A223777(A056115(n)+21)`
-/

namespace A223775.P10894789096316819405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A056115 n + 21).toNat

end

end A223775.P10894789096316819405

/-! ## A223775.P1288613232298335505

`A223777(A167499(n+4)+1)`
-/

namespace A223775.P1288613232298335505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A167499 (n + 4) + 1).toNat

end

end A223775.P1288613232298335505

/-! ## A223775.P3531903996865706986

`A223777(A167614(n+4)+3)`
-/

namespace A223775.P3531903996865706986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A167614 (n + 4) + 3).toNat

end

end A223775.P3531903996865706986

/-!
# A223776: Number of nX7 0..1 arrays with rows and columns unimodal and antidiagonals nondecreasing.

The programs for A223776, there is no canonical definition to state claims against.
-/

/-! ## A223776.P4661939477839236264

`A223777(A374008(n+1))`
-/

namespace A223776.P4661939477839236264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A374008 (n + 1)).toNat

end

end A223776.P4661939477839236264

/-! ## A223776.P15391568311635416865

`A223777(A167487(n+5))`
-/

namespace A223776.P15391568311635416865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A167487 (n + 5)).toNat

end

end A223776.P15391568311635416865

/-! ## A223776.P7159313122516087856

`A223777(A056119(n)+28)`
-/

namespace A223776.P7159313122516087856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A056119 n + 28).toNat

end

end A223776.P7159313122516087856

/-! ## A223776.P10645425474458970726

`A223777(A000124(n+6)+6)`
-/

namespace A223776.P10645425474458970726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A000124 (n + 6) + 6).toNat

end

end A223776.P10645425474458970726

/-! ## A223776.P12053164085539936442

`A223777(A000096(n+5)+8)`
-/

namespace A223776.P12053164085539936442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223777 (A000096 (n + 5) + 8).toNat

end

end A223776.P12053164085539936442

/-!
# A223778: Number of nX3 0..1 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223778, there is no canonical definition to state claims against.
-/

/-! ## A223778.P8330380434131960185

`A223782(∑[n+2]+4)`
-/

namespace A223778.P8330380434131960185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223778.P8330380434131960185

/-! ## A223778.P9449514002867469418

`A223782(A167614(n+1))+A025437(n)`
-/

namespace A223778.P9449514002867469418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A167614 (n + 1)).toNat + A025437 n

end

end A223778.P9449514002867469418

/-! ## A223778.P944281671825602330

`A223782(A167614(n+1))+A185284(n)`
-/

namespace A223778.P944281671825602330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A167614 (n + 1)).toNat + A185284 n

end

end A223778.P944281671825602330

/-! ## A223778.P9514411159845231277

`A326545(n)+A223782(A167614(n+1))`
-/

namespace A223778.P9514411159845231277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A223782 (A167614 (n + 1)).toNat

end

end A223778.P9514411159845231277

/-! ## A223778.P1741763667282726528

`A043566(n)*A223782(A167614(n+1))`
-/

namespace A223778.P1741763667282726528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n * A223782 (A167614 (n + 1)).toNat

end

end A223778.P1741763667282726528

/-!
# A223779: Number of n X 4 0..1 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223779, there is no canonical definition to state claims against.
-/

/-! ## A223779.P1700230604045079827

`A223782(∑[n+3]+7)`
-/

namespace A223779.P1700230604045079827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223779.P1700230604045079827

/-!
# A223780: Number of nX5 0..1 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223780, there is no canonical definition to state claims against.
-/

/-! ## A223780.P100545727994081773

`A223782(A374005(n+1))`
-/

namespace A223780.P100545727994081773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A374005 (n + 1)).toNat

end

end A223780.P100545727994081773

/-! ## A223780.P2567344924818795468

`A223782(A167499(n+3))`
-/

namespace A223780.P2567344924818795468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A167499 (n + 3)).toNat

end

end A223780.P2567344924818795468

/-! ## A223780.P6082662650042943380

`A223782(A155212(n)+13)`
-/

namespace A223780.P6082662650042943380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A155212 n + 13).toNat

end

end A223780.P6082662650042943380

/-! ## A223780.P5414789331176442561

`A223782(A056000(n)+15)`
-/

namespace A223780.P5414789331176442561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A056000 n + 15).toNat

end

end A223780.P5414789331176442561

/-! ## A223780.P3271591373173520014

`A223782(eq[7, A066657(n)])`
-/

namespace A223780.P3271591373173520014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223780.P3271591373173520014

/-!
# A223781: Number of nX6 0..1 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223781, there is no canonical definition to state claims against.
-/

/-! ## A223781.P18299507131398057955

`A223782(A374007(n+1))`
-/

namespace A223781.P18299507131398057955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A374007 (n + 1)).toNat

end

end A223781.P18299507131398057955

/-! ## A223781.P14201509692929890575

`A223782(A166136(n+4))`
-/

namespace A223781.P14201509692929890575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A166136 (n + 4)).toNat

end

end A223781.P14201509692929890575

/-! ## A223781.P11775373465806288526

`A223782(A056115(n)+21)`
-/

namespace A223781.P11775373465806288526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A056115 n + 21).toNat

end

end A223781.P11775373465806288526

/-! ## A223781.P7861756798234463724

`A223782(A167499(n+4)+1)`
-/

namespace A223781.P7861756798234463724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A167499 (n + 4) + 1).toNat

end

end A223781.P7861756798234463724

/-! ## A223781.P537450589103405069

`A223782(A167614(n+4)+3)`
-/

namespace A223781.P537450589103405069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223782 (A167614 (n + 4) + 3).toNat

end

end A223781.P537450589103405069

/-!
# A223782: T(n,k) = Number of n X k 0..1 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223782, there is no canonical definition to state claims against.
-/

/-! ## A223782.P15270321816357658059

`A223716(n+1)-A025458(A221125(n+1))`
-/

namespace A223782.P15270321816357658059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (n + 1) - A025458 (A221125 (n + 1)).toNat

end

end A223782.P15270321816357658059

/-! ## A223782.P4668737161290793999

`A223716(n+1)-A031346(A324233(n+1))`
-/

namespace A223782.P4668737161290793999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (n + 1) - A031346 (A324233 (n + 1)).toNat

end

end A223782.P4668737161290793999

/-!
# A223783: Number of n X n 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223783, there is no canonical definition to state claims against.
-/

/-! ## A223783.P1121045895600661256

`A223789(∑[4*n]+1)`
-/

namespace A223783.P1121045895600661256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223783.P1121045895600661256

/-! ## A223783.P7464751284314624336

`record[A223789(Δ[A235355(n)])]`
-/

namespace A223783.P7464751284314624336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223783.P7464751284314624336

/-! ## A223783.P47590822209261631

`record[A223789(record[A326657(n)])]`
-/

namespace A223783.P47590822209261631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223783.P47590822209261631

/-! ## A223783.P4116276011364507507

`A223789(A001844(n))+char[16]`
-/

namespace A223783.P4116276011364507507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223783.P4116276011364507507

/-!
# A223784: Number of n X 3 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223784, there is no canonical definition to state claims against.
-/

/-! ## A223784.P6606230604581577052

`A223789(∑[n+3]+1)`
-/

namespace A223784.P6606230604581577052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223784.P6606230604581577052

/-!
# A223785: Number of nX4 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223785, there is no canonical definition to state claims against.
-/

/-! ## A223785.P1332187863343982149

`A223789(A141214(n+1))`
-/

namespace A223785.P1332187863343982149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A141214 (n + 1)).toNat

end

end A223785.P1332187863343982149

/-! ## A223785.P11533466747562908913

`A223789(A055998(n+2))`
-/

namespace A223785.P11533466747562908913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A055998 (n + 2)).toNat

end

end A223785.P11533466747562908913

/-! ## A223785.P8961721033489588716

`A223789(A056000(n)+7)`
-/

namespace A223785.P8961721033489588716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A056000 n + 7).toNat

end

end A223785.P8961721033489588716

/-! ## A223785.P2695159274424204472

`A223789(eq[3, A193592(n)])`
-/

namespace A223785.P2695159274424204472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223785.P2695159274424204472

/-! ## A223785.P15127978405460575067

`A223789(A052905(n+1)+2)`
-/

namespace A223785.P15127978405460575067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A052905 (n + 1) + 2).toNat

end

end A223785.P15127978405460575067

/-!
# A223786: Number of nX5 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223786, there is no canonical definition to state claims against.
-/

/-! ## A223786.P10019209539935405035

`A223789(A046691(n+3))`
-/

namespace A223786.P10019209539935405035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A046691 (n + 3)).toNat

end

end A223786.P10019209539935405035

/-! ## A223786.P2231134194562772699

`A223789(A056115(n)+11)`
-/

namespace A223786.P2231134194562772699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A056115 n + 11).toNat

end

end A223786.P2231134194562772699

/-! ## A223786.P5097932054567217711

`A223789(eq[4, A193592(n)])`
-/

namespace A223786.P5097932054567217711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223786.P5097932054567217711

/-! ## A223786.P15720367138468189408

`A223789(Δ[A023545(n+1)])`
-/

namespace A223786.P15720367138468189408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (f1 (n + 1) - f1 n).toNat

end

end A223786.P15720367138468189408

/-! ## A223786.P4572418321149514189

`A223789(eq[6, A185782(n+1)])`
-/

namespace A223786.P4572418321149514189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223786.P4572418321149514189

/-!
# A223787: Number of nX6 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223787, there is no canonical definition to state claims against.
-/

/-! ## A223787.P16392548092534347251

`A223789(A052905(n+3))`
-/

namespace A223787.P16392548092534347251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A052905 (n + 3)).toNat

end

end A223787.P16392548092534347251

/-! ## A223787.P9366696484000396251

`A223789(eq[3, A219347(n)])`
-/

namespace A223787.P9366696484000396251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223787.P9366696484000396251

/-! ## A223787.P15207353691300937416

`A223789(eq[5, A193592(n)])`
-/

namespace A223787.P15207353691300937416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223787.P15207353691300937416

/-! ## A223787.P14981958236067269420

`A223789(A055999(n+3)+1)`
-/

namespace A223787.P14981958236067269420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A055999 (n + 3) + 1).toNat

end

end A223787.P14981958236067269420

/-! ## A223787.P5556994927201648548

`A223789(eq[6, A200370(n+1)])`
-/

namespace A223787.P5556994927201648548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223787.P5556994927201648548

/-!
# A223788: Number of nX7 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223788, there is no canonical definition to state claims against.
-/

/-! ## A223788.P8561465675872194727

`A223789(eq[4, A219347(n)])`
-/

namespace A223788.P8561465675872194727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223788.P8561465675872194727

/-! ## A223788.P8400925050169829065

`A223789(eq[6, A193592(n)])`
-/

namespace A223788.P8400925050169829065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223788.P8400925050169829065

/-! ## A223788.P16264755680395672447

`A223789(A056000(n+3)+4)`
-/

namespace A223788.P16264755680395672447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A056000 (n + 3) + 4).toNat

end

end A223788.P16264755680395672447

/-! ## A223788.P16488989408989817487

`A223789(eq[7, A200370(n+1)])`
-/

namespace A223788.P16488989408989817487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223788.P16488989408989817487

/-! ## A223788.P7638682308020859295

`A223789(eq[10, A185782(n+1)])`
-/

namespace A223788.P7638682308020859295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223788.P7638682308020859295

/-!
# A223789: T(n,k)=Number of nXk 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223789, there is no canonical definition to state claims against.
-/

/-! ## A223789.P2476752058622335755

`A223975(A084192(∑[n]))`
-/

namespace A223789.P2476752058622335755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223789.P2476752058622335755

/-! ## A223789.P5499368920565649079

`A223975(A084193(∑[n]))`
-/

namespace A223789.P5499368920565649079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223789.P5499368920565649079

/-! ## A223789.P17342014647510102113

`A223975(A327487(∑[n]))`
-/

namespace A223789.P17342014647510102113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A327487 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223789.P17342014647510102113

/-! ## A223789.P15606930934029705923

`A075054(A223975(n+1))`
-/

namespace A223789.P15606930934029705923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A223975 (n + 1)).toNat

end

end A223789.P15606930934029705923

/-! ## A223789.P14641726024626707579

`A223975(A004896(n+2))`
-/

namespace A223789.P14641726024626707579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A004896 (n + 2)).toNat

end

end A223789.P14641726024626707579

/-!
# A223790: Number of 3 X n 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223790, there is no canonical definition to state claims against.
-/

/-! ## A223790.P12350620462860867408

`A223789(∑[n+2]+4)`
-/

namespace A223790.P12350620462860867408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223790.P12350620462860867408

/-! ## A223790.P6591273678899573527

`A036225(n)*A223789(A167614(n+1))`
-/

namespace A223790.P6591273678899573527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A223789 (A167614 (n + 1)).toNat

end

end A223790.P6591273678899573527

/-! ## A223790.P14839495363073092582

`A223789(A167614(n+1))*A291168(n)`
-/

namespace A223790.P14839495363073092582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A167614 (n + 1)).toNat * A291168 n

end

end A223790.P14839495363073092582

/-! ## A223790.P15444313085258261440

`A223789(A167614(n+1))%A017585(n)`
-/

namespace A223790.P15444313085258261440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223789 (A167614 (n + 1)).toNat) (A017585 n)

end

end A223790.P15444313085258261440

/-! ## A223790.P7648573434761999718

`lcm(A033999(n), A223789(A167614(n+1)))`
-/

namespace A223790.P7648573434761999718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223789 (A167614 (n + 1)).toNat)

end

end A223790.P7648573434761999718

/-!
# A223791: Number of 4Xn 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223791, there is no canonical definition to state claims against.
-/

/-! ## A223791.P14902034002741146100

`A223789(A141214(n)+7)`
-/

namespace A223791.P14902034002741146100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A141214 n + 7).toNat

end

end A223791.P14902034002741146100

/-! ## A223791.P7872764868912159428

`A223789(A052905(n)+9)`
-/

namespace A223791.P7872764868912159428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A052905 n + 9).toNat

end

end A223791.P7872764868912159428

/-! ## A223791.P3695604187907099533

`A223789(A167614(n+2)+1)`
-/

namespace A223791.P3695604187907099533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A167614 (n + 2) + 1).toNat

end

end A223791.P3695604187907099533

/-! ## A223791.P8354176564355164200

`A223789(A166136(n+2)-2)`
-/

namespace A223791.P8354176564355164200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A166136 (n + 2) - 2).toNat

end

end A223791.P8354176564355164200

/-! ## A223791.P14082531796090610754

`A223789(eq[5, A131818(n+1)])`
-/

namespace A223791.P14082531796090610754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223791.P14082531796090610754

/-!
# A223792: Number of 5Xn 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223792, there is no canonical definition to state claims against.
-/

/-! ## A223792.P14759224279379726376

`A223789(A167499(n+3))`
-/

namespace A223792.P14759224279379726376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A167499 (n + 3)).toNat

end

end A223792.P14759224279379726376

/-! ## A223792.P4472425745009369297

`A223789(A056000(n)+15)`
-/

namespace A223792.P4472425745009369297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A056000 n + 15).toNat

end

end A223792.P4472425745009369297

/-! ## A223792.P6101478450439637681

`A223789(eq[7, A066657(n)])`
-/

namespace A223792.P6101478450439637681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223792.P6101478450439637681

/-! ## A223792.P867283750721123772

`A223789(A055998(n+2)+8)`
-/

namespace A223792.P867283750721123772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A055998 (n + 2) + 8).toNat

end

end A223792.P867283750721123772

/-! ## A223792.P4986651180084792984

`A223789(eq[6, A131818(n+1)])`
-/

namespace A223792.P4986651180084792984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223792.P4986651180084792984

/-!
# A223793: Number of 6Xn 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223793, there is no canonical definition to state claims against.
-/

/-! ## A223793.P3794166697553964190

`A223789(A056115(n)+21)`
-/

namespace A223793.P3794166697553964190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A056115 n + 21).toNat

end

end A223793.P3794166697553964190

/-! ## A223793.P1555059066622094131

`A223789(A167499(n+4)+1)`
-/

namespace A223793.P1555059066622094131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A167499 (n + 4) + 1).toNat

end

end A223793.P1555059066622094131

/-! ## A223793.P12838701670386611107

`A223789(A000217(n+5)+6)`
-/

namespace A223793.P12838701670386611107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A000217 (n + 5) + 6).toNat

end

end A223793.P12838701670386611107

/-! ## A223793.P11531716110838100232

`A223789(A052905(n+2)+11)`
-/

namespace A223793.P11531716110838100232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A052905 (n + 2) + 11).toNat

end

end A223793.P11531716110838100232

/-! ## A223793.P16805570186381417726

`A223789(eq[7, A131818(n+1)])`
-/

namespace A223793.P16805570186381417726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223793.P16805570186381417726

/-!
# A223794: Number of 7Xn 0..2 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223794, there is no canonical definition to state claims against.
-/

/-! ## A223794.P12142151961125308679

`A223789(A056119(n)+28)`
-/

namespace A223794.P12142151961125308679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A056119 n + 28).toNat

end

end A223794.P12142151961125308679

/-! ## A223794.P15998323736987322835

`A223789(eq[11, A066657(n)])`
-/

namespace A223794.P15998323736987322835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223794.P15998323736987322835

/-! ## A223794.P14806799243818801618

`A223789(A168106(n)-n)`
-/

namespace A223794.P14806799243818801618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A168106 n - (n : ℤ)).toNat

end

end A223794.P14806799243818801618

/-! ## A223794.P3029154865793195788

`A223789(A000217(n+6)+7)`
-/

namespace A223794.P3029154865793195788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (A000217 (n + 6) + 7).toNat

end

end A223794.P3029154865793195788

/-! ## A223794.P2266922402724913407

`A223789(eq[8, A131818(n+1)])`
-/

namespace A223794.P2266922402724913407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223794.P2266922402724913407

/-!
# A223795: Number of n X n 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223795, there is no canonical definition to state claims against.
-/

/-! ## A223795.P1013989177515282864

`A223801((n+1)²+n²)`
-/

namespace A223795.P1013989177515282864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 ((n + 1) ^ 2 + n ^ 2)

end

end A223795.P1013989177515282864

/-!
# A223796: Number of nX3 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223796, there is no canonical definition to state claims against.
-/

/-! ## A223796.P17754751552783375282

`A223801(∑[n+3]+1)`
-/

namespace A223796.P17754751552783375282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223796.P17754751552783375282

/-!
# A223797: Number of nX4 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223797, there is no canonical definition to state claims against.
-/

/-! ## A223797.P1094951598142074082

`A223801(A141214(n+1))`
-/

namespace A223797.P1094951598142074082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A141214 (n + 1)).toNat

end

end A223797.P1094951598142074082

/-! ## A223797.P17754355807840820737

`A223801(eq[4, A209434(n)])`
-/

namespace A223797.P17754355807840820737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223797.P17754355807840820737

/-! ## A223797.P3386111000831231740

`A223801(A052905(n+1)+2)`
-/

namespace A223797.P3386111000831231740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A052905 (n + 1) + 2).toNat

end

end A223797.P3386111000831231740

/-! ## A223797.P5810644144336617327

`A223801(A051936(n+4)+6)`
-/

namespace A223797.P5810644144336617327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A051936 (n + 4) + 6).toNat

end

end A223797.P5810644144336617327

/-! ## A223797.P7577357205639821979

`A223801(eq[4, A185782(n+1)])`
-/

namespace A223797.P7577357205639821979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223797.P7577357205639821979

/-!
# A223798: Number of n X 5 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223798, there is no canonical definition to state claims against.
-/

/-! ## A223798.P16514855669024864990

`A223801(Δ[A023545(n+1)])`
-/

namespace A223798.P16514855669024864990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (f1 (n + 1) - f1 n).toNat

end

end A223798.P16514855669024864990

/-! ## A223798.P11673693918151689248

`A223801(eq[4, A025581(abs(n-1))])`
-/

namespace A223798.P11673693918151689248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223798.P11673693918151689248

/-!
# A223799: Number of nX6 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223799, there is no canonical definition to state claims against.
-/

/-! ## A223799.P12097594194664043469

`A223801(eq[8, A185782(n+1)])`
-/

namespace A223799.P12097594194664043469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223799.P12097594194664043469

/-! ## A223799.P12049622207024049582

`A223801(Δ[A023545(n+2)]-1)`
-/

namespace A223799.P12049622207024049582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (f1 (n + 1) - f1 n - 1).toNat

end

end A223799.P12049622207024049582

