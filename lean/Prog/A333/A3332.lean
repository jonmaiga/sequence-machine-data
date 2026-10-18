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
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A333200: Rectangular array read by antidiagonals: row n shows the primes p(k) such that p(k) = p(k-1) + 2n, with 2 prefixed to row 1.

The programs for A333200, there is no canonical definition to state claims against.
-/

/-! ## A333200.P11212173617634906999

`A000040(A333201(n+1))`
-/

namespace A333200.P11212173617634906999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333201 (n + 1)).toNat

end

end A333200.P11212173617634906999

/-! ## A333200.P15863829833587085968

`A008578(A333201(n+1)+1)`
-/

namespace A333200.P15863829833587085968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333201 (n + 1) + 1).toNat

end

end A333200.P15863829833587085968

/-! ## A333200.P10899989378157842376

`A182986(A333201(n+1)+1)`
-/

namespace A333200.P10899989378157842376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A333201 (n + 1) + 1).toNat

end

end A333200.P10899989378157842376

/-! ## A333200.P14510240316497916944

`∑{d}[A333201(n+1), A007444(#)]`
-/

namespace A333200.P14510240316497916944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A333200.P14510240316497916944

/-! ## A333200.P3459987636509184725

`A008864(A333201(n+1))-abs(A033999(n))`
-/

namespace A333200.P3459987636509184725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A333201 (n + 1)).toNat - |A033999 n|

end

end A333200.P3459987636509184725

/-! ## A333200.P16897432117971244128

`A008864(A333201(n+1))-A007318(∑[n])`
-/

namespace A333200.P16897432117971244128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A333201 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333200.P16897432117971244128

/-! ## A333200.P4220831390326726686

`A008864(A333201(n+1))-gcd(13, A007318(n))`
-/

namespace A333200.P4220831390326726686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A333201 (n + 1)).toNat - (Int.gcd 13 (A007318 n) : ℤ)

end

end A333200.P4220831390326726686

/-! ## A333200.P6782158370625830440

`A008864(A333201(n+1))-A007318(C(2, n))²`
-/

namespace A333200.P6782158370625830440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A333201 (n + 1)).toNat - A007318 (Nat.choose 2 n) ^ 2

end

end A333200.P6782158370625830440

/-! ## A333200.P14405471642070041093

`A008864(A333201(n+1))-A014963(6*(n+1))`
-/

namespace A333200.P14405471642070041093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A333201 (n + 1)).toNat - A014963 (6 * (n + 1))

end

end A333200.P14405471642070041093

/-! ## A333200.P12308857602359215748

`A008864(A333201(n+1))-A018252(gcd(n, n+1))`
-/

namespace A333200.P12308857602359215748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A333201 (n + 1)).toNat - A018252 (Nat.gcd n (n + 1))

end

end A333200.P12308857602359215748

/-!
# A333201: Rectangular array read by antidiagonals: row n shows the numbers k such that p(k) = prime(k-1) + 2n, where prime(k) = k-th prime, with 1 prefixed to row 1.

The programs for A333201, there is no canonical definition to state claims against.
-/

/-! ## A333201.P9819047163712641258

`A000720(A333200(n+1))`
-/

namespace A333201.P9819047163712641258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A333200 (n + 1)).toNat

end

end A333201.P9819047163712641258

/-! ## A333201.P8362461372381228424

`A003963(p?[A333200(n+1)])`
-/

namespace A333201.P8362461372381228424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333201.P8362461372381228424

/-! ## A333201.P1284635486460140957

`A026233(p?[A333200(n+1)])`
-/

namespace A333201.P1284635486460140957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333201.P1284635486460140957

/-! ## A333201.P5319339685743714739

`A049084(p?[A333200(n+1)])`
-/

namespace A333201.P5319339685743714739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333201.P5319339685743714739

/-! ## A333201.P10230189321913796725

`A055396(p?[A333200(n+1)])`
-/

namespace A333201.P10230189321913796725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333201.P10230189321913796725

/-! ## A333201.P3009444737898740657

`A056239(p?[A333200(n+1)])`
-/

namespace A333201.P3009444737898740657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333201.P3009444737898740657

/-! ## A333201.P5534274084315673297

`A003963(2*A333200(n+1))`
-/

namespace A333201.P5534274084315673297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A333200 (n + 1)).toNat

end

end A333201.P5534274084315673297

/-! ## A333201.P666463477673155580

`A055679(2*A333200(n+1))`
-/

namespace A333201.P666463477673155580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A333200 (n + 1)).toNat

end

end A333201.P666463477673155580

/-! ## A333201.P17622532602318507959

`A056172(2*A333200(n+1))`
-/

namespace A333201.P17622532602318507959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A333200 (n + 1)).toNat

end

end A333201.P17622532602318507959

/-! ## A333201.P15687593605472199499

`A003963(lcm(2, A333200(n+1)))`
-/

namespace A333201.P15687593605472199499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A333200 (n + 1)))

end

end A333201.P15687593605472199499

/-!
# A333206: a(n) is the least decimal digit of n^3.

The programs for A333206, the canonical program `A333206.P6668117811611631188` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333206 has offset 0).

The definition of A333206 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333206.P6668117811611631188

`A054054(n^3)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333206

/-- `A054054(n^3)` -/
def P6668117811611631188.Spec : Prop :=
  ∀ n, P6668117811611631188.a n = A333206 n

theorem P6668117811611631188.correct : P6668117811611631188.Spec := by
  intro n
  simp only [A333206]

end A333206

/-! ## A333206.P7603872620741800793

`A032554(n)%10`
-/

namespace A333206.P7603872620741800793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032554 n) 10

end

end A333206.P7603872620741800793

namespace A333206

/-- `A032554(n)%10` -/
def P7603872620741800793.Spec : Prop :=
  ∀ n, P7603872620741800793.a n = A333206 n

end A333206

/-! ## A333206.P7751694602819653114

`(A151949(n^3)+A032553(n))%10`
-/

namespace A333206.P7751694602819653114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151949 (n ^ 3) + A032553 n) 10

end

end A333206.P7751694602819653114

namespace A333206

/-- `(A151949(n^3)+A032553(n))%10` -/
def P7751694602819653114.Spec : Prop :=
  ∀ n, P7751694602819653114.a n = A333206 n

end A333206

/-! ## A333206.P10284456765243858642

`(A151949(A000578(n))+A004185(A032553(n)))%10`
-/

namespace A333206.P10284456765243858642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151949 (A000578 n).toNat + A004185 (A032553 n).toNat) 10

end

end A333206.P10284456765243858642

namespace A333206

/-- `(A151949(A000578(n))+A004185(A032553(n)))%10` -/
def P10284456765243858642.Spec : Prop :=
  ∀ n, P10284456765243858642.a n = A333206 n

end A333206

/-! ## A333206.P597753654390594668

`val(A086066(n^3), 2)`
-/

namespace A333206.P597753654390594668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 (n ^ 3)).toNat 2

end

end A333206.P597753654390594668

namespace A333206

/-- `val(A086066(n^3), 2)` -/
def P597753654390594668.Spec : Prop :=
  ∀ n, (P597753654390594668.a n : ℤ) = A333206 n

end A333206

/-!
# A333207: Twin primes whose base-10 digit reversals are also twin primes.

The programs for A333207, there is no canonical definition to state claims against.
-/

/-! ## A333207.P14798191072519938123

`A118725(∑[A287383(n)]+1)`
-/

namespace A333207.P14798191072519938123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A333207.P14798191072519938123

/-! ## A333207.P10367393787586007945

`filter[A118725(n+1), A137161(#)]`
-/

namespace A333207.P10367393787586007945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A333207.P10367393787586007945

/-! ## A333207.P5987400468794518401

`filter[A118725(n+2), A089829(#)]`
-/

namespace A333207.P5987400468794518401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A333207.P5987400468794518401

/-! ## A333207.P7814098744420777544

`filter[A118725(n+2), A102609(#)]`
-/

namespace A333207.P7814098744420777544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A333207.P7814098744420777544

/-! ## A333207.P17712586459834659815

`filter[A118725(n+2), A165556(#)]`
-/

namespace A333207.P17712586459834659815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118725 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165556 (f1 j).toNat = 1) n)

end

end A333207.P17712586459834659815

/-!
# A333210: Variation of Van Eck's sequence A181391: a(n+1) = the minimum positive offset m from a(n) such that a(n-m-1)+a(n-m) = a(n-1)+a(n); a(n+1)=0 if no such m exists. Start with a(1) = a(2) = 0.

The programs for A333210, there is no canonical definition to state claims against.
-/

/-! ## A333210.P2978278846533253497

`A086971(∑[A261585(A037955(n))])`
-/

namespace A333210.P2978278846533253497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A037955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333210.P2978278846533253497

/-! ## A333210.P8239110485336485931

`A211272(A263864(A050118(n+1)))`
-/

namespace A333210.P8239110485336485931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (A263864 (A050118 (n + 1)).toNat).toNat

end

end A333210.P8239110485336485931

/-! ## A333210.P17493431698372294630

`A160166(A103495(A187829(n+1)+n))`
-/

namespace A333210.P17493431698372294630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160166 (A103495 (A187829 (n + 1) + (n : ℤ)).toNat).toNat

end

end A333210.P17493431698372294630

/-! ## A333210.P7516487039539048534

`A007968(A351884(n+1))`
-/

namespace A333210.P7516487039539048534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A351884 (n + 1)).toNat

end

end A333210.P7516487039539048534

/-! ## A333210.P18157087220760013968

`A170958(A213213(n+1))`
-/

namespace A333210.P18157087220760013968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 (A213213 (n + 1)).toNat

end

end A333210.P18157087220760013968

/-!
# A333211: Variation of Van Eck's sequence A181391: a(n+1) = the minimum positive offset m from a(n) such that a(n-m-1)*a(n-m) = a(n-1)*a(n); a(n+1)=0 if no such m exists. Start with a(1) = a(2) = 0.

The programs for A333211, there is no canonical definition to state claims against.
-/

/-! ## A333211.P17916079080547865443

`A077681(A011782(n))%∑[char[3*n]]`
-/

namespace A333211.P17916079080547865443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077681 (A011782 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333211.P17916079080547865443

/-! ## A333211.P17171301242521002989

`and(A005704(A024493(n)), A333632(n))`
-/

namespace A333211.P17171301242521002989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005704 (A024493 n).toNat) (A333632 n)

end

end A333211.P17171301242521002989

/-! ## A333211.P5919534307154311764

`A162613(A187829(n+1)+10)%A008620(n)`
-/

namespace A333211.P5919534307154311764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162613 (A187829 (n + 1) + 10).toNat) (A008620 n)

end

end A333211.P5919534307154311764

/-! ## A333211.P10869739685981530326

`A124735(A157162(n+2))`
-/

namespace A333211.P10869739685981530326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124735 (A157162 (n + 2)).toNat

end

end A333211.P10869739685981530326

/-! ## A333211.P16904768330897895741

`A224931(n+1)%A246052(A338356(n+1))`
-/

namespace A333211.P16904768330897895741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224931 (n + 1)) (A246052 (A338356 (n + 1)).toNat)

end

end A333211.P16904768330897895741

/-!
# A333212: Lengths of maximal weakly decreasing subsequences in the sequence of prime gaps (A001223).

The programs for A333212, there is no canonical definition to state claims against.
-/

/-! ## A333212.P7616742961038735669

`Δ[A000720(A068828(n+1))]`
-/

namespace A333212.P7616742961038735669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A068828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333212.P7616742961038735669

/-! ## A333212.P735522261809021607

`Δ[A003963(2*A068828(n+1))]`
-/

namespace A333212.P735522261809021607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A068828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333212.P735522261809021607

/-! ## A333212.P8683998404150968168

`Δ[A061395(2*A068828(n+1))]`
-/

namespace A333212.P8683998404150968168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A068828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333212.P8683998404150968168

/-! ## A333212.P4623968036900099037

`Δ[∪[A258025(n+1), A000538(n)]]`
-/

namespace A333212.P4623968036900099037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333212.P4623968036900099037

/-! ## A333212.P17613926420121468426

`Δ[∪[A258025(n+1), A016911(n)]]`
-/

namespace A333212.P17613926420121468426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333212.P17613926420121468426

/-! ## A333212.P11510426219997941106

`Δ[∪[A258025(n+1), A075931(n)]]`
-/

namespace A333212.P11510426219997941106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075931 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333212.P11510426219997941106

/-! ## A333212.P14482151878941074500

`Δ[lt[A118534(n+1), A008578(n+1)]]`
-/

namespace A333212.P14482151878941074500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333212.P14482151878941074500

/-! ## A333212.P13572375374371991527

`Δ[lt[A076368(n+1), A076368(n+2)]]`
-/

namespace A333212.P13572375374371991527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333212.P13572375374371991527

/-! ## A333212.P10884299878121180943

`Δ[A158973(A068828(n+1)+n%gcd(7, n))]`
-/

namespace A333212.P10884299878121180943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158973 (A068828 (n + 1) + ((n % Nat.gcd 7 n : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333212.P10884299878121180943

/-! ## A333212.P14255309104028756070

`Δ[A003963(A068828(A000027(n+1)))]`
-/

namespace A333212.P14255309104028756070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A068828 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333212.P14255309104028756070

/-!
# A333213: Triangle read by rows where T(n,k) is the number of compositions of n with k adjacent terms that are equal or increasing (weak ascents) n >= 0, 0 <= k <= n.

The programs for A333213, there is no canonical definition to state claims against.
-/

/-! ## A333213.P5875459139618454239

`A285229(n)+A124763(A099594(n))`
-/

namespace A333213.P5875459139618454239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n + A124763 (A099594 n).toNat

end

end A333213.P5875459139618454239

/-! ## A333213.P960625990607595298

`A285229(n)+A173920(A173917(n))`
-/

namespace A333213.P960625990607595298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n + A173920 (A173917 n).toNat

end

end A333213.P960625990607595298

/-! ## A333213.P4228649810913076427

`A285229(n)+A244415(A157156(n))`
-/

namespace A333213.P4228649810913076427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n + A244415 (A157156 n).toNat

end

end A333213.P4228649810913076427

/-! ## A333213.P7270060839787562740

`A321936(A001263(n+1))+A285229(n)`
-/

namespace A333213.P7270060839787562740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A001263 (n + 1)).toNat + A285229 n

end

end A333213.P7270060839787562740

/-! ## A333213.P16265411199740956159

`A285229(n)+A010894(A207613(n+1))`
-/

namespace A333213.P16265411199740956159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n + A010894 ((A207613 (n + 1)).toNat + 21)

end

end A333213.P16265411199740956159

/-!
# A333214: Positions of adjacent unequal terms in the sequence of differences between primes.

The programs for A333214, the canonical program `A333214.P10257277763201580754` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333214 has offset 1).

The definition of A333214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333214.P4946924476530049271

`∑[A333254(n+1)]`
-/

namespace A333214.P4946924476530049271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333214.P4946924476530049271

namespace A333214

/-- `∑[A333254(n+1)]` -/
def P4946924476530049271.Spec : Prop :=
  ∀ n, P4946924476530049271.a n = A333214 (n + 1)

end A333214

/-! ## A333214.P10257277763201580754

`filter[A319702(2*n+1), A131695(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A333214

/-- `filter[A319702(2*n+1), A131695(#)]` -/
def P10257277763201580754.Spec : Prop :=
  ∀ n, P10257277763201580754.a n = A333214 (n + 1)

theorem P10257277763201580754.correct : P10257277763201580754.Spec := by
  intro n
  simp only [A333214, Nat.add_sub_cancel]

end A333214

/-! ## A333214.P3235631506235379198

`filter[n+1, A131695(#)]`
-/

namespace A333214.P3235631506235379198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j) = 1) n)

end

end A333214.P3235631506235379198

namespace A333214

/-- `filter[n+1, A131695(#)]` -/
def P3235631506235379198.Spec : Prop :=
  ∀ n, (P3235631506235379198.a n : ℤ) = A333214 (n + 1)

end A333214

/-! ## A333214.P10015860649050082387

`A033270(A178943(n+2))`
-/

namespace A333214.P10015860649050082387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A178943 (n + 2)).toNat

end

end A333214.P10015860649050082387

namespace A333214

/-- `A033270(A178943(n+2))` -/
def P10015860649050082387.Spec : Prop :=
  ∀ n, P10015860649050082387.a n = A333214 (n + 1)

end A333214

/-!
# A333215: Lengths of maximal weakly increasing subsequences in the sequence of prime gaps (A001223).

The programs for A333215, the canonical program `A333215.P5189667732100044682` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333215 has offset 1).

The definition of A333215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333215.P5189667732100044682

`Δ[A258026(abs(1-n)+1)%(12*n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A333215

/-- `Δ[A258026(abs(1-n)+1)%(12*n+1)]` -/
def P5189667732100044682.Spec : Prop :=
  ∀ n, P5189667732100044682.a n = A333215 (n + 1)

theorem P5189667732100044682.correct : P5189667732100044682.Spec := by
  intro n
  simp only [A333215, Nat.add_sub_cancel]

end A333215

/-! ## A333215.P3605444934062775768

`Δ[eq[A051701(n+1), A065091(n+1)]]`
-/

namespace A333215.P3605444934062775768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333215.P3605444934062775768

namespace A333215

/-- `Δ[eq[A051701(n+1), A065091(n+1)]]` -/
def P3605444934062775768.Spec : Prop :=
  ∀ n, P3605444934062775768.a n = A333215 (n + 1)

end A333215

/-! ## A333215.P7009874046843427759

`Δ[lt[A001223(n+1), A054541(n+1)]]`
-/

namespace A333215.P7009874046843427759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333215.P7009874046843427759

namespace A333215

/-- `Δ[lt[A001223(n+1), A054541(n+1)]]` -/
def P7009874046843427759.Spec : Prop :=
  ∀ n, P7009874046843427759.a n = A333215 (n + 1)

end A333215

/-! ## A333215.P9933943619923339716

`Δ[lt[A008578(n+1), A051701(n+1)]]`
-/

namespace A333215.P9933943619923339716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333215.P9933943619923339716

namespace A333215

/-- `Δ[lt[A008578(n+1), A051701(n+1)]]` -/
def P9933943619923339716.Spec : Prop :=
  ∀ n, P9933943619923339716.a n = A333215 (n + 1)

end A333215

/-! ## A333215.P17950399296304362341

`Δ[eq[A008578(n+3), A051701(n+1)]]`
-/

namespace A333215.P17950399296304362341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333215.P17950399296304362341

namespace A333215

/-- `Δ[eq[A008578(n+3), A051701(n+1)]]` -/
def P17950399296304362341.Spec : Prop :=
  ∀ n, P17950399296304362341.a n = A333215 (n + 1)

end A333215

/-! ## A333215.P1378914137927850436

`Δ[lt[A054541(n+2), A054541(n+1)]]`
-/

namespace A333215.P1378914137927850436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333215.P1378914137927850436

namespace A333215

/-- `Δ[lt[A054541(n+2), A054541(n+1)]]` -/
def P1378914137927850436.Spec : Prop :=
  ∀ n, P1378914137927850436.a n = A333215 (n + 1)

end A333215

/-! ## A333215.P3489672627463860405

`Δ[lt[A125266(n+2), A125266(n+1)]]`
-/

namespace A333215.P3489672627463860405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333215.P3489672627463860405

namespace A333215

/-- `Δ[lt[A125266(n+2), A125266(n+1)]]` -/
def P3489672627463860405.Spec : Prop :=
  ∀ n, P3489672627463860405.a n = A333215 (n + 1)

end A333215

/-! ## A333215.P2795595112481873616

`Δ[record[A003963(A225493(n+1))]]`
-/

namespace A333215.P2795595112481873616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A225493 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333215.P2795595112481873616

namespace A333215

/-- `Δ[record[A003963(A225493(n+1))]]` -/
def P2795595112481873616.Spec : Prop :=
  ∀ n, P2795595112481873616.a n = A333215 (n + 1)

end A333215

/-!
# A333216: Lengths of maximal subsequences without adjacent equal terms in the sequence of prime gaps.

The programs for A333216, there is no canonical definition to state claims against.
-/

/-! ## A333216.P9771089224175802835

`A066875(n+1)-A173390(n+1)`
-/

namespace A333216.P9771089224175802835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) - A173390 (n + 1)

end

end A333216.P9771089224175802835

/-! ## A333216.P13750428177816747566

`Δ[A173390(n+1)]`
-/

namespace A333216.P13750428177816747566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333216.P13750428177816747566

/-! ## A333216.P5713809335844253486

`A173390(n+2)-A173390(n+1)`
-/

namespace A333216.P5713809335844253486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 2) - A173390 (n + 1)

end

end A333216.P5713809335844253486

/-! ## A333216.P13640224642061762396

`Δ[record[gcd(n+2, A036263(n+1))]]`
-/

namespace A333216.P13640224642061762396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A036263 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333216.P13640224642061762396

/-! ## A333216.P2921396650566620917

`A145024(n+1)-floor(acot(n))`
-/

namespace A333216.P2921396650566620917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A333216.P2921396650566620917

/-! ## A333216.P9036136019696451539

`Δ[A145024(n)+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A333216.P9036136019696451539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A145024 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333216.P9036136019696451539

/-! ## A333216.P18095481060609160661

`A145024(Δ[n²]-n)-C(2, n+2)`
-/

namespace A333216.P18095481060609160661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A333216.P18095481060609160661

/-! ## A333216.P4298883576958273611

`A145024(n+1)-A000007(n)`
-/

namespace A333216.P4298883576958273611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 (n + 1) - A000007 n

end

end A333216.P4298883576958273611

/-!
# A333217: Numbers k such that the k-th composition in standard order covers an initial interval of positive integers.

The programs for A333217, the canonical program `A333217.P1756782817098438567` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333217 has offset 1).

The definition of A333217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333217.P1756782817098438567

`lt[A079067(A333219(n+1)), 1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A333217

/-- `lt[A079067(A333219(n+1)), 1]` -/
def P1756782817098438567.Spec : Prop :=
  ∀ n, (P1756782817098438567.a n : ℤ) = A333217 (n + 1)

theorem P1756782817098438567.correct : P1756782817098438567.Spec := by
  intro n
  simp only [A333217, Nat.add_sub_cancel]

end A333217

/-! ## A333217.P1994220989606558845

`eq[A071364(A358506(n+1)), A358506(n+1)]`
-/

namespace A333217.P1994220989606558845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A358506 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333217.P1994220989606558845

namespace A333217

/-- `eq[A071364(A358506(n+1)), A358506(n+1)]` -/
def P1994220989606558845.Spec : Prop :=
  ∀ n, (P1994220989606558845.a n : ℤ) = A333217 (n + 1)

end A333217

/-! ## A333217.P12819035200325659717

`eq[A087117(2*n+1), A124760(A233569(n))]`
-/

namespace A333217.P12819035200325659717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A233569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333217.P12819035200325659717

namespace A333217

/-- `eq[A087117(2*n+1), A124760(A233569(n))]` -/
def P12819035200325659717.Spec : Prop :=
  ∀ n, (P12819035200325659717.a n : ℤ) = A333217 (n + 1)

end A333217

/-! ## A333217.P8923371869494637639

`eq[(A087117(n)+1)%(n+1), A001221(A333219(n+1))]`
-/

namespace A333217.P8923371869494637639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 n + 1) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333217.P8923371869494637639

namespace A333217

/-- `eq[(A087117(n)+1)%(n+1), A001221(A333219(n+1))]` -/
def P8923371869494637639.Spec : Prop :=
  ∀ n, (P8923371869494637639.a n : ℤ) = A333217 (n + 1)

end A333217

/-! ## A333217.P2397293952348672197

`eq[A333766(n), A334028(n)]`
-/

namespace A333217.P2397293952348672197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333217.P2397293952348672197

namespace A333217

/-- `eq[A333766(n), A334028(n)]` -/
def P2397293952348672197.Spec : Prop :=
  ∀ n, (P2397293952348672197.a n : ℤ) = A333217 (n + 1)

end A333217

/-!
# A333218: Numbers k such that the k-th composition in standard order is a permutation (of an initial interval).

The programs for A333218, there is no canonical definition to state claims against.
-/

/-! ## A333218.P14090296564227803964

`∪[A349051(n+1), A350250(n+1)]`
-/

namespace A333218.P14090296564227803964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333218.P14090296564227803964

/-! ## A333218.P7708267782918495943

`eq[1, A111701(A333219(n+1))]`
-/

namespace A333218.P7708267782918495943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333218.P7708267782918495943

/-! ## A333218.P14865280828085067762

`eq[A260188(n+1), A333219(n+1)]`
-/

namespace A333218.P14865280828085067762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333218.P14865280828085067762

/-! ## A333218.P9766522988226468749

`eq[A260188(n+1), A358506(n+1)]`
-/

namespace A333218.P9766522988226468749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333218.P9766522988226468749

/-! ## A333218.P5312626712961640967

`∩[A233564(n+1), A333217(n+1)]`
-/

namespace A333218.P5312626712961640967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333218.P5312626712961640967

/-!
# A333219: Heinz number of the n-th composition in standard order.

The programs for A333219, the canonical program `A333219.P12579995974548531049` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333219 has offset 1).

The definition of A333219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333219.P12579995974548531049

`A382255(A006068(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A333219

/-- `A382255(A006068(n))` -/
def P12579995974548531049.Spec : Prop :=
  ∀ n, P12579995974548531049.a n = A333219 (n + 1)

theorem P12579995974548531049.correct : P12579995974548531049.Spec := by
  intro n
  simp only [A333219, Nat.add_sub_cancel]

end A333219

/-! ## A333219.P7624039465956559604

`A382255(A341916(n))`
-/

namespace A333219.P7624039465956559604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (A341916 n).toNat

end

end A333219.P7624039465956559604

namespace A333219

/-- `A382255(A341916(n))` -/
def P7624039465956559604.Spec : Prop :=
  ∀ n, P7624039465956559604.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P9951570761814398575

`A325351(A005940(n+1))`
-/

namespace A333219.P9951570761814398575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A005940 (n + 1)).toNat

end

end A333219.P9951570761814398575

namespace A333219

/-- `A325351(A005940(n+1))` -/
def P9951570761814398575.Spec : Prop :=
  ∀ n, P9951570761814398575.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P10097766503660808706

`∏{e}[A057335(n), A000040(#)]`
-/

namespace A333219.P10097766503660808706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A333219.P10097766503660808706

namespace A333219

/-- `∏{e}[A057335(n), A000040(#)]` -/
def P10097766503660808706.Spec : Prop :=
  ∀ n, P10097766503660808706.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P13632152121386176580

`∏{e}[A057335(n), A028905(#)]`
-/

namespace A333219.P13632152121386176580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028905 (Nat.factorization (f1 n).natAbs p)

end

end A333219.P13632152121386176580

namespace A333219

/-- `∏{e}[A057335(n), A028905(#)]` -/
def P13632152121386176580.Spec : Prop :=
  ∀ n, P13632152121386176580.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P11682458873888171143

`A325351(A253565(n))`
-/

namespace A333219.P11682458873888171143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A253565 n).toNat

end

end A333219.P11682458873888171143

namespace A333219

/-- `A325351(A253565(n))` -/
def P11682458873888171143.Spec : Prop :=
  ∀ n, P11682458873888171143.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P3335513239510265176

`A246029(A071162(A385889(A071162(n))))`
-/

namespace A333219.P3335513239510265176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A071162 (A385889 (A071162 n).toNat).toNat).toNat

end

end A333219.P3335513239510265176

namespace A333219

/-- `A246029(A071162(A385889(A071162(n))))` -/
def P3335513239510265176.Spec : Prop :=
  ∀ n, P3335513239510265176.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P7262878676745895294

`filter[A358506(n+1), A242718(#)]`
-/

namespace A333219.P7262878676745895294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A333219.P7262878676745895294

namespace A333219

/-- `filter[A358506(n+1), A242718(#)]` -/
def P7262878676745895294.Spec : Prop :=
  ∀ n, P7262878676745895294.a n = A333219 (n + 1)

end A333219

/-! ## A333219.P4005576292068526298

`A181819(A057335(n))`
-/

namespace A333219.P4005576292068526298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A057335 n).toNat

end

end A333219.P4005576292068526298

namespace A333219

/-- `A181819(A057335(n))` -/
def P4005576292068526298.Spec : Prop :=
  ∀ n, P4005576292068526298.a n = A333219 (n + 1)

end A333219

/-!
# A333220: The number k such that the k-th composition in standard order consists of the prime indices of n in weakly increasing order.

The programs for A333220, there is no canonical definition to state claims against.
-/

/-! ## A333220.P14845103780639874210

`A030109(A233249(2*(n+1)))`
-/

namespace A333220.P14845103780639874210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A233249 (2 * (n + 1))).toNat

end

end A333220.P14845103780639874210

/-! ## A333220.P18300845218494155561

`A030109(A233249(n+1)+A233249(n+1)+1)`
-/

namespace A333220.P18300845218494155561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A233249 (n + 1) + (A233249 (n + 1) + 1)).toNat

end

end A333220.P18300845218494155561

/-! ## A333220.P3910357546342143716

`A059893(A233249(2*n+2))-A053644(A233249(2*n+2))`
-/

namespace A333220.P3910357546342143716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A233249 (2 * n + 2)).toNat - A053644 (A233249 (2 * n + 2)).toNat

end

end A333220.P3910357546342143716

/-! ## A333220.P6127320134079528556

`A233569(A233249(n+1))`
-/

namespace A333220.P6127320134079528556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A233249 (n + 1)).toNat

end

end A333220.P6127320134079528556

/-! ## A333220.P14589434722475201599

`A333221(∑[∑{e}[n+1, #]!/∏{e}[n+1, #!]])`
-/

namespace A333220.P14589434722475201599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A333220.P14589434722475201599

/-!
# A333222: Numbers k such that every restriction of the k-th composition in standard order to a subinterval has a different sum.

The programs for A333222, there is no canonical definition to state claims against.
-/

/-! ## A333222.P4545610568071013400

`lt[A274036(A145341(n+1)), 3]`
-/

namespace A333222.P4545610568071013400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A145341 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333222.P4545610568071013400

/-! ## A333222.P6839663267360318617

`eq[1, A000010(A274036(2*n+1))]`
-/

namespace A333222.P6839663267360318617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A274036 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333222.P6839663267360318617

/-! ## A333222.P9400441097072986970

`record[A005843(n)/A274036(2*n+1)]`
-/

namespace A333222.P9400441097072986970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A274036 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333222.P9400441097072986970

/-! ## A333222.P4303014918176491966

`eq[A271518(A274036(n)), A274036(2*n+1)]`
-/

namespace A333222.P4303014918176491966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (A274036 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333222.P4303014918176491966

/-! ## A333222.P9468533752385512544

`eq[A000032(A332042(2*n+3)), A274036(2*n+1)]`
-/

namespace A333222.P9468533752385512544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A332042 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333222.P9468533752385512544

/-!
# A333223: Numbers k such that every distinct consecutive subsequence of the k-th composition in standard order has a different sum.

The programs for A333223, there is no canonical definition to state claims against.
-/

/-! ## A333223.P6853271805838329781

`∪[A333222(n+1), A334967(n+4)]`
-/

namespace A333223.P6853271805838329781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334967 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333223.P6853271805838329781

/-! ## A333223.P3571091579745724624

`lt[A124770(n), A000120(A348363(2*n+1))]`
-/

namespace A333223.P3571091579745724624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348363 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333223.P3571091579745724624

/-! ## A333223.P13865537290223673019

`eq[A124770(n), A333224(n)]`
-/

namespace A333223.P13865537290223673019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333223.P13865537290223673019

/-! ## A333223.P16551482550869773434

`eq[A124771(n), A333257(n)]`
-/

namespace A333223.P16551482550869773434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333223.P16551482550869773434

/-! ## A333223.P4364274754768639708

`lt[A124770(n), A333257(n)]`
-/

namespace A333223.P4364274754768639708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333223.P4364274754768639708

/-! ## A333223.P985744728816925826

`eq[A124771(n)-1, A333224(n)]`
-/

namespace A333223.P985744728816925826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333223.P985744728816925826

/-! ## A333223.P10244645489162153697

`eq[A023443(A124771(n)), A333224(n)]`
-/

namespace A333223.P10244645489162153697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A124771 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333223.P10244645489162153697

/-! ## A333223.P10648477981345991495

`eq[A106466(2*A124770(n)), A333257(n)]`
-/

namespace A333223.P10648477981345991495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (2 * A124770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333223.P10648477981345991495

/-!
# A333224: Number of distinct positive consecutive subsequence-sums of the k-th composition in standard order.

The programs for A333224, there is no canonical definition to state claims against.
-/

/-! ## A333224.P4682227900801167291

`A333257(n)-1`
-/

namespace A333224.P4682227900801167291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 n - 1

end

end A333224.P4682227900801167291

/-! ## A333224.P10259939223051960764

`A070198(n)%A333257(n)`
-/

namespace A333224.P10259939223051960764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A333257 n)

end

end A333224.P10259939223051960764

/-! ## A333224.P7928834898867503935

`A198277(n)%A333257(n)`
-/

namespace A333224.P7928834898867503935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A333257 n)

end

end A333224.P7928834898867503935

/-! ## A333224.P11622608497940394392

`A030494(n+1)%A333257(n)`
-/

namespace A333224.P11622608497940394392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A333257 n)

end

end A333224.P11622608497940394392

/-! ## A333224.P10186210091872325341

`A058000(n+1)%A333257(n)`
-/

namespace A333224.P10186210091872325341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058000 (n + 1)) (A333257 n)

end

end A333224.P10186210091872325341

/-! ## A333224.P6934142387353458807

`A072828(n+1)%A333257(n)`
-/

namespace A333224.P6934142387353458807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A333257 n)

end

end A333224.P6934142387353458807

/-! ## A333224.P15583059638534634549

`A079782(n+1)%A333257(n)`
-/

namespace A333224.P15583059638534634549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A333257 n)

end

end A333224.P15583059638534634549

/-! ## A333224.P11366681679332089065

`A083685(n+1)%A333257(n)`
-/

namespace A333224.P11366681679332089065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A333257 n)

end

end A333224.P11366681679332089065

/-! ## A333224.P14361931752598003303

`A084403(n+1)%A333257(n)`
-/

namespace A333224.P14361931752598003303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084403 (n + 1)) (A333257 n)

end

end A333224.P14361931752598003303

/-! ## A333224.P11941610589520193855

`A121934(n+1)%A333257(n)`
-/

namespace A333224.P11941610589520193855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A333257 n)

end

end A333224.P11941610589520193855

/-!
# A333225: Position of first appearance of n in A333226 (LCMs of compositions in standard order).

The programs for A333225, there is no canonical definition to state claims against.
-/

/-! ## A333225.P16455234700190753749

`A395303(A333492(n+1))`
-/

namespace A333225.P16455234700190753749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395303 (A333492 (n + 1)).toNat

end

end A333225.P16455234700190753749

/-! ## A333225.P1277743187219203228

`A335430(∑[n]*∑{p}[n+1, gcd(n, #)])`
-/

namespace A333225.P1277743187219203228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335430 ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p))

end

end A333225.P1277743187219203228

/-! ## A333225.P9507158402808751626

`A003963(∑{digits}[n, val(#+1, 6)]+3^n)`
-/

namespace A333225.P9507158402808751626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 6).sum + 3 ^ n)

end

end A333225.P9507158402808751626

/-! ## A333225.P8804494784033898024

`A003963(floor(∑{p}[n+1, root(γ, #)])+3^n)`
-/

namespace A333225.P8804494784033898024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ + (3 ^ n : ℤ)).toNat

end

end A333225.P8804494784033898024

/-!
# A333226: Least common multiple of the n-th composition in standard order.

The programs for A333226, there is no canonical definition to state claims against.
-/

/-! ## A333226.P7631354562039497715

`A284559(A370762(n))`
-/

namespace A333226.P7631354562039497715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A370762 n).toNat

end

end A333226.P7631354562039497715

/-! ## A333226.P2576091956960629504

`A284559(A006068(n+1))`
-/

namespace A333226.P2576091956960629504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A006068 (n + 1)).toNat

end

end A333226.P2576091956960629504

/-! ## A333226.P8933940858228786645

`A284559(A038558(n+1))`
-/

namespace A333226.P8933940858228786645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A038558 (n + 1)).toNat

end

end A333226.P8933940858228786645

/-! ## A333226.P8141788566665340892

`A284559(A124108(n+1))`
-/

namespace A333226.P8141788566665340892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A124108 (n + 1)).toNat

end

end A333226.P8141788566665340892

/-! ## A333226.P10193693187616166246

`A284559(A341916(n+1))`
-/

namespace A333226.P10193693187616166246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A341916 (n + 1)).toNat

end

end A333226.P10193693187616166246

/-! ## A333226.P8964881514253165866

`A290103(A333219(n+2))`
-/

namespace A333226.P8964881514253165866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A333219 (n + 2)).toNat

end

end A333226.P8964881514253165866

/-! ## A333226.P909093167570935268

`A284559(A048678(2*(n+1)))`
-/

namespace A333226.P909093167570935268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A048678 (2 * (n + 1))).toNat

end

end A333226.P909093167570935268

/-! ## A333226.P12612584717283898355

`A072411(A057335(n+1))`
-/

namespace A333226.P12612584717283898355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A057335 (n + 1)).toNat

end

end A333226.P12612584717283898355

/-!
# A333227: Numbers k such that the k-th composition in standard order is pairwise coprime, where a singleton is not coprime unless it is (1).

The programs for A333227, there is no canonical definition to state claims against.
-/

/-! ## A333227.P3758792166064675229

`comp[A335239(n+1)]`
-/

namespace A333227.P3758792166064675229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333227.P3758792166064675229

/-! ## A333227.P12159025208368235829

`comp[∪[2*a(n-1), A335236(n+1)]]` with `a(0)=2`
-/

namespace A333227.P12159025208368235829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A333227.P12159025208368235829

/-! ## A333227.P16981014487673488619

`comp[record[A335239(A133310(n))]]`
-/

namespace A333227.P16981014487673488619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333227.P16981014487673488619

/-! ## A333227.P1004233472585056236

`comp[record[A335239(A286622(n))]]`
-/

namespace A333227.P1004233472585056236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (A286622 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333227.P1004233472585056236

/-! ## A333227.P195996568115205966

`comp[record[A335239(A328399(n))]]`
-/

namespace A333227.P195996568115205966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333227.P195996568115205966

/-! ## A333227.P15220122008045924645

`comp[record[A335239(A349315(n))]]`
-/

namespace A333227.P15220122008045924645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333227.P15220122008045924645

/-! ## A333227.P6457595495217189329

`comp[∪[A335236(n+1), A155559(n)]]`
-/

namespace A333227.P6457595495217189329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A333227.P6457595495217189329

/-! ## A333227.P13066492477334339462

`comp[∪[A115213(n+1), A335236(n+1)]]`
-/

namespace A333227.P13066492477334339462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115213 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A333227.P13066492477334339462

/-! ## A333227.P6490111303508347570

`comp[∪[A335236(n+1), A335238(n+1)]]`
-/

namespace A333227.P6490111303508347570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A333227.P6490111303508347570

/-! ## A333227.P1379104248285708372

`comp[∪[A335236(n+1), A337666(n+1)]]`
-/

namespace A333227.P1379104248285708372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A333227.P1379104248285708372

/-!
# A333228: Numbers k such that the distinct parts of the k-th composition in standard order (A066099) are pairwise coprime, where a singleton is not considered coprime unless it is (1).

The programs for A333228, there is no canonical definition to state claims against.
-/

/-! ## A333228.P8902132309345724883

`comp[A335238(n+1)]`
-/

namespace A333228.P8902132309345724883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333228.P8902132309345724883

/-! ## A333228.P14322196653867724955

`comp[record[A335238(A116549(n))]]`
-/

namespace A333228.P14322196653867724955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333228.P14322196653867724955

/-! ## A333228.P14440654487154473825

`comp[∪[A337666(n+1), A337695(n+1)]]`
-/

namespace A333228.P14440654487154473825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337695 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A333228.P14440654487154473825

/-! ## A333228.P9415492876295354926

`comp[A335238(A083412(n))%A299254(2*n)]`
-/

namespace A333228.P9415492876295354926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335238 (A083412 n).toNat) (A299254 (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333228.P9415492876295354926

/-! ## A333228.P8881274572219244553

`A291166(3^C(a(n-1), 68)+n)` with `a(0)=1`
-/

namespace A333228.P8881274572219244553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291166 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A333228.P8881274572219244553

/-!
# A333229: First sums of the Kolakoski sequence A000002.

The programs for A333229, the canonical program `A333229.P6279008054827789908` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333229 has offset 1).

The definition of A333229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333229.P6279008054827789908

`A000002(n+1)+A000002(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A333229

/-- `A000002(n+1)+A000002(n+2)` -/
def P6279008054827789908.Spec : Prop :=
  ∀ n, P6279008054827789908.a n = A333229 (n + 1)

theorem P6279008054827789908.correct : P6279008054827789908.Spec := by
  intro n
  simp only [A333229, Nat.add_sub_cancel]

end A333229

/-! ## A333229.P17638393404427368403

`abs(Δ[(3-A049705(n+1))*(-1)^n])`
-/

namespace A333229.P17638393404427368403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A333229.P17638393404427368403

namespace A333229

/-- `abs(Δ[(3-A049705(n+1))*(-1)^n])` -/
def P17638393404427368403.Spec : Prop :=
  ∀ n, P17638393404427368403.a n = A333229 (n + 1)

end A333229

/-! ## A333229.P94278347167781316

`abs(Δ[gcd(2, A156253(n+1))/(-1)^n])`
-/

namespace A333229.P94278347167781316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A156253 (n + 1)) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A333229.P94278347167781316

namespace A333229

/-- `abs(Δ[gcd(2, A156253(n+1))/(-1)^n])` -/
def P94278347167781316.Spec : Prop :=
  ∀ n, P94278347167781316.a n = (A333229 (n + 1) : ℚ)

end A333229

/-! ## A333229.P15725001843375958532

`Δ[A216345(n+1)+A054353(n+1)]`
-/

namespace A333229.P15725001843375958532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) + A054353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333229.P15725001843375958532

namespace A333229

/-- `Δ[A216345(n+1)+A054353(n+1)]` -/
def P15725001843375958532.Spec : Prop :=
  ∀ n, P15725001843375958532.a n = A333229 (n + 1)

end A333229

/-! ## A333229.P14387409757308429864

`A078880(n+1)+Δ[A216345(n+1)]`
-/

namespace A333229.P14387409757308429864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1) + (f1 (n + 1) - f1 n)

end

end A333229.P14387409757308429864

namespace A333229

/-- `A078880(n+1)+Δ[A216345(n+1)]` -/
def P14387409757308429864.Spec : Prop :=
  ∀ n, P14387409757308429864.a n = A333229 (n + 1)

end A333229

/-! ## A333229.P1756635556210871896

`A216345(n+3)-A216345(n+1)`
-/

namespace A333229.P1756635556210871896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 3) - A216345 (n + 1)

end

end A333229.P1756635556210871896

namespace A333229

/-- `A216345(n+3)-A216345(n+1)` -/
def P1756635556210871896.Spec : Prop :=
  ∀ n, P1756635556210871896.a n = A333229 (n + 1)

end A333229

/-! ## A333229.P10222070137689235350

`Δ[A216345(n+2)+A216345(n+1)]`
-/

namespace A333229.P10222070137689235350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) + A216345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333229.P10222070137689235350

namespace A333229

/-- `Δ[A216345(n+2)+A216345(n+1)]` -/
def P10222070137689235350.Spec : Prop :=
  ∀ n, P10222070137689235350.a n = A333229 (n + 1)

end A333229

/-! ## A333229.P12394905963739608109

`abs(Δ[(A123594(n+3)+1)/(-1)^n])`
-/

namespace A333229.P12394905963739608109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123594 (n + 3) + 1 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A333229.P12394905963739608109

namespace A333229

/-- `abs(Δ[(A123594(n+3)+1)/(-1)^n])` -/
def P12394905963739608109.Spec : Prop :=
  ∀ n, P12394905963739608109.a n = (A333229 (n + 1) : ℚ)

end A333229

/-!
# A333230: Positions of weak ascents in the sequence of differences between primes.

The programs for A333230, the canonical program `A333230.P5884877363582196228` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333230 has offset 1).

The definition of A333230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333230.P5884877363582196228

`lt[A079054(n+2), 1]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A333230

/-- `lt[A079054(n+2), 1]+1` -/
def P5884877363582196228.Spec : Prop :=
  ∀ n, (P5884877363582196228.a n : ℤ) = A333230 (n + 1)

theorem P5884877363582196228.correct : P5884877363582196228.Spec := by
  intro n
  simp only [A333230, Nat.add_sub_cancel]

end A333230

/-! ## A333230.P15437814309143341461

`lt[A073272(n+1), 2]+1`
-/

namespace A333230.P15437814309143341461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333230.P15437814309143341461

namespace A333230

/-- `lt[A073272(n+1), 2]+1` -/
def P15437814309143341461.Spec : Prop :=
  ∀ n, (P15437814309143341461.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P8652789889362004633

`lt[A073274(n+1), 2]+1`
-/

namespace A333230.P8652789889362004633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333230.P8652789889362004633

namespace A333230

/-- `lt[A073274(n+1), 2]+1` -/
def P8652789889362004633.Spec : Prop :=
  ∀ n, (P8652789889362004633.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P4807139316074927996

`lt[3, Δ[A048852(n)]]`
-/

namespace A333230.P4807139316074927996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333230.P4807139316074927996

namespace A333230

/-- `lt[3, Δ[A048852(n)]]` -/
def P4807139316074927996.Spec : Prop :=
  ∀ n, (P4807139316074927996.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P6507836270283694466

`lt[0, A137174(n+1)]`
-/

namespace A333230.P6507836270283694466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333230.P6507836270283694466

namespace A333230

/-- `lt[0, A137174(n+1)]` -/
def P6507836270283694466.Spec : Prop :=
  ∀ n, (P6507836270283694466.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P6614358289195164064

`lt[1, Δ[A050216(n)]+n]`
-/

namespace A333230.P6614358289195164064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333230.P6614358289195164064

namespace A333230

/-- `lt[1, Δ[A050216(n)]+n]` -/
def P6614358289195164064.Spec : Prop :=
  ∀ n, (P6614358289195164064.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P13835338632132053736

`lt[A108415(n+2), 3]+1`
-/

namespace A333230.P13835338632132053736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333230.P13835338632132053736

namespace A333230

/-- `lt[A108415(n+2), 3]+1` -/
def P13835338632132053736.Spec : Prop :=
  ∀ n, (P13835338632132053736.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P10331986018897063750

`eq[A008578(n+1), A051701(n+1)]`
-/

namespace A333230.P10331986018897063750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333230.P10331986018897063750

namespace A333230

/-- `eq[A008578(n+1), A051701(n+1)]` -/
def P10331986018897063750.Spec : Prop :=
  ∀ n, (P10331986018897063750.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P1368271856453116270

`eq[A051702(n+1), A054541(n+1)]`
-/

namespace A333230.P1368271856453116270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333230.P1368271856453116270

namespace A333230

/-- `eq[A051702(n+1), A054541(n+1)]` -/
def P1368271856453116270.Spec : Prop :=
  ∀ n, (P1368271856453116270.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P12063986847029825294

`eq[A051702(n+1), A125266(n+1)]`
-/

namespace A333230.P12063986847029825294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333230.P12063986847029825294

namespace A333230

/-- `eq[A051702(n+1), A125266(n+1)]` -/
def P12063986847029825294.Spec : Prop :=
  ∀ n, (P12063986847029825294.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P17695548835117731429

`eq[A051701(n+1), A182986(n+1)]`
-/

namespace A333230.P17695548835117731429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333230.P17695548835117731429

namespace A333230

/-- `eq[A051701(n+1), A182986(n+1)]` -/
def P17695548835117731429.Spec : Prop :=
  ∀ n, (P17695548835117731429.a n : ℤ) = A333230 (n + 1)

end A333230

/-! ## A333230.P5995528891323769816

`A000720(A147813(n+1))`
-/

namespace A333230.P5995528891323769816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A147813 (n + 1)).toNat

end

end A333230.P5995528891323769816

namespace A333230

/-- `A000720(A147813(n+1))` -/
def P5995528891323769816.Spec : Prop :=
  ∀ n, P5995528891323769816.a n = A333230 (n + 1)

end A333230

/-! ## A333230.P15661073083308862038

`lt[0, A107599(n+2)]+1`
-/

namespace A333230.P15661073083308862038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107599 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333230.P15661073083308862038

namespace A333230

/-- `lt[0, A107599(n+2)]+1` -/
def P15661073083308862038.Spec : Prop :=
  ∀ n, (P15661073083308862038.a n : ℤ) = A333230 (n + 1)

end A333230

/-!
# A333231: Positions of weak descents in the sequence of differences between primes.

The programs for A333231, the canonical program `A333231.P6834028189182866023` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333231 has offset 1).

The definition of A333231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333231.P6834028189182866023

`A046868(n+1)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333231

/-- `A046868(n+1)-1` -/
def P6834028189182866023.Spec : Prop :=
  ∀ n, P6834028189182866023.a n = A333231 (n + 1)

theorem P6834028189182866023.correct : P6834028189182866023.Spec := by
  intro n
  simp only [A333231, Nat.add_sub_cancel]

end A333231

/-! ## A333231.P17038033669102973499

`lt[A036263(n+1), 1]+1`
-/

namespace A333231.P17038033669102973499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333231.P17038033669102973499

namespace A333231

/-- `lt[A036263(n+1), 1]+1` -/
def P17038033669102973499.Spec : Prop :=
  ∀ n, (P17038033669102973499.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P7530542190900758960

`∪[A064113(n+1), A258026(n+1)]`
-/

namespace A333231.P7530542190900758960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333231.P7530542190900758960

namespace A333231

/-- `∪[A064113(n+1), A258026(n+1)]` -/
def P7530542190900758960.Spec : Prop :=
  ∀ n, (P7530542190900758960.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P248120313582896194

`lt[Δ[A050216(n)], n]`
-/

namespace A333231.P248120313582896194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A333231.P248120313582896194

namespace A333231

/-- `lt[Δ[A050216(n)], n]` -/
def P248120313582896194.Spec : Prop :=
  ∀ n, (P248120313582896194.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P237668937578111259

`lt[Δ[A076368(n+1)], 1]`
-/

namespace A333231.P237668937578111259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A333231.P237668937578111259

namespace A333231

/-- `lt[Δ[A076368(n+1)], 1]` -/
def P237668937578111259.Spec : Prop :=
  ∀ n, (P237668937578111259.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P566313911700117717

`lt[0, A073272(n+1)]+1`
-/

namespace A333231.P566313911700117717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333231.P566313911700117717

namespace A333231

/-- `lt[0, A073272(n+1)]+1` -/
def P566313911700117717.Spec : Prop :=
  ∀ n, (P566313911700117717.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P396638853083549634

`lt[1, A056221(n+1)]+1`
-/

namespace A333231.P396638853083549634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333231.P396638853083549634

namespace A333231

/-- `lt[1, A056221(n+1)]+1` -/
def P396638853083549634.Spec : Prop :=
  ∀ n, (P396638853083549634.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P4801730566164645072

`lt[1, A228098(n+1)]+1`
-/

namespace A333231.P4801730566164645072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333231.P4801730566164645072

namespace A333231

/-- `lt[1, A228098(n+1)]+1` -/
def P4801730566164645072.Spec : Prop :=
  ∀ n, (P4801730566164645072.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P14818210607060854943

`lt[1, A108415(n+2)]+1`
-/

namespace A333231.P14818210607060854943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333231.P14818210607060854943

namespace A333231

/-- `lt[1, A108415(n+2)]+1` -/
def P14818210607060854943.Spec : Prop :=
  ∀ n, (P14818210607060854943.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P18394715866378253555

`lt[A320146(n+2), n]+1`
-/

namespace A333231.P18394715866378253555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333231.P18394715866378253555

namespace A333231

/-- `lt[A320146(n+2), n]+1` -/
def P18394715866378253555.Spec : Prop :=
  ∀ n, (P18394715866378253555.a n : ℤ) = A333231 (n + 1)

end A333231

/-! ## A333231.P2446099363221067417

`A023443(A046868(n+1))`
-/

namespace A333231.P2446099363221067417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A046868 (n + 1)).toNat

end

end A333231.P2446099363221067417

namespace A333231

/-- `A023443(A046868(n+1))` -/
def P2446099363221067417.Spec : Prop :=
  ∀ n, P2446099363221067417.a n = A333231 (n + 1)

end A333231

/-! ## A333231.P12079788354753528470

`A000720(A372209(n+1))`
-/

namespace A333231.P12079788354753528470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A372209 (n + 1)).toNat

end

end A333231.P12079788354753528470

namespace A333231

/-- `A000720(A372209(n+1))` -/
def P12079788354753528470.Spec : Prop :=
  ∀ n, P12079788354753528470.a n = A333231 (n + 1)

end A333231

/-! ## A333231.P13856587480641816889

`A258025(n+1)-A391658(n+1)`
-/

namespace A333231.P13856587480641816889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - A391658 (n + 1)

end

end A333231.P13856587480641816889

namespace A333231

/-- `A258025(n+1)-A391658(n+1)` -/
def P13856587480641816889.Spec : Prop :=
  ∀ n, P13856587480641816889.a n = A333231 (n + 1)

end A333231

/-! ## A333231.P8988604052385222271

`A033270(A046869(n+1))`
-/

namespace A333231.P8988604052385222271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A046869 (n + 1)).toNat

end

end A333231.P8988604052385222271

namespace A333231

/-- `A033270(A046869(n+1))` -/
def P8988604052385222271.Spec : Prop :=
  ∀ n, P8988604052385222271.a n = A333231 (n + 1)

end A333231

/-!
# A333233: Number of free Tangles of size n.

The programs for A333233, there is no canonical definition to state claims against.
-/

/-! ## A333233.P5967325709046434129

`A026834(A150238(n))`
-/

namespace A333233.P5967325709046434129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150238 n).toNat

end

end A333233.P5967325709046434129

/-! ## A333233.P2403767886506802374

`A108141(A148424(n))`
-/

namespace A333233.P2403767886506802374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148424 n).toNat

end

end A333233.P2403767886506802374

/-! ## A333233.P16764378195220657933

`A316997(A148915(n))`
-/

namespace A333233.P16764378195220657933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316997 (A148915 n).toNat

end

end A333233.P16764378195220657933

/-!
# A333235: a(n) is the product of indices of unitary prime power divisors of n.

The programs for A333235, there is no canonical definition to state claims against.
-/

/-! ## A333235.P14192999638783397722

`∏{p}[A338224(n+1), A000720(#)]`
-/

namespace A333235.P14192999638783397722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A333235.P14192999638783397722

/-! ## A333235.P589164823626855568

`∏{p}[A338224(n+1), A058933(#)]`
-/

namespace A333235.P589164823626855568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A058933 p

end

end A333235.P589164823626855568

/-! ## A333235.P8200649643861345078

`∏{p}[A338224(n+1), A065770(#)]`
-/

namespace A333235.P8200649643861345078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A065770 p

end

end A333235.P8200649643861345078

/-! ## A333235.P752440042233676514

`∏{p}[A338224(n+1), A055396(#)]`
-/

namespace A333235.P752440042233676514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055396 p

end

end A333235.P752440042233676514

/-! ## A333235.P13768595924599573438

`∏{p}[A338224(n+1), A056239(#)]`
-/

namespace A333235.P13768595924599573438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A333235.P13768595924599573438

/-! ## A333235.P2181199043454484535

`∏{p}[A338224(n+1), A003977(#)-1]`
-/

namespace A333235.P2181199043454484535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A003977 p - 1)

end

end A333235.P2181199043454484535

/-! ## A333235.P14360983273136594242

`∏{p}[A338224(n+1), A036234(#-1)]`
-/

namespace A333235.P14360983273136594242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036234 (p - 1)

end

end A333235.P14360983273136594242

/-! ## A333235.P5936829383313096345

`∏{p}[A338224(n+1), A064553(#)-1]`
-/

namespace A333235.P5936829383313096345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A064553 p - 1)

end

end A333235.P5936829383313096345

/-! ## A333235.P10648229961475235791

`∏{p}[A338224(n+1), A318994(#)-1]`
-/

namespace A333235.P10648229961475235791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A318994 p - 1)

end

end A333235.P10648229961475235791

/-! ## A333235.P2899071910536101808

`A003963(A338224(n+1))`
-/

namespace A333235.P2899071910536101808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A338224 (n + 1)).toNat

end

end A333235.P2899071910536101808

/-! ## A333235.P12859856041941561971

`A156061(2*A338224(n+1))`
-/

namespace A333235.P12859856041941561971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A338224 (n + 1)).toNat

end

end A333235.P12859856041941561971

/-!
# A333237: Numbers k such that 1/k contains at least one '9' in its decimal expansion.

The programs for A333237, there is no canonical definition to state claims against.
-/

/-! ## A333237.P5137235471755507527

`lt[8, A333236(n+1)]+1`
-/

namespace A333237.P5137235471755507527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333237.P5137235471755507527

/-! ## A333237.P7535272191354067298

`eq[9, A333236(n+2)]+2`
-/

namespace A333237.P7535272191354067298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A333237.P7535272191354067298

/-! ## A333237.P15852890694862566945

`lt[8, A333236(A028310(n))]`
-/

namespace A333237.P15852890694862566945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333237.P15852890694862566945

/-! ## A333237.P18108321537653407870

`A020725(lt[8, A333236(n+1)])`
-/

namespace A333237.P18108321537653407870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333237.P18108321537653407870

/-! ## A333237.P1864038858538443080

`A020725(eq[9, A333236(n+1)])`
-/

namespace A333237.P1864038858538443080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333237.P1864038858538443080

/-! ## A333237.P7323841007851765540

`A063660(lt[8, A333236(n+1)])`
-/

namespace A333237.P7323841007851765540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333237.P7323841007851765540

/-! ## A333237.P10391917650798360446

`A063660(eq[9, A333236(n+1)])`
-/

namespace A333237.P10391917650798360446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333237.P10391917650798360446

/-! ## A333237.P16180071691135461121

`A065475(eq[9, A333236(n+1)])`
-/

namespace A333237.P16180071691135461121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333237.P16180071691135461121

/-! ## A333237.P5445940616793899540

`A114637(eq[9, A333236(n+1)])`
-/

namespace A333237.P5445940616793899540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333237.P5445940616793899540

/-! ## A333237.P7402123435137913516

`A153152(eq[9, A333236(n+1)])`
-/

namespace A333237.P7402123435137913516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333237.P7402123435137913516

/-!
# A333238: Irregular table where row n lists the distinct smallest primes p of prime partitions of n.

The programs for A333238, there is no canonical definition to state claims against.
-/

/-! ## A333238.P237118643270902933

`p?[A123731(A185736(A287214(n)))]`
-/

namespace A333238.P237118643270902933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A185736 (A287214 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333238.P237118643270902933

/-! ## A333238.P2786849277065563611

`A020639(A221880(n+1)+A027423(n))`
-/

namespace A333238.P2786849277065563611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A221880 (n + 1) + A027423 n).toNat

end

end A333238.P2786849277065563611

/-! ## A333238.P4304368947453433206

`A326810(A326178(n)^A298642(n))`
-/

namespace A333238.P4304368947453433206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326810 (SequenceMachineLib.roundAway ((A326178 n : ℚ) ^ (A298642 n : ℤ))).toNat

end

end A333238.P4304368947453433206

/-! ## A333238.P15778616731356364741

`A089993(A227571(n))`
-/

namespace A333238.P15778616731356364741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089993 (A227571 n).toNat

end

end A333238.P15778616731356364741

/-! ## A333238.P3731727543696489989

`A387087(A136298(n+1))`
-/

namespace A333238.P3731727543696489989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387087 (A136298 (n + 1)).toNat

end

end A333238.P3731727543696489989

/-!
# A333242: Prime numbers with an odd number of steps in their prime index chain.

The programs for A333242, the canonical program `A333242.P7039414772818827549` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333242 has offset 1).

The definition of A333242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333242.P7039414772818827549

`A000720(A262275(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A333242

/-- `A000720(A262275(n+1))` -/
def P7039414772818827549.Spec : Prop :=
  ∀ n, P7039414772818827549.a n = A333242 (n + 1)

theorem P7039414772818827549.correct : P7039414772818827549.Spec := by
  intro n
  simp only [A333242, Nat.add_sub_cancel]

end A333242

/-! ## A333242.P4075940603119040531

`∪[A007821(n+1), A333243(n+1)]`
-/

namespace A333242.P4075940603119040531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333242.P4075940603119040531

namespace A333242

/-- `∪[A007821(n+1), A333243(n+1)]` -/
def P4075940603119040531.Spec : Prop :=
  ∀ n, (P4075940603119040531.a n : ℤ) = A333242 (n + 1)

end A333242

/-! ## A333242.P6667207524188529292

`A000040(A121543(n+1))`
-/

namespace A333242.P6667207524188529292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A121543 (n + 1)).toNat

end

end A333242.P6667207524188529292

namespace A333242

/-- `A000040(A121543(n+1))` -/
def P6667207524188529292.Spec : Prop :=
  ∀ n, P6667207524188529292.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P4403117126652304125

`A000040(eq[0, A078442(n+1)%2]+1)`
-/

namespace A333242.P4403117126652304125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078442 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333242.P4403117126652304125

namespace A333242

/-- `A000040(eq[0, A078442(n+1)%2]+1)` -/
def P4403117126652304125.Spec : Prop :=
  ∀ n, P4403117126652304125.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P4993727691030154616

`A182986(A121543(n+1)+1)`
-/

namespace A333242.P4993727691030154616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A121543 (n + 1) + 1).toNat

end

end A333242.P4993727691030154616

namespace A333242

/-- `A182986(A121543(n+1)+1)` -/
def P4993727691030154616.Spec : Prop :=
  ∀ n, P4993727691030154616.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P16203585937537678293

`filter[A260442(n), A373338(#)]`
-/

namespace A333242.P16203585937537678293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P16203585937537678293

namespace A333242

/-- `filter[A260442(n), A373338(#)]` -/
def P16203585937537678293.Spec : Prop :=
  ∀ n, P16203585937537678293.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P9966346674164575706

`filter[A000040(n+1), A373338(#)]`
-/

namespace A333242.P9966346674164575706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P9966346674164575706

namespace A333242

/-- `filter[A000040(n+1), A373338(#)]` -/
def P9966346674164575706.Spec : Prop :=
  ∀ n, P9966346674164575706.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P13014957443390170959

`filter[A000430(n+1), A373338(#)]`
-/

namespace A333242.P13014957443390170959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P13014957443390170959

namespace A333242

/-- `filter[A000430(n+1), A373338(#)]` -/
def P13014957443390170959.Spec : Prop :=
  ∀ n, P13014957443390170959.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P13458612932183185689

`filter[A000961(n+1), A373338(#)]`
-/

namespace A333242.P13458612932183185689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P13458612932183185689

namespace A333242

/-- `filter[A000961(n+1), A373338(#)]` -/
def P13458612932183185689.Spec : Prop :=
  ∀ n, P13458612932183185689.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P9248462034203011602

`filter[A008578(n+1), A373338(#)]`
-/

namespace A333242.P9248462034203011602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P9248462034203011602

namespace A333242

/-- `filter[A008578(n+1), A373338(#)]` -/
def P9248462034203011602.Spec : Prop :=
  ∀ n, P9248462034203011602.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P1958611355891261267

`filter[A009087(n+1), A373338(#)]`
-/

namespace A333242.P1958611355891261267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P1958611355891261267

namespace A333242

/-- `filter[A009087(n+1), A373338(#)]` -/
def P1958611355891261267.Spec : Prop :=
  ∀ n, P1958611355891261267.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P8764043885203392698

`filter[A015919(n+1), A373338(#)]`
-/

namespace A333242.P8764043885203392698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P8764043885203392698

namespace A333242

/-- `filter[A015919(n+1), A373338(#)]` -/
def P8764043885203392698.Spec : Prop :=
  ∀ n, P8764043885203392698.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P14150378742571985981

`filter[A033946(n+1), A373338(#)]`
-/

namespace A333242.P14150378742571985981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P14150378742571985981

namespace A333242

/-- `filter[A033946(n+1), A373338(#)]` -/
def P14150378742571985981.Spec : Prop :=
  ∀ n, P14150378742571985981.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P15672258517052965880

`filter[A045344(n+1), A373338(#)]`
-/

namespace A333242.P15672258517052965880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P15672258517052965880

namespace A333242

/-- `filter[A045344(n+1), A373338(#)]` -/
def P15672258517052965880.Spec : Prop :=
  ∀ n, P15672258517052965880.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P6235585566587460184

`filter[A046022(n+1), A373338(#)]`
-/

namespace A333242.P6235585566587460184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P6235585566587460184

namespace A333242

/-- `filter[A046022(n+1), A373338(#)]` -/
def P6235585566587460184.Spec : Prop :=
  ∀ n, P6235585566587460184.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P15223217537412631431

`filter[A050376(n+1), A373338(#)]`
-/

namespace A333242.P15223217537412631431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P15223217537412631431

namespace A333242

/-- `filter[A050376(n+1), A373338(#)]` -/
def P15223217537412631431.Spec : Prop :=
  ∀ n, P15223217537412631431.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P15058492334086134399

`filter[A051948(n+1), A373338(#)]`
-/

namespace A333242.P15058492334086134399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P15058492334086134399

namespace A333242

/-- `filter[A051948(n+1), A373338(#)]` -/
def P15058492334086134399.Spec : Prop :=
  ∀ n, P15058492334086134399.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P8419516033617715206

`filter[A053577(n+1), A373338(#)]`
-/

namespace A333242.P8419516033617715206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P8419516033617715206

namespace A333242

/-- `filter[A053577(n+1), A373338(#)]` -/
def P8419516033617715206.Spec : Prop :=
  ∀ n, P8419516033617715206.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P15143457879881056433

`filter[A053813(n+1), A373338(#)]`
-/

namespace A333242.P15143457879881056433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P15143457879881056433

namespace A333242

/-- `filter[A053813(n+1), A373338(#)]` -/
def P15143457879881056433.Spec : Prop :=
  ∀ n, P15143457879881056433.a n = A333242 (n + 1)

end A333242

/-! ## A333242.P1910488527679490084

`filter[A055977(n+1), A373338(#)]`
-/

namespace A333242.P1910488527679490084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333242.P1910488527679490084

namespace A333242

/-- `filter[A055977(n+1), A373338(#)]` -/
def P1910488527679490084.Spec : Prop :=
  ∀ n, P1910488527679490084.a n = A333242 (n + 1)

end A333242

/-!
# A333243: Prime numbers with prime indices in A262275.

The programs for A333243, the canonical program `A333243.P7101162203109780154` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333243 has offset 1).

The definition of A333243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333243.P7101162203109780154

`A038580(A121543(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A333243

/-- `A038580(A121543(n+1))` -/
def P7101162203109780154.Spec : Prop :=
  ∀ n, P7101162203109780154.a n = A333243 (n + 1)

theorem P7101162203109780154.correct : P7101162203109780154.Spec := by
  intro n
  simp only [A333243, Nat.add_sub_cancel]

end A333243

/-! ## A333243.P16358513464849791048

`A038580(eq[1, A049076(n+1)%2]+1)`
-/

namespace A333243.P16358513464849791048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049076 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333243.P16358513464849791048

namespace A333243

/-- `A038580(eq[1, A049076(n+1)%2]+1)` -/
def P16358513464849791048.Spec : Prop :=
  ∀ n, P16358513464849791048.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P7693159868503684355

`A006450(A333242(n+1))`
-/

namespace A333243.P7693159868503684355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A333242 (n + 1)).toNat

end

end A333243.P7693159868503684355

namespace A333243

/-- `A006450(A333242(n+1))` -/
def P7693159868503684355.Spec : Prop :=
  ∀ n, P7693159868503684355.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P6545087477738187136

`A006450(∑{d}[A262275(n+1), A000720(#)])`
-/

namespace A333243.P6545087477738187136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A333243.P6545087477738187136

namespace A333243

/-- `A006450(∑{d}[A262275(n+1), A000720(#)])` -/
def P6545087477738187136.Spec : Prop :=
  ∀ n, P6545087477738187136.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P15565568409962541550

`A120426(A262275(n+1))`
-/

namespace A333243.P15565568409962541550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A262275 (n + 1)).toNat

end

end A333243.P15565568409962541550

namespace A333243

/-- `A120426(A262275(n+1))` -/
def P15565568409962541550.Spec : Prop :=
  ∀ n, P15565568409962541550.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P10128542922254778193

`∩[A038580(n+1), A333242(n+1)]`
-/

namespace A333243.P10128542922254778193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333243.P10128542922254778193

namespace A333243

/-- `∩[A038580(n+1), A333242(n+1)]` -/
def P10128542922254778193.Spec : Prop :=
  ∀ n, (P10128542922254778193.a n : ℤ) = A333243 (n + 1)

end A333243

/-! ## A333243.P17873843534887918914

`∩[A076610(n+1), A333242(n+1)]`
-/

namespace A333243.P17873843534887918914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333243.P17873843534887918914

namespace A333243

/-- `∩[A076610(n+1), A333242(n+1)]` -/
def P17873843534887918914.Spec : Prop :=
  ∀ n, (P17873843534887918914.a n : ℤ) = A333243 (n + 1)

end A333243

/-! ## A333243.P14325330738317961761

`∩[A302590(n+1), A333242(n+1)]`
-/

namespace A333243.P14325330738317961761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333243.P14325330738317961761

namespace A333243

/-- `∩[A302590(n+1), A333242(n+1)]` -/
def P14325330738317961761.Spec : Prop :=
  ∀ n, (P14325330738317961761.a n : ℤ) = A333243 (n + 1)

end A333243

/-! ## A333243.P1086102333297303633

`∩[A302596(n+1), A333242(n+1)]`
-/

namespace A333243.P1086102333297303633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333243.P1086102333297303633

namespace A333243

/-- `∩[A302596(n+1), A333242(n+1)]` -/
def P1086102333297303633.Spec : Prop :=
  ∀ n, (P1086102333297303633.a n : ℤ) = A333243 (n + 1)

end A333243

/-! ## A333243.P1022760371186023697

`A000040(p?[A121543(n+1)])`
-/

namespace A333243.P1022760371186023697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A333243.P1022760371186023697

namespace A333243

/-- `A000040(p?[A121543(n+1)])` -/
def P1022760371186023697.Spec : Prop :=
  ∀ n, P1022760371186023697.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P16417980347320836883

`A000040(∩[A000040(n+1), A121543(n+1)])`
-/

namespace A333243.P16417980347320836883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A333243.P16417980347320836883

namespace A333243

/-- `A000040(∩[A000040(n+1), A121543(n+1)])` -/
def P16417980347320836883.Spec : Prop :=
  ∀ n, P16417980347320836883.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P3895839029068328607

`A182986(∩[A121543(n+1), A182986(n+1)]+1)`
-/

namespace A333243.P3895839029068328607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A333243.P3895839029068328607

namespace A333243

/-- `A182986(∩[A121543(n+1), A182986(n+1)]+1)` -/
def P3895839029068328607.Spec : Prop :=
  ∀ n, P3895839029068328607.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P4175798953136360643

`A065091(∩[A065091(n+1), A121543(n+1)]-1)`
-/

namespace A333243.P4175798953136360643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n - 1)

end

end A333243.P4175798953136360643

namespace A333243

/-- `A065091(∩[A065091(n+1), A121543(n+1)]-1)` -/
def P4175798953136360643.Spec : Prop :=
  ∀ n, P4175798953136360643.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P8294614617478232939

`∩[A333242(n+1), A359486(n+1)]`
-/

namespace A333243.P8294614617478232939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333243.P8294614617478232939

namespace A333243

/-- `∩[A333242(n+1), A359486(n+1)]` -/
def P8294614617478232939.Spec : Prop :=
  ∀ n, (P8294614617478232939.a n : ℤ) = A333243 (n + 1)

end A333243

/-! ## A333243.P4467813929995633476

`filter[A006450(n+1), A373338(#)]`
-/

namespace A333243.P4467813929995633476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333243.P4467813929995633476

namespace A333243

/-- `filter[A006450(n+1), A373338(#)]` -/
def P4467813929995633476.Spec : Prop :=
  ∀ n, P4467813929995633476.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P12379595454530258098

`filter[A038580(n+1), A373338(#)]`
-/

namespace A333243.P12379595454530258098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333243.P12379595454530258098

namespace A333243

/-- `filter[A038580(n+1), A373338(#)]` -/
def P12379595454530258098.Spec : Prop :=
  ∀ n, P12379595454530258098.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P16685225318561273632

`filter[A302590(n+1), A373338(#)]`
-/

namespace A333243.P16685225318561273632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333243.P16685225318561273632

namespace A333243

/-- `filter[A302590(n+1), A373338(#)]` -/
def P16685225318561273632.Spec : Prop :=
  ∀ n, P16685225318561273632.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P4988759663178746816

`filter[A302596(n+1), A373338(#)]`
-/

namespace A333243.P4988759663178746816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333243.P4988759663178746816

namespace A333243

/-- `filter[A302596(n+1), A373338(#)]` -/
def P4988759663178746816.Spec : Prop :=
  ∀ n, P4988759663178746816.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P11266033731136833838

`filter[A175247(n+2), A373338(#)]`
-/

namespace A333243.P11266033731136833838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333243.P11266033731136833838

namespace A333243

/-- `filter[A175247(n+2), A373338(#)]` -/
def P11266033731136833838.Spec : Prop :=
  ∀ n, P11266033731136833838.a n = A333243 (n + 1)

end A333243

/-! ## A333243.P4894449354244452788

`filter[A302592(n+3), A373338(#)]`
-/

namespace A333243.P4894449354244452788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A333243.P4894449354244452788

namespace A333243

/-- `filter[A302592(n+3), A373338(#)]` -/
def P4894449354244452788.Spec : Prop :=
  ∀ n, P4894449354244452788.a n = A333243 (n + 1)

end A333243

/-!
# A333244: Prime numbers with prime indices in A333243.

The programs for A333244, the canonical program `A333244.P8233365564291189630` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333244 has offset 1).

The definition of A333244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333244.P8233365564291189630

`A049090(A121543(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333244

/-- `A049090(A121543(n+1))` -/
def P8233365564291189630.Spec : Prop :=
  ∀ n, P8233365564291189630.a n = A333244 (n + 1)

theorem P8233365564291189630.correct : P8233365564291189630.Spec := by
  intro n
  simp only [A333244, Nat.add_sub_cancel]

end A333244

/-! ## A333244.P8812455439928929817

`A049090(eq[1, gcd(2, A049076(n+1))]+1)`
-/

namespace A333244.P8812455439928929817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A049076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A333244.P8812455439928929817

namespace A333244

/-- `A049090(eq[1, gcd(2, A049076(n+1))]+1)` -/
def P8812455439928929817.Spec : Prop :=
  ∀ n, P8812455439928929817.a n = A333244 (n + 1)

end A333244

/-! ## A333244.P3697874789655133749

`A038580(A333242(n+1))`
-/

namespace A333244.P3697874789655133749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A333242 (n + 1)).toNat

end

end A333244.P3697874789655133749

namespace A333244

/-- `A038580(A333242(n+1))` -/
def P3697874789655133749.Spec : Prop :=
  ∀ n, P3697874789655133749.a n = A333244 (n + 1)

end A333244

/-! ## A333244.P16115436271720283005

`A006450(A262275(n+1))`
-/

namespace A333244.P16115436271720283005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A262275 (n + 1)).toNat

end

end A333244.P16115436271720283005

namespace A333244

/-- `A006450(A262275(n+1))` -/
def P16115436271720283005.Spec : Prop :=
  ∀ n, P16115436271720283005.a n = A333244 (n + 1)

end A333244

/-! ## A333244.P2006939936528578280

`∏{p}[A006450(A121543(n+1)), A006450(#)]`
-/

namespace A333244.P2006939936528578280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A121543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006450 p

end

end A333244.P2006939936528578280

namespace A333244

/-- `∏{p}[A006450(A121543(n+1)), A006450(#)]` -/
def P2006939936528578280.Spec : Prop :=
  ∀ n, P2006939936528578280.a n = A333244 (n + 1)

end A333244

/-! ## A333244.P11532440383066917072

`∩[A038580(n+1), A262275(n+1)]`
-/

namespace A333244.P11532440383066917072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333244.P11532440383066917072

namespace A333244

/-- `∩[A038580(n+1), A262275(n+1)]` -/
def P11532440383066917072.Spec : Prop :=
  ∀ n, (P11532440383066917072.a n : ℤ) = A333244 (n + 1)

end A333244

/-! ## A333244.P15872607006524277344

`∩[A049090(n+1), A262275(n+1)]`
-/

namespace A333244.P15872607006524277344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333244.P15872607006524277344

namespace A333244

/-- `∩[A049090(n+1), A262275(n+1)]` -/
def P15872607006524277344.Spec : Prop :=
  ∀ n, (P15872607006524277344.a n : ℤ) = A333244 (n + 1)

end A333244

/-! ## A333244.P6627911352683390510

`A006450(∑{d}[A333243(n+1), A000720(#)])`
-/

namespace A333244.P6627911352683390510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A333244.P6627911352683390510

namespace A333244

/-- `A006450(∑{d}[A333243(n+1), A000720(#)])` -/
def P6627911352683390510.Spec : Prop :=
  ∀ n, P6627911352683390510.a n = A333244 (n + 1)

end A333244

/-! ## A333244.P4196923211606960397

`A064988(A333243(n+1))`
-/

namespace A333244.P4196923211606960397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A333243 (n + 1)).toNat

end

end A333244.P4196923211606960397

namespace A333244

/-- `A064988(A333243(n+1))` -/
def P4196923211606960397.Spec : Prop :=
  ∀ n, P4196923211606960397.a n = A333244 (n + 1)

end A333244

/-!
# A333246: Number of self-avoiding closed paths on an n X n grid which pass through NW corner.

The programs for A333246, there is no canonical definition to state claims against.
-/

/-! ## A333246.P15747218964034366943

`A333439(n+2)-1`
-/

namespace A333246.P15747218964034366943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333439 (n + 2) - 1

end

end A333246.P15747218964034366943

/-! ## A333246.P15483818504651062015

`floor(sinh(log(A333438(n+2))))`
-/

namespace A333246.P15483818504651062015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A333438 (n + 2) : ℝ))⌋

end

end A333246.P15483818504651062015

/-! ## A333246.P2953209323099188944

`abs(A333439(n+2)+A057428(n+1))`
-/

namespace A333246.P2953209323099188944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A333439 (n + 2) + A057428 (n + 1)|

end

end A333246.P2953209323099188944

/-! ## A333246.P15155121629857609536

`A333438(n+2)/A020639(2*(n+1))-1`
-/

namespace A333246.P15155121629857609536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333438 (n + 2) : ℚ) / (A020639 (2 * (n + 1)) : ℚ) - 1

end

end A333246.P15155121629857609536

/-! ## A333246.P8026922534116375270

`A333471(A020639(2*(n+1)))+A333439(n+2)`
-/

namespace A333246.P8026922534116375270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (A020639 (2 * (n + 1))).toNat + A333439 (n + 2)

end

end A333246.P8026922534116375270

/-!
# A333248: Triangle read by rows: Row n is the periodic part of the inverse of the n-th cyclotomic polynomial.

The programs for A333248, there is no canonical definition to state claims against.
-/

/-! ## A333248.P987735673519277487

`A054525((A000038(n)+n)^A120263(n+1))`
-/

namespace A333248.P987735673519277487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (SequenceMachineLib.roundAway ((A000038 n + (n : ℤ) : ℚ) ^ (A120263 (n + 1) : ℤ))).toNat

end

end A333248.P987735673519277487

/-! ## A333248.P3810654322103692793

`(A004061(n+1)*A174295(abs(A024000(n))))%2`
-/

namespace A333248.P3810654322103692793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004061 (n + 1) * A174295 |A024000 n|.toNat) 2

end

end A333248.P3810654322103692793

/-! ## A333248.P6877317524043580821

`Δ[A131963(∑[A219326(n+1)])]`
-/

namespace A333248.P6877317524043580821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333248.P6877317524043580821

/-! ## A333248.P14226608331145611139

`A015624(A361527(n))`
-/

namespace A333248.P14226608331145611139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015624 (A361527 n).toNat

end

end A333248.P14226608331145611139

/-! ## A333248.P8003162881393187515

`A015573(A270882(n)+A120568(n+1))`
-/

namespace A333248.P8003162881393187515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015573 (A270882 n + A120568 (n + 1)).toNat

end

end A333248.P8003162881393187515

/-!
# A333249: Number of one-sided Tangles of size n.

The programs for A333249, there is no canonical definition to state claims against.
-/

/-! ## A333249.P5372365904724545487

`A220658(A035298(∑[n]))`
-/

namespace A333249.P5372365904724545487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A035298 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A333249.P5372365904724545487

/-! ## A333249.P16364617689828128585

`A226190(2*A049137(n+1))`
-/

namespace A333249.P16364617689828128585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (2 * A049137 (n + 1)).toNat

end

end A333249.P16364617689828128585

/-! ## A333249.P13516090272428652780

`A195174(A148497(n)+A052893(n+1))`
-/

namespace A333249.P13516090272428652780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A148497 n + A052893 (n + 1)).toNat

end

end A333249.P13516090272428652780

/-!
# A333250: a(n) = concatenate(n-1, a(n-1)) mod n, with initial condition a(0) = 0.

The programs for A333250, there is no canonical definition to state claims against.
-/

/-! ## A333250.P2893707136113209235

`A336917(A336940(n)²*A336927(n+1))`
-/

namespace A333250.P2893707136113209235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (A336940 n ^ 2 * A336927 (n + 1)).toNat

end

end A333250.P2893707136113209235

/-! ## A333250.P6668881849828934952

`A336917(A336927(n+1)*A336940(n)*A336940(n))`
-/

namespace A333250.P6668881849828934952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336917 (A336927 (n + 1) * A336940 n * A336940 n).toNat

end

end A333250.P6668881849828934952

/-!
# A333251: Tropical version of Somos-5 sequence A006721.

The programs for A333251, the canonical program `A333251.P2614754143735819101` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333251 has offset 0).

The definition of A333251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333251.P2614754143735819101

`A011867(2*(n+2))-∑[A008619(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333251

/-- `A011867(2*(n+2))-∑[A008619(n)]` -/
def P2614754143735819101.Spec : Prop :=
  ∀ n, P2614754143735819101.a n = A333251 n

theorem P2614754143735819101.correct : P2614754143735819101.Spec := by
  intro n
  simp only [A333251]

end A333251

/-! ## A333251.P7843524176548859296

`A174738(A005843(n+3))-∑[A008619(n)]`
-/

namespace A333251.P7843524176548859296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (A005843 (n + 3)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333251.P7843524176548859296

namespace A333251

/-- `A174738(A005843(n+3))-∑[A008619(n)]` -/
def P7843524176548859296.Spec : Prop :=
  ∀ n, P7843524176548859296.a n = A333251 n

end A333251

/-! ## A333251.P2026090434552722589

`A174738(A005843(n+3))-∑[A065033(n+1)]`
-/

namespace A333251.P2026090434552722589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (A005843 (n + 3)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333251.P2026090434552722589

namespace A333251

/-- `A174738(A005843(n+3))-∑[A065033(n+1)]` -/
def P2026090434552722589.Spec : Prop :=
  ∀ n, P2026090434552722589.a n = A333251 n

end A333251

/-! ## A333251.P8699487013525528147

`A057356(A036406(n))-A082784(n)`
-/

namespace A333251.P8699487013525528147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A036406 n).toNat - A082784 n

end

end A333251.P8699487013525528147

namespace A333251

/-- `A057356(A036406(n))-A082784(n)` -/
def P8699487013525528147.Spec : Prop :=
  ∀ n, P8699487013525528147.a n = A333251 n

end A333251

/-! ## A333251.P5961241647082846443

`A002265(A321324(n))-A082784(n)`
-/

namespace A333251.P5961241647082846443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A321324 n).toNat - A082784 n

end

end A333251.P5961241647082846443

namespace A333251

/-- `A002265(A321324(n))-A082784(n)` -/
def P5961241647082846443.Spec : Prop :=
  ∀ n, P5961241647082846443.a n = A333251 n

end A333251

/-! ## A333251.P15713637803498738992

`∑[A110654(n)]-A008619(A033439(n)+n)`
-/

namespace A333251.P15713637803498738992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 (A033439 n + (n : ℤ)).toNat

end

end A333251.P15713637803498738992

namespace A333251

/-- `∑[A110654(n)]-A008619(A033439(n)+n)` -/
def P15713637803498738992.Spec : Prop :=
  ∀ n, P15713637803498738992.a n = A333251 n

end A333251

/-! ## A333251.P13931689684349699189

`A002620(n+3)-A057357(A000124(n+3))`
-/

namespace A333251.P13931689684349699189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 3) - A057357 (A000124 (n + 3)).toNat

end

end A333251.P13931689684349699189

namespace A333251

/-- `A002620(n+3)-A057357(A000124(n+3))` -/
def P13931689684349699189.Spec : Prop :=
  ∀ n, P13931689684349699189.a n = A333251 n

end A333251

/-! ## A333251.P7541116105984304260

`A331952(n)-A057359(n²)`
-/

namespace A333251.P7541116105984304260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n - A057359 (n ^ 2)

end

end A333251.P7541116105984304260

namespace A333251

/-- `A331952(n)-A057359(n²)` -/
def P7541116105984304260.Spec : Prop :=
  ∀ n, P7541116105984304260.a n = A333251 n

end A333251

/-! ## A333251.P2457815902976274470

`A057356(A117950(n))-A033638(n)`
-/

namespace A333251.P2457815902976274470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A117950 n).toNat - A033638 n

end

end A333251.P2457815902976274470

namespace A333251

/-- `A057356(A117950(n))-A033638(n)` -/
def P2457815902976274470.Spec : Prop :=
  ∀ n, P2457815902976274470.a n = A333251 n

end A333251

/-! ## A333251.P9679936934739151324

`A057356(A117950(n))-∑[A123108(n)]`
-/

namespace A333251.P9679936934739151324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A117950 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333251.P9679936934739151324

namespace A333251

/-- `A057356(A117950(n))-∑[A123108(n)]` -/
def P9679936934739151324.Spec : Prop :=
  ∀ n, P9679936934739151324.a n = A333251 n

end A333251

/-!
# A333252: Lengths of maximal strictly decreasing subsequences in the sequence of prime gaps (A001223).

The programs for A333252, there is no canonical definition to state claims against.
-/

/-! ## A333252.P11016498958525917417

`Δ[comp[A258026(n+1)]]`
-/

namespace A333252.P11016498958525917417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333252.P11016498958525917417

/-! ## A333252.P7086062530629528761

`Δ[comp[∑[A333215(n+1)]]]`
-/

namespace A333252.P7086062530629528761
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333252.P7086062530629528761

/-! ## A333252.P9723914941358095340

`Δ[lt[A048852(n), A048852(n+1)]]`
-/

namespace A333252.P9723914941358095340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333252.P9723914941358095340

/-! ## A333252.P6009030740697141317

`A333230(n+1)-comp[A258026(n+1)]`
-/

namespace A333252.P6009030740697141317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333230 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A333252.P6009030740697141317

/-! ## A333252.P16155337275937017859

`Δ[lt[A118534(n+1), A008578(n+1)+1]]`
-/

namespace A333252.P16155337275937017859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333252.P16155337275937017859

/-! ## A333252.P5100136338230451145

`Δ[lt[A054541(n+1), A001223(n+1)+2]]`
-/

namespace A333252.P5100136338230451145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333252.P5100136338230451145

/-! ## A333252.P1657902110056799236

`Δ[lt[A054541(n+1), A054541(n+2)+2]]`
-/

namespace A333252.P1657902110056799236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333252.P1657902110056799236

/-! ## A333252.P15138204953056348754

`lt[A073274(n+1), 2]+1-comp[A258026(n+1)]`
-/

namespace A333252.P15138204953056348754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ)

end

end A333252.P15138204953056348754

/-! ## A333252.P16276796359588386087

`lt[A079054(n+2), 1]+1-comp[A258026(n+1)]`
-/

namespace A333252.P16276796359588386087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ)

end

end A333252.P16276796359588386087

/-!
# A333253: Lengths of maximal strictly increasing subsequences in the sequence of prime gaps (A001223).

The programs for A333253, there is no canonical definition to state claims against.
-/

/-! ## A333253.P17709274530301730222

`Δ[comp[A258025(n+1)]]`
-/

namespace A333253.P17709274530301730222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P17709274530301730222

/-! ## A333253.P2036232971812372404

`Δ[lt[Δ[A050216(n)], n+1]]`
-/

namespace A333253.P2036232971812372404
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P2036232971812372404

/-! ## A333253.P12733825025191120902

`abs(Δ[A046868(abs(1-n)+1)])`
-/

namespace A333253.P12733825025191120902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A333253.P12733825025191120902

/-! ## A333253.P1431628830684600271

`Δ[∪[(n+1)²², A046868(n+1)]]`
-/

namespace A333253.P1431628830684600271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P1431628830684600271

/-! ## A333253.P12073722418920618636

`Δ[eq[n, A000720(A062234(n+1))]]`
-/

namespace A333253.P12073722418920618636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062234 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P12073722418920618636

/-! ## A333253.P6567002854608553332

`Δ[eq[A001223(n+1), A051702(n+1)]]`
-/

namespace A333253.P6567002854608553332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P6567002854608553332

/-! ## A333253.P1367579922626686025

`Δ[eq[A046929(n+1), A046933(n+1)]]`
-/

namespace A333253.P1367579922626686025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P1367579922626686025

/-! ## A333253.P10962461216922764892

`Δ[eq[A046929(n+1), A339270(n+1)]]`
-/

namespace A333253.P10962461216922764892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P10962461216922764892

/-! ## A333253.P3937479280418015489

`Δ[lt[A046933(n+1), A054541(n+1)]]`
-/

namespace A333253.P3937479280418015489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333253.P3937479280418015489

/-!
# A333254: Lengths of maximal runs in the sequence of prime gaps (A001223).

The programs for A333254, there is no canonical definition to state claims against.
-/

/-! ## A333254.P14203514733133933447

`Δ[comp[A064113(n+1)]]`
-/

namespace A333254.P14203514733133933447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A333254.P14203514733133933447

/-!
# A333255: Numbers k such that the k-th composition in standard order is strictly increasing.

The programs for A333255, there is no canonical definition to state claims against.
-/

/-! ## A333255.P6251644610901468414

`eq[log2(A001316(n)), A124765(n)]`
-/

namespace A333255.P6251644610901468414
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A333255.P6251644610901468414

/-! ## A333255.P9925475632734310817

`eq[A001222(A268444(n)), A124765(n)]`
-/

namespace A333255.P9925475632734310817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333255.P9925475632734310817

/-! ## A333255.P14248489989447190676

`eq[A000120(n), A124765(n)]`
-/

namespace A333255.P14248489989447190676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333255.P14248489989447190676

/-! ## A333255.P4628029247193875109

`eq[1, A011782(A000120(n)-A124760(n))]`
-/

namespace A333255.P4628029247193875109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 n - A124760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333255.P4628029247193875109

/-! ## A333255.P3840025200030734877

`lt[A000120(A000120(n)-A124765(n)), 1]`
-/

namespace A333255.P3840025200030734877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n - A124765 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333255.P3840025200030734877

/-! ## A333255.P3711801890998236384

`eq[A001222(A278222(n)), A124765(n)]`
-/

namespace A333255.P3711801890998236384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333255.P3711801890998236384

/-!
# A333256: Numbers k such that the k-th composition in standard order is strictly decreasing.

The programs for A333256, there is no canonical definition to state claims against.
-/

/-! ## A333256.P1010693518784746682

`A395303(A395306(n))`
-/

namespace A333256.P1010693518784746682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395303 (A395306 n).toNat

end

end A333256.P1010693518784746682

/-! ## A333256.P9792053100230843660

`∩[A233564(n+1), A114994(n)]`
-/

namespace A333256.P9792053100230843660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333256.P9792053100230843660

/-! ## A333256.P2823792948011781983

`∩[A333489(n+1), A114994(n)]`
-/

namespace A333256.P2823792948011781983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333256.P2823792948011781983

/-! ## A333256.P2100936704816946069

`∩[A374698(n+1), A114994(n)]`
-/

namespace A333256.P2100936704816946069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333256.P2100936704816946069

/-! ## A333256.P1467636645378697260

`∩[A392708(n+1), A114994(n)]`
-/

namespace A333256.P1467636645378697260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333256.P1467636645378697260

/-!
# A333257: Number of distinct consecutive subsequence-sums of the k-th composition in standard order.

The programs for A333257, there is no canonical definition to state claims against.
-/

/-! ## A333257.P16611708519382322061

`A333224(n)+1`
-/

namespace A333257.P16611708519382322061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n + 1

end

end A333257.P16611708519382322061

/-! ## A333257.P17273368484023531203

`A000120(A348363(2*n+1))`
-/

namespace A333257.P17273368484023531203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348363 (2 * n + 1)).toNat

end

end A333257.P17273368484023531203

/-! ## A333257.P8534943551076610006

`n-A023443(n-A333224(n))`
-/

namespace A333257.P8534943551076610006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A333224 n).toNat

end

end A333257.P8534943551076610006

/-! ## A333257.P15833407992700857602

`A199343(lcm((-1)^n, A333224(n)))`
-/

namespace A333257.P15833407992700857602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (Int.lcm ((-1) ^ n) (A333224 n))

end

end A333257.P15833407992700857602

/-! ## A333257.P9128224207032623257

`A000124(n)-(∑[n]-A333224(n))`
-/

namespace A333257.P9128224207032623257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A333224 n)

end

end A333257.P9128224207032623257

/-! ## A333257.P8776353252678325184

`1-(A000007(n)-1)*A333224(n)`
-/

namespace A333257.P8776353252678325184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - 1) * A333224 n

end

end A333257.P8776353252678325184

/-! ## A333257.P9024417838903128763

`A333224(n)-(n-1)-A001489(n)`
-/

namespace A333257.P9024417838903128763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n - ((n : ℤ) - 1) - A001489 n

end

end A333257.P9024417838903128763

/-! ## A333257.P13610159441192446900

`A062050(or(A001316(n), A333224(n)))`
-/

namespace A333257.P13610159441192446900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (Int.lor (A001316 n) (A333224 n)).toNat

end

end A333257.P13610159441192446900

/-! ## A333257.P12250821429409035997

`abs(A008683(A007918(n))-A333224(n))`
-/

namespace A333257.P12250821429409035997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007918 n).toNat - A333224 n|

end

end A333257.P12250821429409035997

/-! ## A333257.P1675904862739057158

`A000120(or(A047268(n+1), A348363(n)))`
-/

namespace A333257.P1675904862739057158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A047268 (n + 1)) (A348363 n)).toNat

end

end A333257.P1675904862739057158

/-!
# A333259: a(n) = Sum_{p in L(n)} 2^(pi(p) - 1) where L(n) is the set of all least primes in partitions of n into prime parts.

The programs for A333259, there is no canonical definition to state claims against.
-/

/-! ## A333259.P994287752770016021

`∑{p}[A333129(n), A048675(#)]`
-/

namespace A333259.P994287752770016021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A333259.P994287752770016021

/-! ## A333259.P18143819683154096724

`∑{p}[A333129(n), A087207(#)]`
-/

namespace A333259.P18143819683154096724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A333259.P18143819683154096724

/-! ## A333259.P3945672917212961593

`∑{p}[A333129(n), A156552(#)]`
-/

namespace A333259.P3945672917212961593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A333259.P3945672917212961593

/-! ## A333259.P13605514552897206382

`∑{p}[A333129(n), A233249(#)]`
-/

namespace A333259.P13605514552897206382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A333259.P13605514552897206382

/-! ## A333259.P1245652678813846727

`∑{d}[A333129(n), A048675(A014963(#))]`
-/

namespace A333259.P1245652678813846727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048675 (A014963 d).toNat

end

end A333259.P1245652678813846727

/-!
# A333260: Number of terms in polynomial sequence s(n) = (x*s(n-1)*s(n-4) + y*s(n-2)*s(n-3))/s(n-5), with s(k) = 1 for k = 0..4.

The programs for A333260, there is no canonical definition to state claims against.
-/

/-! ## A333260.P8733188467544538796

`A029129(eq[1, A091885(n+1)])`
-/

namespace A333260.P8733188467544538796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333260.P8733188467544538796

/-! ## A333260.P16300258586892008511

`A111660(∑[A308823(n+1)])+1`
-/

namespace A333260.P16300258586892008511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A333260.P16300258586892008511

/-! ## A333260.P8639836249002500815

`∑[∑[A037821(A316473(n+1)+1)]]+1`
-/

namespace A333260.P8639836249002500815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A316473 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A333260.P8639836249002500815

/-!
# A333261: Numbers k such that A071324(k) = A071324(k+1).

The programs for A333261, there is no canonical definition to state claims against.
-/

/-! ## A333261.P3947307336860028481

`eq[A071324(n+1), A071324(n+2)]+1`
-/

namespace A333261.P3947307336860028481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333261.P3947307336860028481

/-! ## A333261.P14434924308032126647

`eq[A071323(n+1), A071323(round(acot(n)+n))]`
-/

namespace A333261.P14434924308032126647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071323 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333261.P14434924308032126647

/-! ## A333261.P2401432268833804265

`eq[A071323(n+1), A071323(A233583(n+1))]`
-/

namespace A333261.P2401432268833804265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071323 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333261.P2401432268833804265

/-!
# A333262: Number of steps to reach 1 by iterating the alternating sum of divisors function A071324 starting from n.

The programs for A333262, there is no canonical definition to state claims against.
-/

/-! ## A333262.P960919952468584709

`a(A071324(n+1)-1)+1` with `a(0)=0`
-/

namespace A333262.P960919952468584709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A071324 (n + 1) - 1).toNat + 1

end

end A333262.P960919952468584709

/-! ## A333262.P4590438005764010264

`a(abs(A071323(n+1))-1)+1` with `a(0)=0`
-/

namespace A333262.P4590438005764010264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (|A071323 (n + 1)| - 1).toNat + 1

end

end A333262.P4590438005764010264

/-! ## A333262.P5084363268689484382

`a(A345060(n+1)+A344441(n+1)-A061020(n+1)-1)+1` with `a(0)=0`
-/

namespace A333262.P5084363268689484382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A345060 (n + 1) + (A344441 (n + 1) - A061020 (n + 1)) - 1).toNat + 1

end

end A333262.P5084363268689484382

/-! ## A333262.P15854177981695538162

`n-A001951(A046660(A182522(n)))`
-/

namespace A333262.P15854177981695538162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001951 (A046660 (A182522 n).toNat).toNat

end

end A333262.P15854177981695538162

/-! ## A333262.P5488970030185793504

`A056792(record[A029578(n)-A326292(n)])`
-/

namespace A333262.P5488970030185793504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n - A326292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333262.P5488970030185793504

/-!
# A333264: Least number k that reaches 1 after n iterations of A206369.

The programs for A333264, there is no canonical definition to state claims against.
-/

/-! ## A333264.P2789241098870418511

`eq[A303837(n+1), A303841(A366263(n))]`
-/

namespace A333264.P2789241098870418511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303841 (A366263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333264.P2789241098870418511

/-!
# A333265: Least number k that reaches 1 after n iterations of A071324.

The programs for A333265, there is no canonical definition to state claims against.
-/

/-! ## A333265.P8493596008956107764

`lt[A000010(A000010(n+1)), A002636(3*n)]`
-/

namespace A333265.P8493596008956107764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333265.P8493596008956107764

/-! ## A333265.P8245494453227296157

`lt[∏{d}[n, #]/4+n-∑{digits}[n, #], n]`
-/

namespace A333265.P8245494453227296157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / 4 + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A333265.P8245494453227296157

/-! ## A333265.P6875615897298940342

`record[A140271(∑[A124778(n)])]`
-/

namespace A333265.P6875615897298940342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333265.P6875615897298940342

/-! ## A333265.P12743050268813047163

`∩[A067126(n+1), ∑[A124778(n)]]`
-/

namespace A333265.P12743050268813047163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333265.P12743050268813047163

/-! ## A333265.P16530158923215045119

`∩[A066050(n+1), A092598(n+1)]`
-/

namespace A333265.P16530158923215045119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333265.P16530158923215045119

/-!
# A333266: a(n) is the smallest number k such that for all m >= k there is at least one prime partition of m with prime(n) as least part.

The programs for A333266, there is no canonical definition to state claims against.
-/

/-! ## A333266.P2846304512601837276

`A180306(n+1)+A008864(n+1)`
-/

namespace A333266.P2846304512601837276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 1) + A008864 (n + 1)

end

end A333266.P2846304512601837276

/-! ## A333266.P4001899731221058585

`A180306(n+1)+A028815(n+1)`
-/

namespace A333266.P4001899731221058585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 1) + A028815 (n + 1)

end

end A333266.P4001899731221058585

/-! ## A333266.P7152092123726364596

`A000040(n+1)+A180306(n+1)+1`
-/

namespace A333266.P7152092123726364596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A180306 (n + 1) + 1)

end

end A333266.P7152092123726364596

/-! ## A333266.P17760918657366984850

`A180306(n+1)+A008578(n+2)+1`
-/

namespace A333266.P17760918657366984850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 1) + (A008578 (n + 2) + 1)

end

end A333266.P17760918657366984850

/-! ## A333266.P7056286028780695728

`record[A000010(n+1)]+A180306(n+1)+2`
-/

namespace A333266.P7056286028780695728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A180306 (n + 1) + 2)

end

end A333266.P7056286028780695728

/-! ## A333266.P17978711859341287167

`A180306(n+1)+record[A006530(n+2)+1]`
-/

namespace A333266.P17978711859341287167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333266.P17978711859341287167

/-! ## A333266.P1597009122441521527

`record[A020639(n+2)]+A180306(n+1)+1`
-/

namespace A333266.P1597009122441521527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A180306 (n + 1) + 1)

end

end A333266.P1597009122441521527

/-! ## A333266.P10004272216159843545

`eq[1, A001222(n+1)]+A180306(n+1)+2`
-/

namespace A333266.P10004272216159843545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A180306 (n + 1) + 2)

end

end A333266.P10004272216159843545

/-! ## A333266.P10567763182167460554

`A180306(n+1)+A000203(Δ[A007504(n)])`
-/

namespace A333266.P10567763182167460554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 1) + A000203 (f1 (n + 1) - f1 n).toNat

end

end A333266.P10567763182167460554

/-! ## A333266.P18042260904491092762

`A180306(n+1)+A000203(record[A051698(n)])`
-/

namespace A333266.P18042260904491092762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 1) + A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333266.P18042260904491092762

/-!
# A333267: If n = Product (p_j^k_j) then a(n) = Product (a(pi(p_j)) * k_j), where pi = A000720.

The programs for A333267, there is no canonical definition to state claims against.
-/

/-! ## A333267.P1648552710589544179

`A002034(A206497(n+1))%A337453(n+1)`
-/

namespace A333267.P1648552710589544179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002034 (A206497 (n + 1)).toNat) (A337453 (n + 1))

end

end A333267.P1648552710589544179

/-! ## A333267.P16538465974034589578

`or(A002034(A206497(n+1)), A147612((4*n+1)²))`
-/

namespace A333267.P16538465974034589578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002034 (A206497 (n + 1)).toNat) (A147612 ((4 * n + 1) ^ 2))

end

end A333267.P16538465974034589578

/-! ## A333267.P16060625375690776503

`A002034(A206497(n+1))%A005843(A270946(n))`
-/

namespace A333267.P16060625375690776503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002034 (A206497 (n + 1)).toNat) (A005843 (A270946 n).toNat)

end

end A333267.P16060625375690776503

/-! ## A333267.P7243956132054982341

`A002034(A206497(n+1))+and(4, A143477(2*n+5))`
-/

namespace A333267.P7243956132054982341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A206497 (n + 1)).toNat + Int.land 4 (A143477 (2 * n + 5))

end

end A333267.P7243956132054982341

/-! ## A333267.P4724611107627761943

`A120325(A184061(n+1))+A002034(A206497(n+1))`
-/

namespace A333267.P4724611107627761943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A184061 (n + 1)).toNat + A002034 (A206497 (n + 1)).toNat

end

end A333267.P4724611107627761943

/-!
# A333270: Irregular triangle read by rows: coefficients of the s-inflated Eulerian polynomial Q^(s)_n(x) where s is the sequence (1,2,3,...n).

The programs for A333270, there is no canonical definition to state claims against.
-/

/-! ## A333270.P3635418200102099926

`A333272(n+2)-A101637(A130755(n))`
-/

namespace A333270.P3635418200102099926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333272 (n + 2) - A101637 (A130755 n).toNat

end

end A333270.P3635418200102099926

/-! ## A333270.P4335659582064274668

`A333272(A032951(n+2))`
-/

namespace A333270.P4335659582064274668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333272 (A032951 (n + 2)).toNat

end

end A333270.P4335659582064274668

/-! ## A333270.P5548935563778068029

`A333272(A357979(n+2))`
-/

namespace A333270.P5548935563778068029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333272 (A357979 (n + 2)).toNat

end

end A333270.P5548935563778068029

/-! ## A333270.P17956922526893697420

`A333272(A371864(n+2))`
-/

namespace A333270.P17956922526893697420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333272 (A371864 (n + 2)).toNat

end

end A333270.P17956922526893697420

/-! ## A333270.P12643245635166792222

`A333272(A043320(n+1)+1)`
-/

namespace A333270.P12643245635166792222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333272 (A043320 (n + 1) + 1).toNat

end

end A333270.P12643245635166792222

/-!
# A333272: Irregular triangle read by rows: coefficients of the s-inflated Eulerian polynomial Q^(s)_n(x) where s is the Fibonacci sequence (1,1,2,3,5,8,...).

The programs for A333272, there is no canonical definition to state claims against.
-/

/-! ## A333272.P2577231036628772652

`A333270(n*a(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A333272.P2577231036628772652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A333270 ((n : ℤ) * a (a (n - 1)).toNat).toNat

end

end A333272.P2577231036628772652

/-! ## A333272.P4820089803267421031

`A333270(n*a(A008682(n)))` with `a(0)=1`
-/

namespace A333272.P4820089803267421031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333270 ((n : ℤ) * a (A008682 n).toNat).toNat

end

end A333272.P4820089803267421031

/-! ## A333272.P16974263088623656213

`A333270(A032951(n+1)-ceil(sin(n)²))`
-/

namespace A333272.P16974263088623656213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333270 (A032951 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A333272.P16974263088623656213

/-! ## A333272.P6545693639733071302

`A333270(A055645(gcd(n, A000142(n))))`
-/

namespace A333272.P6545693639733071302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333270 (A055645 (Int.gcd (n : ℤ) (A000142 n))).toNat

end

end A333272.P6545693639733071302

/-! ## A333272.P9572754820309826597

`A333270(A067080(n+4)-A040002(n))`
-/

namespace A333272.P9572754820309826597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333270 (A067080 (n + 4) - A040002 n).toNat

end

end A333272.P9572754820309826597

/-!
# A333275: Irregular triangle read by rows: consider the graph defined in A306302 formed from a row of n adjacent congruent rectangles by drawing the diagonals of all visible rectangles; T(n,k) (n >= 1, 2 <= k <= 2n+2) is the number of non-boundary vertices in the graph at which k polygons meet.

The programs for A333275, there is no canonical definition to state claims against.
-/

/-! ## A333275.P17254923119308447166

`A322838(A007694(n+1)+char[A000712(n)])`
-/

namespace A333275.P17254923119308447166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322838 (A007694 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A333275.P17254923119308447166

/-!
# A333276: a(n) = Sum_k k*A333274(n,k).

The programs for A333276, there is no canonical definition to state claims against.
-/

/-! ## A333276.P1866064069305913803

`2*(A290132(n+2)+n)`
-/

namespace A333276.P1866064069305913803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A290132 (n + 2) + (n : ℤ))

end

end A333276.P1866064069305913803

/-! ## A333276.P13940892149914665982

`2*(A331757(n+1)-(n+2))`
-/

namespace A333276.P13940892149914665982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331757 (n + 1) - (n + 2 : ℤ))

end

end A333276.P13940892149914665982

/-! ## A333276.P13242621238067745335

`A333277(n+1)+A008574(∑[n+2])`
-/

namespace A333276.P13242621238067745335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333277 (n + 1) + A008574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333276.P13242621238067745335

/-! ## A333276.P10927305927737390545

`A324043(n+1)+3*A306302(n+1)`
-/

namespace A333276.P10927305927737390545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324043 (n + 1) + 3 * A306302 (n + 1)

end

end A333276.P10927305927737390545

/-! ## A333276.P1442964207190093040

`4*A306302(n+1)-A324042(n+1)`
-/

namespace A333276.P1442964207190093040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A306302 (n + 1) - A324042 (n + 1)

end

end A333276.P1442964207190093040

/-! ## A333276.P12890572220119330117

`3*A324042(n+1)+4*A324043(n+1)`
-/

namespace A333276.P12890572220119330117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A324042 (n + 1) + 4 * A324043 (n + 1)

end

end A333276.P12890572220119330117

/-! ## A333276.P10797311941589368165

`A290132(n+2)+A290132(n+2)+A005843(n)`
-/

namespace A333276.P10797311941589368165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 2) + (A290132 (n + 2) + A005843 n)

end

end A333276.P10797311941589368165

/-!
# A333277: a(n) = Sum_k k*A333275(n,k).

The programs for A333277, there is no canonical definition to state claims against.
-/

/-! ## A333277.P6836713482633691657

`A333276(n+1)-∑[4*(n+2)]`
-/

namespace A333277.P6836713482633691657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333276 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333277.P6836713482633691657

/-! ## A333277.P14219069910805437527

`2*(A159065(n+2)+A115004(n+1))`
-/

namespace A333277.P14219069910805437527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159065 (n + 2) + A115004 (n + 1))

end

end A333277.P14219069910805437527

/-! ## A333277.P11646685972350553146

`A088658(n+2)-2*A331761(n+1)`
-/

namespace A333277.P11646685972350553146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088658 (n + 2) - 2 * A331761 (n + 1)

end

end A333277.P11646685972350553146

/-! ## A333277.P18146882460272008783

`A331761(2*n+3)-2*A331761(n+1)`
-/

namespace A333277.P18146882460272008783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 (2 * n + 3) - 2 * A331761 (n + 1)

end

end A333277.P18146882460272008783

/-! ## A333277.P6887618752551777632

`A347751(n+1)-A347758(A347758(2*(n+2)))`
-/

namespace A333277.P6887618752551777632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347751 (n + 1) - A347758 (A347758 (2 * (n + 2))).toNat

end

end A333277.P6887618752551777632

/-!
# A333278: Triangle read by rows: T(n,m) (n >= m >= 1) = number of edges in the graph formed by drawing the line segments connecting any two of the (n+1) X (m+1) lattice points in an n X m grid of squares.

The programs for A333278, there is no canonical definition to state claims against.
-/

/-! ## A333278.P3338250244773532972

`A288180(n+1)+A288187(n+1)-1`
-/

namespace A333278.P3338250244773532972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 (n + 1) + (A288187 (n + 1) - 1)

end

end A333278.P3338250244773532972

/-! ## A333278.P16256712354507830059

`A288187(n+1)+A185048(A288180(n+1))`
-/

namespace A333278.P16256712354507830059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288187 (n + 1) + A185048 (A288180 (n + 1)).toNat

end

end A333278.P16256712354507830059

/-! ## A333278.P6779045227782999681

`A004442(A288187(n+1)+A288180(n+1))`
-/

namespace A333278.P6779045227782999681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A288187 (n + 1) + A288180 (n + 1)).toNat

end

end A333278.P6779045227782999681

/-! ## A333278.P2806845774492794899

`A023443(A288187(n+1)+A288180(n+1))`
-/

namespace A333278.P2806845774492794899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288187 (n + 1) + A288180 (n + 1)).toNat

end

end A333278.P2806845774492794899

/-! ## A333278.P10353729228009246893

`A029578(A288187(n+1)+A288180(n+1))`
-/

namespace A333278.P10353729228009246893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A288187 (n + 1) + A288180 (n + 1)).toNat

end

end A333278.P10353729228009246893

/-!
# A333279: Column 2 of triangle in A288187.

The programs for A333279, there is no canonical definition to state claims against.
-/

/-! ## A333279.P15198271294524923221

`A333280(n+1)+1-A333281(n+1)`
-/

namespace A333279.P15198271294524923221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333280 (n + 1) + (1 - A333281 (n + 1))

end

end A333279.P15198271294524923221

/-! ## A333279.P6734997011049008811

`A288187(∑[n]+2)`
-/

namespace A333279.P6734997011049008811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288187 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333279.P6734997011049008811

/-! ## A333279.P17974841796995896970

`record[A010054(n)*A288187(n+2)]`
-/

namespace A333279.P17974841796995896970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A288187 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333279.P17974841796995896970

/-! ## A333279.P4955378159723479119

`A333280(n+1)+1-A288180(∑[n]+2)`
-/

namespace A333279.P4955378159723479119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333280 (n + 1) + 1 - A288180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333279.P4955378159723479119

/-! ## A333279.P4964679679622810751

`A333280(n+1)-A185048(A333281(n+1))`
-/

namespace A333279.P4964679679622810751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333280 (n + 1) - A185048 (A333281 (n + 1)).toNat

end

end A333279.P4964679679622810751

/-!
# A333280: Column 2 of triangle in A333278.

The programs for A333280, there is no canonical definition to state claims against.
-/

/-! ## A333280.P13195967889253743120

`A333279(n+1)+A333281(n+1)-1`
-/

namespace A333280.P13195967889253743120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333279 (n + 1) + (A333281 (n + 1) - 1)

end

end A333280.P13195967889253743120

/-! ## A333280.P6315510009383435349

`A333279(n+1)+record[A010054(n)*A288180(n+2)]-1`
-/

namespace A333280.P6315510009383435349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A288180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333279 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A333280.P6315510009383435349

/-! ## A333280.P4502698909476559503

`A333279(n+1)+A185048(A333281(n+1))`
-/

namespace A333280.P4502698909476559503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333279 (n + 1) + A185048 (A333281 (n + 1)).toNat

end

end A333280.P4502698909476559503

/-! ## A333280.P7639019004038781765

`A333279(n+1)+A185048(A288180(∑[n]+2))`
-/

namespace A333280.P7639019004038781765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333279 (n + 1) + A185048 (A288180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A333280.P7639019004038781765

/-! ## A333280.P12348048117429481314

`A288187(∑[n]+2)+A185048(A333281(n+1))`
-/

namespace A333280.P12348048117429481314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288187 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A185048 (A333281 (n + 1)).toNat

end

end A333280.P12348048117429481314

/-!
# A333281: Column 2 of triangle in A288180.

The programs for A333281, there is no canonical definition to state claims against.
-/

/-! ## A333281.P2402437548692275384

`A333280(n+1)+1-A333279(n+1)`
-/

namespace A333281.P2402437548692275384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333280 (n + 1) + (1 - A333279 (n + 1))

end

end A333281.P2402437548692275384

/-! ## A333281.P5204109229729204990

`A288180(∑[n]+2)`
-/

namespace A333281.P5204109229729204990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333281.P5204109229729204990

/-! ## A333281.P14921314359860440963

`record[A010054(n)*A288180(n+2)]`
-/

namespace A333281.P14921314359860440963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A288180 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333281.P14921314359860440963

/-! ## A333281.P6094583836320269386

`record[A288180(n+2)/A144447(n+1)]`
-/

namespace A333281.P6094583836320269386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288180 (n + 2) : ℚ) / (A144447 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333281.P6094583836320269386

/-! ## A333281.P10950009619327300355

`A333280(n+1)+1-A288187(∑[n]+2)`
-/

namespace A333281.P10950009619327300355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333280 (n + 1) + 1 - A288187 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333281.P10950009619327300355

/-!
# A333282: Triangle read by rows: T(m,n) (m >= n >= 1) = number of regions formed by drawing the line segments connecting any two of the (m+1) X (n+1) lattice points in an m X n grid of squares and extending them to the boundary of the grid.

The programs for A333282, there is no canonical definition to state claims against.
-/

/-! ## A333282.P11424845314530916239

`A333283(n+1)+1-A333284(n+1)`
-/

namespace A333282.P11424845314530916239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333283 (n + 1) + (1 - A333284 (n + 1))

end

end A333282.P11424845314530916239

/-! ## A333282.P3460872009369928608

`A092486(A333283(n+1)-A333284(n+1))`
-/

namespace A333282.P3460872009369928608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A333283 (n + 1) - A333284 (n + 1)).toNat

end

end A333282.P3460872009369928608

/-! ## A333282.P15955215192456171573

`A014681(A333283(n+1)-A333284(n+1))`
-/

namespace A333282.P15955215192456171573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A333283 (n + 1) - A333284 (n + 1)).toNat

end

end A333282.P15955215192456171573

/-! ## A333282.P17110206873457163230

`A015906(A333283(n+1)-A333284(n+1))`
-/

namespace A333282.P17110206873457163230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A333283 (n + 1) - A333284 (n + 1)).toNat

end

end A333282.P17110206873457163230

/-! ## A333282.P6448825563297768148

`A020725(A333283(n+1)-A333284(n+1))`
-/

namespace A333282.P6448825563297768148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A333283 (n + 1) - A333284 (n + 1)).toNat

end

end A333282.P6448825563297768148

/-!
# A333283: Triangle read by rows: T(m,n) (m >= n >= 1) = number of edges formed by drawing the line segments connecting any two of the (m+1) X (n+1) lattice points in an m X n grid of squares and extending them to the boundary of the grid.

The programs for A333283, there is no canonical definition to state claims against.
-/

/-! ## A333283.P3029507184370805067

`A333282(n+1)+A333284(n+1)-1`
-/

namespace A333283.P3029507184370805067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333282 (n + 1) + (A333284 (n + 1) - 1)

end

end A333283.P3029507184370805067

/-! ## A333283.P1814304920674845191

`A333282(n+1)+A185048(A333284(n+1))`
-/

namespace A333283.P1814304920674845191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333282 (n + 1) + A185048 (A333284 (n + 1)).toNat

end

end A333283.P1814304920674845191

/-! ## A333283.P6285501536926309557

`A004442(A333284(n+1)+A333282(n+1))`
-/

namespace A333283.P6285501536926309557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A333284 (n + 1) + A333282 (n + 1)).toNat

end

end A333283.P6285501536926309557

/-! ## A333283.P220634023697404782

`A023443(A333284(n+1)+A333282(n+1))`
-/

namespace A333283.P220634023697404782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A333284 (n + 1) + A333282 (n + 1)).toNat

end

end A333283.P220634023697404782

/-! ## A333283.P16306524868624924166

`A029578(A333284(n+1)+A333282(n+1))`
-/

namespace A333283.P16306524868624924166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A333284 (n + 1) + A333282 (n + 1)).toNat

end

end A333283.P16306524868624924166

/-!
# A333284: Triangle read by rows: T(m,n) (m >= n >= 1) = number of vertices formed by drawing the line segments connecting any two of the (m+1) X (n+1) lattice points in an m X n grid of squares and extending them to the boundary of the grid.

The programs for A333284, there is no canonical definition to state claims against.
-/

/-! ## A333284.P10112804389042060727

`A333283(n+1)+1-A333282(n+1)`
-/

namespace A333284.P10112804389042060727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333283 (n + 1) + (1 - A333282 (n + 1))

end

end A333284.P10112804389042060727

/-! ## A333284.P4740300815939761689

`A141310(A333283(n+1)-A333282(n+1))`
-/

namespace A333284.P4740300815939761689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A333283 (n + 1) - A333282 (n + 1)).toNat

end

end A333284.P4740300815939761689

/-! ## A333284.P14016536821516739592

`A004442(A333283(n+1)-A333282(n+1))`
-/

namespace A333284.P14016536821516739592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A333283 (n + 1) - A333282 (n + 1)).toNat

end

end A333284.P14016536821516739592

/-! ## A333284.P16345903263530877924

`A020725(A333283(n+1)-A333282(n+1))`
-/

namespace A333284.P16345903263530877924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A333283 (n + 1) - A333282 (n + 1)).toNat

end

end A333284.P16345903263530877924

/-! ## A333284.P7851819961552527927

`A065475(A333283(n+1)-A333282(n+1))`
-/

namespace A333284.P7851819961552527927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A333283 (n + 1) - A333282 (n + 1)).toNat

end

end A333284.P7851819961552527927

/-!
# A333285: The main diagonal of the triangular array A333284.

The programs for A333285, there is no canonical definition to state claims against.
-/

/-! ## A333285.P4325922824538302751

`A333284(∑[n+1])`
-/

namespace A333285.P4325922824538302751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333285.P4325922824538302751

/-! ## A333285.P9602002039996032153

`record[A333284(A133825(n))]`
-/

namespace A333285.P9602002039996032153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333284 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333285.P9602002039996032153

/-! ## A333285.P3789563997075896295

`or(1, A333284(A025747(n)))`
-/

namespace A333285.P3789563997075896295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333284 (A025747 n).toNat)

end

end A333285.P3789563997075896295

/-!
# A333286: Triangle read by rows: consider a figure made up of a row of n congruent rectangles and the diagonals of all visible rectangles; T(n,k) (1 <= k <= n) is the number of triangular regions in the k-th rectangle.

The programs for A333286, there is no canonical definition to state claims against.
-/

/-! ## A333286.P16300529797647279753

`A333288(n+1)-A333287(n+1)`
-/

namespace A333286.P16300529797647279753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (n + 1) - A333287 (n + 1)

end

end A333286.P16300529797647279753

/-! ## A333286.P1144267282094161011

`A333288(n+1)+A057428(n)*A333287(n+1)`
-/

namespace A333286.P1144267282094161011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (n + 1) + A057428 n * A333287 (n + 1)

end

end A333286.P1144267282094161011

/-! ## A333286.P3507723402061678347

`A333288(A000027(n+1))+A001489(A333287(n+1))`
-/

namespace A333286.P3507723402061678347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A000027 (n + 1)).toNat + A001489 (A333287 (n + 1)).toNat

end

end A333286.P3507723402061678347

/-! ## A333286.P3597286094051026837

`A333288(A028310(n+1))+A001489(A333287(n+1))`
-/

namespace A333286.P3597286094051026837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A028310 (n + 1)).toNat + A001489 (A333287 (n + 1)).toNat

end

end A333286.P3597286094051026837

/-! ## A333286.P4038029792655677251

`A333288(A029579(2*n))+A001489(A333287(n+1))`
-/

namespace A333286.P4038029792655677251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A029579 (2 * n)).toNat + A001489 (A333287 (n + 1)).toNat

end

end A333286.P4038029792655677251

/-! ## A333286.P12315285403345619505

`A333288(A057428(n+1)+2+n)+A001489(A333287(n+1))`
-/

namespace A333286.P12315285403345619505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A057428 (n + 1) + 2 + (n : ℤ)).toNat + A001489 (A333287 (n + 1)).toNat

end

end A333286.P12315285403345619505

/-!
# A333287: Triangle read by rows: consider a figure made up of a row of n congruent rectangles and the diagonals of all visible rectangles; T(n,k) (1 <= k <= n) is the number of quadrilateral regions in the k-th rectangle.

The programs for A333287, there is no canonical definition to state claims against.
-/

/-! ## A333287.P8742075379013239922

`A333288(n+1)-A333286(n+1)`
-/

namespace A333287.P8742075379013239922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (n + 1) - A333286 (n + 1)

end

end A333287.P8742075379013239922

/-! ## A333287.P16987266120069225990

`A333288(A000027(n+1))+A001478(A333286(n+1))`
-/

namespace A333287.P16987266120069225990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A000027 (n + 1)).toNat + A001478 (A333286 (n + 1)).toNat

end

end A333287.P16987266120069225990

/-! ## A333287.P14818402346274788289

`A333288(A038722(n+1))+A001478(A333286(n+1))`
-/

namespace A333287.P14818402346274788289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A038722 (n + 1)).toNat + A001478 (A333286 (n + 1)).toNat

end

end A333287.P14818402346274788289

/-! ## A333287.P16696085360682761494

`A333288(A061579(n)+1)+A001478(A333286(n+1))`
-/

namespace A333287.P16696085360682761494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A061579 n + 1).toNat + A001478 (A333286 (n + 1)).toNat

end

end A333287.P16696085360682761494

/-! ## A333287.P7972230918799884027

`A333288(A060681(2*(n+1)))+A001478(A333286(n+1))`
-/

namespace A333287.P7972230918799884027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333288 (A060681 (2 * (n + 1))).toNat + A001478 (A333286 (n + 1)).toNat

end

end A333287.P7972230918799884027

/-!
# A333288: Triangle read by rows: consider a figure made up of a row of n congruent rectangles and the diagonals of all visible rectangles; T(n,k) (1 <= k <= n) is the number of regions in the k-th rectangle.

The programs for A333288, there is no canonical definition to state claims against.
-/

/-! ## A333288.P14798451082495148278

`A333287(n+1)+A333286(n+1)`
-/

namespace A333288.P14798451082495148278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333287 (n + 1) + A333286 (n + 1)

end

end A333288.P14798451082495148278

/-! ## A333288.P3264694418876220786

`A311342(A014430(n)^A131382(n+1))`
-/

namespace A333288.P3264694418876220786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311342 (SequenceMachineLib.roundAway ((A014430 n : ℚ) ^ (A131382 (n + 1) : ℤ))).toNat

end

end A333288.P3264694418876220786

/-! ## A333288.P14280681643107427560

`A311342(A014430(n)%A232786(n+1))`
-/

namespace A333288.P14280681643107427560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311342 (Int.tmod (A014430 n) (A232786 (n + 1))).toNat

end

end A333288.P14280681643107427560

/-! ## A333288.P11548334164601320332

`A311342(A131382(n+1)²²*A014430(n))`
-/

namespace A333288.P11548334164601320332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311342 ((A131382 (n + 1) ^ 2) ^ 2 * A014430 n).toNat

end

end A333288.P11548334164601320332

/-! ## A333288.P5931905712104431584

`A311342(A014430(n))%A333278(A000124(n))`
-/

namespace A333288.P5931905712104431584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311342 (A014430 n).toNat) (A333278 (A000124 n).toNat)

end

end A333288.P5931905712104431584

/-!
# A333289: Irregular triangle read by rows: coefficients a_{r,j} (r>=1, j>=0) arising from an expansion of the partition function.

The programs for A333289, there is no canonical definition to state claims against.
-/

/-! ## A333289.P732404664056510980

`Δ[Δ[A238468(A191590(n+2))]]`
-/

namespace A333289.P732404664056510980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (A191590 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333289.P732404664056510980

/-! ## A333289.P14099229172010759057

`Δ[A191336(record[A141530(n)])]`
-/

namespace A333289.P14099229172010759057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191336 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333289.P14099229172010759057

/-! ## A333289.P3487391455092458493

`Δ[A259024(∑[A094792(n)])]`
-/

namespace A333289.P3487391455092458493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333289.P3487391455092458493

/-! ## A333289.P6561067590663171353

`Δ[A099917(Δ[A122746(n)])]`
-/

namespace A333289.P6561067590663171353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099917 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333289.P6561067590663171353

/-! ## A333289.P12349725461083100519

`Δ[A191329(record[A195841(n+1)])]`
-/

namespace A333289.P12349725461083100519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333289.P12349725461083100519

/-!
# A333290: Irregular triangle read by rows: coefficients b_{r,j} (r>=1, j>=0) arising from an expansion of the partition function.

The programs for A333290, there is no canonical definition to state claims against.
-/

/-! ## A333290.P7757962820561681958

`A231599(n)%3`
-/

namespace A333290.P7757962820561681958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231599 n) 3

end

end A333290.P7757962820561681958

/-! ## A333290.P10914495367469717706

`A231599(xor(n, char[n!-1]))`
-/

namespace A333290.P10914495367469717706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (Nat.xor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A333290.P10914495367469717706

/-! ## A333290.P2008157919665192899

`A231599(or(n, char[∑[n]-2]))`
-/

namespace A333290.P2008157919665192899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (Nat.lor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A333290.P2008157919665192899

/-! ## A333290.P16396121721171865516

`A231599(gcd(char[n!-1]-n, n*char[2^n]))`
-/

namespace A333290.P16396121721171865516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (Int.gcd (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ)) ((n * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ))

end

end A333290.P16396121721171865516

/-! ## A333290.P17242580454025411167

`A231599(n*A178334(n))`
-/

namespace A333290.P17242580454025411167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 ((n : ℤ) * A178334 n).toNat

end

end A333290.P17242580454025411167

/-! ## A333290.P6010119356080346837

`A231599(n)^A178334(n)`
-/

namespace A333290.P6010119356080346837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231599 n : ℚ) ^ (A178334 n : ℤ)

end

end A333290.P6010119356080346837

/-! ## A333290.P5311507943572192723

`A231599(lcm(n, A178334(n)))`
-/

namespace A333290.P5311507943572192723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (Int.lcm (n : ℤ) (A178334 n))

end

end A333290.P5311507943572192723

/-! ## A333290.P6351629154867331345

`char[A008612(n)]*A231599(n)`
-/

namespace A333290.P6351629154867331345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231599 n

end

end A333290.P6351629154867331345

/-! ## A333290.P12860951770624881955

`A231599(n*char[A051162(n)])`
-/

namespace A333290.P12860951770624881955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A333290.P12860951770624881955

/-! ## A333290.P11635739205973660331

`char[A065361(n)]*A231599(n)`
-/

namespace A333290.P11635739205973660331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231599 n

end

end A333290.P11635739205973660331

/-! ## A333290.P2320853033567736139

`char[A294317(n)]*A231599(n)`
-/

namespace A333290.P2320853033567736139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231599 n

end

end A333290.P2320853033567736139

/-! ## A333290.P14318575270444281325

`or(char[A000108(n)], A231599(n))`
-/

namespace A333290.P14318575270444281325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P14318575270444281325

/-! ## A333290.P13143594295999882949

`or(char[A000142(n)], A231599(n))`
-/

namespace A333290.P13143594295999882949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P13143594295999882949

/-! ## A333290.P9776425348022513946

`or(char[A000230(n)], A231599(n))`
-/

namespace A333290.P9776425348022513946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P9776425348022513946

/-! ## A333290.P15199736782583644019

`or(char[A000244(n)], A231599(n))`
-/

namespace A333290.P15199736782583644019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P15199736782583644019

/-! ## A333290.P12331249607872215062

`or(char[A000295(n)], A231599(n))`
-/

namespace A333290.P12331249607872215062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P12331249607872215062

/-! ## A333290.P12647841376700563019

`or(char[A000326(n)], A231599(n))`
-/

namespace A333290.P12647841376700563019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P12647841376700563019

/-! ## A333290.P9128568623470395753

`or(char[A000578(n)], A231599(n))`
-/

namespace A333290.P9128568623470395753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A231599 n)

end

end A333290.P9128568623470395753

/-! ## A333290.P13798723656725391729

`A007318(∑{p}[n+1, gcd(n, #)])*A231599(n)`
-/

namespace A333290.P13798723656725391729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) * A231599 n

end

end A333290.P13798723656725391729

/-!
# A333291: a(n) = Sum_{i=1..n, gcd(i,n)=1} i*phi(i) where phi is Euler's totient function A000010.

The programs for A333291, there is no canonical definition to state claims against.
-/

/-! ## A333291.P14466418739677381806

`2*A307997(n+1)-1`
-/

namespace A333291.P14466418739677381806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307997 (n + 1) - 1

end

end A333291.P14466418739677381806

/-! ## A333291.P1362616460393852455

`A033999(A000265(n+1))+2*A307997(n+1)`
-/

namespace A333291.P1362616460393852455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000265 (n + 1)).toNat + 2 * A307997 (n + 1)

end

end A333291.P1362616460393852455

/-! ## A333291.P1622046274724410352

`A033999((n+2)^(n%2))+2*A307997(n+1)`
-/

namespace A333291.P1622046274724410352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n + 2) ^ (n % 2)) + 2 * A307997 (n + 1)

end

end A333291.P1622046274724410352

/-! ## A333291.P3264427042399605675

`A038535(A135517(4*n))+2*A307997(n+1)`
-/

namespace A333291.P3264427042399605675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038535 (A135517 (4 * n)).toNat + 2 * A307997 (n + 1)

end

end A333291.P3264427042399605675

/-! ## A333291.P4132782318134266591

`A008836(A002476(n+1))+2*A307997(n+1)`
-/

namespace A333291.P4132782318134266591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002476 (n + 1)).toNat + 2 * A307997 (n + 1)

end

end A333291.P4132782318134266591

/-! ## A333291.P17716390178631619122

`A033999(A349161(n+1))+2*A307997(n+1)`
-/

namespace A333291.P17716390178631619122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A349161 (n + 1)).toNat + 2 * A307997 (n + 1)

end

end A333291.P17716390178631619122

/-! ## A333291.P16599938935288718768

`A008836(A186280(n+1))+2*A307997(n+1)`
-/

namespace A333291.P16599938935288718768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A186280 (n + 1)).toNat + 2 * A307997 (n + 1)

end

end A333291.P16599938935288718768

/-! ## A333291.P7675354224899789151

`A008683(A142541(n+1))+2*A307997(n+1)`
-/

namespace A333291.P7675354224899789151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142541 (n + 1)).toNat + 2 * A307997 (n + 1)

end

end A333291.P7675354224899789151

/-! ## A333291.P5842415393443687416

`A000265(A307997(n+1)+A307997(n+1)-1)`
-/

namespace A333291.P5842415393443687416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A307997 (n + 1) + (A307997 (n + 1) - 1)).toNat

end

end A333291.P5842415393443687416

/-!
# A333293: a(n) = Sum_{k=1..n-1} k^2*phi(k) + n^2*phi(n)/2, where phi = A000010.

The programs for A333293, the canonical program `A333293.P15015957038887528182` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333293 has offset 2).

The definition of A333293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333293.P15015957038887528182

`(A319087(n+1)+A319087(n+2))/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A333293

/-- `(A319087(n+1)+A319087(n+2))/2` -/
def P15015957038887528182.Spec : Prop :=
  ∀ n, P15015957038887528182.a n = (A333293 (n + 2) : ℚ)

end A333293

/-! ## A333293.P10856545420594456533

`∑[A053191(n+1)]+A053191(n+2)/2`
-/

namespace A333293.P10856545420594456533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A053191 (n + 2) : ℚ) / 2

end

end A333293.P10856545420594456533

namespace A333293

/-- `∑[A053191(n+1)]+A053191(n+2)/2` -/
def P10856545420594456533.Spec : Prop :=
  ∀ n, P10856545420594456533.a n = (A333293 (n + 2) : ℚ)

end A333293

/-! ## A333293.P8851736525641449525

`A333292(∑[n+2])`
-/

namespace A333293.P8851736525641449525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333293.P8851736525641449525

namespace A333293

/-- `A333292(∑[n+2])` -/
def P8851736525641449525.Spec : Prop :=
  ∀ n, P8851736525641449525.a n = A333293 (n + 2)

end A333293

/-! ## A333293.P12626790995422987784

`record[A333292(A000096(A003602(n+1)))]`
-/

namespace A333293.P12626790995422987784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333292 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333293.P12626790995422987784

namespace A333293

/-- `record[A333292(A000096(A003602(n+1)))]` -/
def P12626790995422987784.Spec : Prop :=
  ∀ n, P12626790995422987784.a n = A333293 (n + 2)

end A333293

/-! ## A333293.P17303796272484442486

`record[A333292(A000096(A003963(n+1)))]`
-/

namespace A333293.P17303796272484442486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333292 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333293.P17303796272484442486

namespace A333293

/-- `record[A333292(A000096(A003963(n+1)))]` -/
def P17303796272484442486.Spec : Prop :=
  ∀ n, P17303796272484442486.a n = A333293 (n + 2)

end A333293

/-! ## A333293.P11752859585240430481

`record[A333292(A000096(A032742(n+1)))]`
-/

namespace A333293.P11752859585240430481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333292 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333293.P11752859585240430481

namespace A333293

/-- `record[A333292(A000096(A032742(n+1)))]` -/
def P11752859585240430481.Spec : Prop :=
  ∀ n, P11752859585240430481.a n = A333293 (n + 2)

end A333293

/-! ## A333293.P3920374586529168196

`record[A333292(A000096(A026238(n+2)))]`
-/

namespace A333293.P3920374586529168196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333292 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333293.P3920374586529168196

namespace A333293

/-- `record[A333292(A000096(A026238(n+2)))]` -/
def P3920374586529168196.Spec : Prop :=
  ∀ n, P3920374586529168196.a n = A333293 (n + 2)

end A333293

/-!
# A333294: Main diagonal of triangle in A333282.

The programs for A333294, there is no canonical definition to state claims against.
-/

/-! ## A333294.P12461991242704195142

`A333282(∑[n+1])`
-/

namespace A333294.P12461991242704195142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333282 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333294.P12461991242704195142

/-! ## A333294.P8910671491214597773

`lcm(2, A333282(C(n+2, 2)))`
-/

namespace A333294.P8910671491214597773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A333282 (Nat.choose (n + 2) 2))

end

end A333294.P8910671491214597773

/-! ## A333294.P17557074433516142063

`lcm(2, A333282(A025747(n)))`
-/

namespace A333294.P17557074433516142063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A333282 (A025747 n).toNat)

end

end A333294.P17557074433516142063

/-! ## A333294.P18033239001227273552

`record[A333282(abs(A145063(n)))]`
-/

namespace A333294.P18033239001227273552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333282 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333294.P18033239001227273552

/-! ## A333294.P121865275878707953

`record[A333282(A038722(n+1))]`
-/

namespace A333294.P121865275878707953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333282 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333294.P121865275878707953

/-!
# A333295: Triangle read by rows: T(m,n) = Sum_{1 <= i <= m, 1 <= j <= n, gcd{i,j}=1} 1, where m >= n >= 1.

The programs for A333295, there is no canonical definition to state claims against.
-/

/-! ## A333295.P8234164836263580299

`A135646(A245300(n)+1)`
-/

namespace A333295.P8234164836263580299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A245300 n + 1).toNat

end

end A333295.P8234164836263580299

/-! ## A333295.P14489501753623144235

`A049695(A245300(comp[∑[n]]))-1`
-/

namespace A333295.P14489501753623144235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat - 1

end

end A333295.P14489501753623144235

/-! ## A333295.P9665133607985053100

`A049687(A001283(n+2)-A193974(n))-2`
-/

namespace A333295.P9665133607985053100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A001283 (n + 2) - A193974 n).toNat - 2

end

end A333295.P9665133607985053100

/-! ## A333295.P16994879094326315387

`A300778(n+1)-2`
-/

namespace A333295.P16994879094326315387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300778 (n + 1) - 2

end

end A333295.P16994879094326315387

/-! ## A333295.P5338053681752278411

`A331781(comp[∑[n]]+1)`
-/

namespace A333295.P5338053681752278411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331781 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A333295.P5338053681752278411

/-! ## A333295.P3905975069381071437

`A023444(A300778(n+1))`
-/

namespace A333295.P3905975069381071437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A300778 (n + 1)).toNat

end

end A333295.P3905975069381071437

/-! ## A333295.P18226199177850123041

`A023448(A300778(n+1)+4)`
-/

namespace A333295.P18226199177850123041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A300778 (n + 1) + 4).toNat

end

end A333295.P18226199177850123041

/-! ## A333295.P12289114185550056389

`xor(1, xor(1, A331781(A080036(n+1))))`
-/

namespace A333295.P12289114185550056389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A331781 (A080036 (n + 1)).toNat))

end

end A333295.P12289114185550056389

/-! ## A333295.P12397639067763951606

`A331781(A007401(n+1)+2)%85`
-/

namespace A333295.P12397639067763951606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331781 (A007401 (n + 1) + 2).toNat) 85

end

end A333295.P12397639067763951606

/-! ## A333295.P16962886534900183486

`or(char[2], A331781(A014132(n+1)+1))`
-/

namespace A333295.P16962886534900183486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A331781 (A014132 (n + 1) + 1).toNat)

end

end A333295.P16962886534900183486

/-!
# A333296: Largest number of non-congruent integer-sided bricks that can be assembled into an n X n X n cube.

The programs for A333296, there is no canonical definition to state claims against.
-/

/-! ## A333296.P12954643340170288132

`∑[A124808(n)]^(1-char[1])`
-/

namespace A333296.P12954643340170288132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124808 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A333296.P12954643340170288132

/-! ## A333296.P18254509114043667366

`∑[A271490(n+1)]^floor(atan(n))`
-/

namespace A333296.P18254509114043667366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271490 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A333296.P18254509114043667366

/-! ## A333296.P11008718034214600261

`A061578(a(n-1))+1` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A333296.P11008718034214600261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A061578 (a (n - 1)).toNat + 1

end

end A333296.P11008718034214600261

/-! ## A333296.P11279831389003576980

`∑[A309082(n+1)]^(1-char[1])`
-/

namespace A333296.P11279831389003576980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309082 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A333296.P11279831389003576980

/-! ## A333296.P1343124361549803860

`∑[A095703(n)]%(or(1, n)+n^n)`
-/

namespace A333296.P1343124361549803860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.lor 1 n + n ^ n : ℤ)

end

end A333296.P1343124361549803860

/-!
# A333297: a(n) = Sum_{i=1..n, j=1..n, gcd(i,j)=1} i.

The programs for A333297, the canonical program `A333297.P31369607069577586` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333297 has offset 1).

The definition of A333297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333297.P31369607069577586

`a(n-1)+3*A023896(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333297

/-- `a(n-1)+3*A023896(n+1)` -/
def P31369607069577586.Spec : Prop :=
  ∀ n, P31369607069577586.a n = A333297 (n + 1)

theorem P31369607069577586.correct : P31369607069577586.Spec := by
  intro n
  simp only [A333297, Nat.add_sub_cancel]

end A333297

/-! ## A333297.P2212686776357001138

`3*A213544(n+1)-2`
-/

namespace A333297.P2212686776357001138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213544 (n + 1) - 2

end

end A333297.P2212686776357001138

namespace A333297

/-- `3*A213544(n+1)-2` -/
def P2212686776357001138.Spec : Prop :=
  ∀ n, P2212686776357001138.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P3279338392635097592

`∑[floor(A064400(n+1)/2)]`
-/

namespace A333297.P3279338392635097592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064400 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333297.P3279338392635097592

namespace A333297

/-- `∑[floor(A064400(n+1)/2)]` -/
def P3279338392635097592.Spec : Prop :=
  ∀ n, P3279338392635097592.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P14741337176026979620

`3*∑[A023896(n+1)]-2`
-/

namespace A333297.P14741337176026979620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A333297.P14741337176026979620

namespace A333297

/-- `3*∑[A023896(n+1)]-2` -/
def P14741337176026979620.Spec : Prop :=
  ∀ n, P14741337176026979620.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P13859908625289481662

`3*(A011755(n+1)+1)/2-2`
-/

namespace A333297.P13859908625289481662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A011755 (n + 1) + 1 : ℚ) / 2) - 2

end

end A333297.P13859908625289481662

namespace A333297

/-- `3*(A011755(n+1)+1)/2-2` -/
def P13859908625289481662.Spec : Prop :=
  ∀ n, P13859908625289481662.a n = (A333297 (n + 1) : ℚ)

end A333297

/-! ## A333297.P72536999612816760

`∑[A023896(n+1)*A122553(n)]`
-/

namespace A333297.P72536999612816760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) * A122553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333297.P72536999612816760

namespace A333297

/-- `∑[A023896(n+1)*A122553(n)]` -/
def P72536999612816760.Spec : Prop :=
  ∀ n, P72536999612816760.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P11348497813994584845

`A011755(n+1)+A213544(n+1)-1`
-/

namespace A333297.P11348497813994584845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011755 (n + 1) + (A213544 (n + 1) - 1)

end

end A333297.P11348497813994584845

namespace A333297

/-- `A011755(n+1)+A213544(n+1)-1` -/
def P11348497813994584845.Spec : Prop :=
  ∀ n, P11348497813994584845.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P9955271658266783080

`3*∑[ceil(A000010((n+1)²)/2)]-2`
-/

namespace A333297.P9955271658266783080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((n + 1) ^ 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A333297.P9955271658266783080

namespace A333297

/-- `3*∑[ceil(A000010((n+1)²)/2)]-2` -/
def P9955271658266783080.Spec : Prop :=
  ∀ n, P9955271658266783080.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P14137335226786334804

`A173467(A206350(n+2)-2)`
-/

namespace A333297.P14137335226786334804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173467 (A206350 (n + 2) - 2).toNat

end

end A333297.P14137335226786334804

namespace A333297

/-- `A173467(A206350(n+2)-2)` -/
def P14137335226786334804.Spec : Prop :=
  ∀ n, P14137335226786334804.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P6076958091827655885

`A173509(A206350(n+2)-2)`
-/

namespace A333297.P6076958091827655885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173509 (A206350 (n + 2) - 2).toNat

end

end A333297.P6076958091827655885

namespace A333297

/-- `A173509(A206350(n+2)-2)` -/
def P6076958091827655885.Spec : Prop :=
  ∀ n, P6076958091827655885.a n = A333297 (n + 1)

end A333297

/-! ## A333297.P4457847977330374142

`∑[A025480(A002618(n+1))+A002618(n+1)]`
-/

namespace A333297.P4457847977330374142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002618 (n + 1)).toNat + A002618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333297.P4457847977330374142

namespace A333297

/-- `∑[A025480(A002618(n+1))+A002618(n+1)]` -/
def P4457847977330374142.Spec : Prop :=
  ∀ n, P4457847977330374142.a n = A333297 (n + 1)

end A333297

/-!
# A333298: Number of canonical sequences of moves of length n for the Rubik cube puzzle using the half-turn metric.

The programs for A333298, the canonical program `A333298.P18341790025917198464` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333298 has offset 0).

The definition of A333298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333298.P18341790025917198464

`12*a(n-1)+18*a(n-2)` with `a(0)=1, a(1)=18, a(2)=243`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A333298

/-- `12*a(n-1)+18*a(n-2)` -/
def P18341790025917198464.Spec : Prop :=
  ∀ n, (P18341790025917198464.a n : ℤ) = A333298 n

theorem P18341790025917198464.correct : P18341790025917198464.Spec := by
  intro n
  simp only [A333298]

end A333298

/-! ## A333298.P13004623138681423803

`3^n*floor(A123348(n+1)/2)`
-/

namespace A333298.P13004623138681423803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊(A123348 (n + 1) : ℚ) / 2⌋

end

end A333298.P13004623138681423803

namespace A333298

/-- `3^n*floor(A123348(n+1)/2)` -/
def P13004623138681423803.Spec : Prop :=
  ∀ n, P13004623138681423803.a n = A333298 n

end A333298

