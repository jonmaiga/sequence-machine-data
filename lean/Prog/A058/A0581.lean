import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058102: McKay-Thompson series of class 10a for Monster.

The programs for A058102, there is no canonical definition to state claims against.
-/

/-! ## A058102.P4612341322658098069

`∑[A080057(∑[A001580(n)])]`
-/

namespace A058102.P4612341322658098069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080057 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058102.P4612341322658098069

/-!
# A058104: Number of asymmetric semigroups of order n.

The programs for A058104, there is no canonical definition to state claims against.
-/

/-! ## A058104.P6117339734247286565

`A079175(∑[∏{e}[n!, #+1]]-1)`
-/

namespace A058104.P6117339734247286565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A058104.P6117339734247286565

/-! ## A058104.P18196602754588363779

`A079175(∑[∑{d}[n!, gcd(11, #)]]-1)`
-/

namespace A058104.P18196602754588363779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 11 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A058104.P18196602754588363779

/-! ## A058104.P992980651135280459

`A079175(∑[A027423(n)]-1)`
-/

namespace A058104.P992980651135280459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A058104.P992980651135280459

/-! ## A058104.P10810980971050879969

`A079175(eq[1, A079210(n+1)])`
-/

namespace A058104.P10810980971050879969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058104.P10810980971050879969

/-! ## A058104.P7606541029753622610

`A079175(∑[A000005(n!)]-1)`
-/

namespace A058104.P7606541029753622610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079175 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A058104.P7606541029753622610

/-!
# A058105: Number of commutative asymmetric semigroups of order n.

The programs for A058105, there is no canonical definition to state claims against.
-/

/-! ## A058105.P18177503978054726739

`A079201(∑[A027423(n)]-1)`
-/

namespace A058105.P18177503978054726739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A058105.P18177503978054726739

/-! ## A058105.P7571437063525994173

`A079201(∑[A153823(n)]+n)`
-/

namespace A058105.P7571437063525994173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A058105.P7571437063525994173

/-! ## A058105.P9860284254165805163

`A079201(eq[1, A079210(n+1)])`
-/

namespace A058105.P9860284254165805163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058105.P9860284254165805163

/-! ## A058105.P11495268825762014519

`A079201(lt[A079210(n+1), 2])`
-/

namespace A058105.P11495268825762014519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A058105.P11495268825762014519

/-! ## A058105.P16431309196323807012

`A079201(∑[A000005(n!)]-1)`
-/

namespace A058105.P16431309196323807012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079201 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A058105.P16431309196323807012

/-!
# A058106: Number of self-converse asymmetric semigroups of order n.

The programs for A058106, there is no canonical definition to state claims against.
-/

/-! ## A058106.P6060464119028575354

`2*A058107(n)-A058104(n)`
-/

namespace A058106.P6060464119028575354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058107 n - A058104 n

end

end A058106.P6060464119028575354

/-! ## A058106.P10139619095856590943

`A330915(a(n-1)+2)-n` with `a(0)=1, a(1)=1`
-/

namespace A058106.P10139619095856590943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A330915 (a (n - 1) + 2).toNat - (n : ℤ)

end

end A058106.P10139619095856590943

/-!
# A058107: Number of asymmetric semigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058107, there is no canonical definition to state claims against.
-/

/-! ## A058107.P7761776144864993819

`(A058106(n)+A058104(n))/2`
-/

namespace A058107.P7761776144864993819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058106 n + A058104 n : ℚ) / 2

end

end A058107.P7761776144864993819

/-! ## A058107.P15694799870993833684

`A014682(A058106(n)+A058104(n))`
-/

namespace A058107.P15694799870993833684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058106 n + A058104 n).toNat

end

end A058107.P15694799870993833684

/-!
# A058108: Triangle read by rows: number of nonisomorphic semigroups of order n with k idempotents.

The programs for A058108, there is no canonical definition to state claims against.
-/

/-! ## A058108.P16358046893160465971

`2*A058123(n+1)-A058118(n+1)`
-/

namespace A058108.P16358046893160465971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058123 (n + 1) - A058118 (n + 1)

end

end A058108.P16358046893160465971

/-! ## A058108.P2064091389600592965

`A004277(A058123(n+1))-A058118(n+1)`
-/

namespace A058108.P2064091389600592965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058123 (n + 1)).toNat - A058118 (n + 1)

end

end A058108.P2064091389600592965

/-! ## A058108.P2789699306333866637

`A004275(A058123(n+1)+1)-A058118(n+1)`
-/

namespace A058108.P2789699306333866637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A058123 (n + 1) + 1).toNat - A058118 (n + 1)

end

end A058108.P2789699306333866637

/-!
# A058109: Semigroups of order n with 1 idempotent.

The programs for A058109, there is no canonical definition to state claims against.
-/

/-! ## A058109.P7630543991423753521

`A058108(∑[n]+1)`
-/

namespace A058109.P7630543991423753521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058109.P7630543991423753521

/-! ## A058109.P4574816012587043570

`record[char[C(n, 2)]*A058108(n+1)]`
-/

namespace A058109.P4574816012587043570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A058108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058109.P4574816012587043570

/-! ## A058109.P8773631455790039065

`record[A058108(A329854(n))]`
-/

namespace A058109.P8773631455790039065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058109.P8773631455790039065

/-!
# A058110: Semigroups of order n with 2 idempotents.

The programs for A058110, there is no canonical definition to state claims against.
-/

/-! ## A058110.P731152629003696244

`A058108(∑[n+1]+2)`
-/

namespace A058110.P731152629003696244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058110.P731152629003696244

/-!
# A058111: Number of semigroups of order n with 3 idempotents.

The programs for A058111, there is no canonical definition to state claims against.
-/

/-! ## A058111.P3605027735633858810

`A058108(∑[n+2]+4)`
-/

namespace A058111.P3605027735633858810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A058111.P3605027735633858810

/-!
# A058112: Number of isomorphism classes of idempotent semigroups of order n.

The programs for A058112, there is no canonical definition to state claims against.
-/

/-! ## A058112.P7455189452945726360

`A058108(∑[n]+floor(acot(n)))`
-/

namespace A058112.P7455189452945726360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A058112.P7455189452945726360

/-! ## A058112.P1754156337121471404

`A058108(or(floor(acot(n)), ∑[n]))`
-/

namespace A058112.P1754156337121471404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A058112.P1754156337121471404

/-! ## A058112.P8826385050196131130

`A058108(xor(floor(acot(n)), ∑[n]))`
-/

namespace A058112.P8826385050196131130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (Int.xor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A058112.P8826385050196131130

/-! ## A058112.P4210644544876971211

`A058108(gcd(C(n, n²), ∑[n]))`
-/

namespace A058112.P4210644544876971211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (Nat.gcd (Nat.choose n (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A058112.P4210644544876971211

/-! ## A058112.P1501967869646530575

`A058108(∑[n]^ceil(sin(n)²))`
-/

namespace A058112.P1501967869646530575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058108 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A058112.P1501967869646530575

/-!
# A058113: Triangle: Number of asymmetric semigroups of order n with k idempotents.

The programs for A058113, there is no canonical definition to state claims against.
-/

/-! ## A058113.P7633286635636958372

`2*A058170(n+1)-A058169(n+1)`
-/

namespace A058113.P7633286635636958372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058170 (n + 1) - A058169 (n + 1)

end

end A058113.P7633286635636958372

/-! ## A058113.P5176051404323034123

`A004277(A058170(n+1))-A058169(n+1)`
-/

namespace A058113.P5176051404323034123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058170 (n + 1)).toNat - A058169 (n + 1)

end

end A058113.P5176051404323034123

/-!
# A058114: Number of asymmetric semigroups of order n with 1 idempotent.

The programs for A058114, there is no canonical definition to state claims against.
-/

/-! ## A058114.P10317159092301610246

`A058113(∑[n]+1)`
-/

namespace A058114.P10317159092301610246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058114.P10317159092301610246

/-! ## A058114.P969522794145698625

`record[A058113(A047089(n))]`
-/

namespace A058114.P969522794145698625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058113 (A047089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058114.P969522794145698625

/-! ## A058114.P4229707503408719540

`record[A010054(n)*A058113(n+1)]`
-/

namespace A058114.P4229707503408719540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A058113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058114.P4229707503408719540

/-!
# A058115: Number of asymmetric idempotent semigroups of order n.

The programs for A058115, there is no canonical definition to state claims against.
-/

/-! ## A058115.P14754591266511100657

`A058113(∑[n]+floor(acot(n)))`
-/

namespace A058115.P14754591266511100657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058113 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A058115.P14754591266511100657

/-! ## A058115.P17958147809475235742

`A058113(∑[n]^floor(atan(n+1)))`
-/

namespace A058115.P17958147809475235742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058113 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat

end

end A058115.P17958147809475235742

/-! ## A058115.P17606506241073354429

`A058113(∑[n-a(1-char[1])])` with `a(0)=1`
-/

namespace A058115.P17606506241073354429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (1 - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058115.P17606506241073354429

/-! ## A058115.P15832927845889112439

`A058113(A028310(∑[n]))`
-/

namespace A058115.P15832927845889112439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058113 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A058115.P15832927845889112439

/-!
# A058117: Number of commutative semigroups of order n with 1 idempotent.

The programs for A058117, there is no canonical definition to state claims against.
-/

/-! ## A058117.P1457969081332395810

`A058116(∑[n]+1)`
-/

namespace A058117.P1457969081332395810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058116 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058117.P1457969081332395810

/-! ## A058117.P9196589954407526204

`record[A058116(A047089(n))]`
-/

namespace A058117.P9196589954407526204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058116 (A047089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058117.P9196589954407526204

/-! ## A058117.P12053395206729269223

`record[A058116(A091018(n+1))]`
-/

namespace A058117.P12053395206729269223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058116 (A091018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058117.P12053395206729269223

/-!
# A058118: Triangle: self-converse semigroups of order n with k idempotents.

The programs for A058118, there is no canonical definition to state claims against.
-/

/-! ## A058118.P4614806506343632003

`2*A058123(n+1)-A058108(n+1)`
-/

namespace A058118.P4614806506343632003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058123 (n + 1) - A058108 (n + 1)

end

end A058118.P4614806506343632003

/-! ## A058118.P7716210232262861631

`A004277(A058123(n+1))-A058108(n+1)`
-/

namespace A058118.P7716210232262861631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058123 (n + 1)).toNat - A058108 (n + 1)

end

end A058118.P7716210232262861631

/-! ## A058118.P1197831769641951905

`A004275(A058123(n+1)+1)-A058108(n+1)`
-/

namespace A058118.P1197831769641951905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A058123 (n + 1) + 1).toNat - A058108 (n + 1)

end

end A058118.P1197831769641951905

/-!
# A058119: Number of self-converse semigroups of order n with 1 idempotent.

The programs for A058119, there is no canonical definition to state claims against.
-/

/-! ## A058119.P15605114479073230533

`A058118(∑[n]+1)`
-/

namespace A058119.P15605114479073230533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A058119.P15605114479073230533

/-! ## A058119.P13673702286663571672

`record[A058118(A047089(n))]`
-/

namespace A058119.P13673702286663571672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058118 (A047089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058119.P13673702286663571672

/-! ## A058119.P2199029944071633871

`record[A058118(A329854(n))]`
-/

namespace A058119.P2199029944071633871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058118 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058119.P2199029944071633871

/-!
# A058120: Number of self-converse semigroups of order n with 2 idempotents.

The programs for A058120, there is no canonical definition to state claims against.
-/

/-! ## A058120.P7376103967648919154

`A058118(∑[n+1]+2)`
-/

namespace A058120.P7376103967648919154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058118 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058120.P7376103967648919154

/-!
# A058121: Number of self-converse semigroups of order n with 3 idempotents.

The programs for A058121, there is no canonical definition to state claims against.
-/

/-! ## A058121.P10567380119259713228

`A058118(∑[n+2]+4)`
-/

namespace A058121.P10567380119259713228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A058121.P10567380119259713228

/-!
# A058122: Number of self-converse idempotent semigroups of order n.

The programs for A058122, there is no canonical definition to state claims against.
-/

/-! ## A058122.P15837327520410628947

`round(sqrt(2*A177447(n)))`
-/

namespace A058122.P15837327520410628947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A177447 n : ℝ))

end

end A058122.P15837327520410628947

/-! ## A058122.P5287017809193789429

`A058118(∑[n]+floor(acot(n)))`
-/

namespace A058122.P5287017809193789429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058118 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A058122.P5287017809193789429

/-! ## A058122.P17558178958992944958

`ceil(A000598(n)^sqrt(3)/2)`
-/

namespace A058122.P17558178958992944958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000598 n : ℝ) ^ (Real.sqrt (3 : ℝ)) / 2⌉

end

end A058122.P17558178958992944958

/-! ## A058122.P14949678868195144799

`A164087(floor(3^(n²/10)))`
-/

namespace A058122.P14949678868195144799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164087 ⌊(3 : ℝ) ^ ((n ^ 2 : ℚ) / 10 : ℝ)⌋.toNat

end

end A058122.P14949678868195144799

/-!
# A058123: Triangle read by rows: semigroups of order n with k idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058123, there is no canonical definition to state claims against.
-/

/-! ## A058123.P10292917709421827946

`(A058118(n+1)+A058108(n+1))/2`
-/

namespace A058123.P10292917709421827946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058118 (n + 1) + A058108 (n + 1) : ℚ) / 2

end

end A058123.P10292917709421827946

/-! ## A058123.P6215990547863709984

`A001281(A058118(n+1)+A058108(n+1))`
-/

namespace A058123.P6215990547863709984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058118 (n + 1) + A058108 (n + 1)).toNat

end

end A058123.P6215990547863709984

/-! ## A058123.P8416348372896888661

`A004525(A058118(n+1)+A058108(n+1))`
-/

namespace A058123.P8416348372896888661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A058118 (n + 1) + A058108 (n + 1)).toNat

end

end A058123.P8416348372896888661

/-! ## A058123.P7974507684553363036

`A004526(A058118(n+1)+A058108(n+1))`
-/

namespace A058123.P7974507684553363036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058118 (n + 1) + A058108 (n + 1)).toNat

end

end A058123.P7974507684553363036

/-! ## A058123.P5972225599946841311

`A014682(A058118(n+1)+A058108(n+1))`
-/

namespace A058123.P5972225599946841311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058118 (n + 1) + A058108 (n + 1)).toNat

end

end A058123.P5972225599946841311

/-!
# A058126: a(n) = n^n - n^2 with 0^0=1.

The programs for A058126, the canonical program `A058126.P4235448328044539446` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058126 has offset 0).

The definition of A058126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n²` (program `A058126.P4235448328044539446`, by `A058126.P4235448328044539446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058126.P4235448328044539446

`n^n-n²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058126

/-- `n^n-n²` -/
def P4235448328044539446.Spec : Prop :=
  ∀ n, P4235448328044539446.a n = A058126 n

theorem P4235448328044539446.correct : P4235448328044539446.Spec := by
  intro n
  simp only [A058126]

end A058126

/-! ## A058126.P9706295723217835733

`abs(n^gcd(2, 4*n)-n^n)`
-/

namespace A058126.P9706295723217835733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ Nat.gcd 2 (4 * n) : ℤ) - (n ^ n : ℤ)|

end

end A058126.P9706295723217835733

namespace A058126

/-- `abs(n^gcd(2, 4*n)-n^n)` -/
def P9706295723217835733.Spec : Prop :=
  ∀ n, P9706295723217835733.a n = A058126 n

end A058126

/-! ## A058126.P18420827299779937856

`abs(n²-A000312(n))`
-/

namespace A058126.P18420827299779937856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000312 n|

end

end A058126.P18420827299779937856

namespace A058126

/-- `abs(n²-A000312(n))` -/
def P18420827299779937856.Spec : Prop :=
  ∀ n, P18420827299779937856.a n = A058126 n

end A058126

/-! ## A058126.P5345288980072182656

`abs(n²+n-A066068(n))`
-/

namespace A058126.P5345288980072182656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 + n : ℤ) - A066068 n|

end

end A058126.P5345288980072182656

namespace A058126

/-- `abs(n²+n-A066068(n))` -/
def P5345288980072182656.Spec : Prop :=
  ∀ n, P5345288980072182656.a n = A058126 n

end A058126

/-! ## A058126.P8914109602442928732

`abs(A000312(n)-∑[A004273(n)])`
-/

namespace A058126.P8914109602442928732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A058126.P8914109602442928732

namespace A058126

/-- `abs(A000312(n)-∑[A004273(n)])` -/
def P8914109602442928732.Spec : Prop :=
  ∀ n, P8914109602442928732.a n = A058126 n

end A058126

/-!
# A058127: Triangle read by rows: T(j,k) is the number of acyclic functions from {1,...,j} to {1,...,k}. For n >= 1, a(n) = (k-j)*k^(j-1), where k is such that C(k,2) < n <= C(k+1,2) and j = (n-1) mod C(k,2). Alternatively, table T(k,j) read by antidiagonals with k >= 1, 0 <= j <= k: T(k,j) = number of acyclic-function digraphs on k vertices with j vertices of outdegree 1 and (k-j) vertices of outdegree 0; T(k,j) = (k-j)*k^(j-1).

The programs for A058127, the canonical program `A058127.P15766242739215835102` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058127 has offset 1).

The definition of A058127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058127.P15766242739215835102

`(row(n)+1-col(n))*(row(n)+1)^(col(n)-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058127

/-- `(row(n)+1-col(n))*(row(n)+1)^(col(n)-1)` -/
def P15766242739215835102.Spec : Prop :=
  ∀ n, P15766242739215835102.a n = (A058127 (n + 1) : ℚ)

end A058127

/-! ## A058127.P5154211629077519566

`A002024(n+1)^(A002260(n+1)-2)*A004736(n+1)`
-/

namespace A058127.P5154211629077519566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) - 2 : ℤ) * (A004736 (n + 1) : ℚ)

end

end A058127.P5154211629077519566

namespace A058127

/-- `A002024(n+1)^(A002260(n+1)-2)*A004736(n+1)` -/
def P5154211629077519566.Spec : Prop :=
  ∀ n, P5154211629077519566.a n = (A058127 (n + 1) : ℚ)

end A058127

/-! ## A058127.P2897853871270737279

`A395611(n)/A007318(n)`
-/

namespace A058127.P2897853871270737279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395611 n : ℚ) / (A007318 n : ℚ)

end

end A058127.P2897853871270737279

namespace A058127

/-- `A395611(n)/A007318(n)` -/
def P2897853871270737279.Spec : Prop :=
  ∀ n, P2897853871270737279.a n = (A058127 (n + 1) : ℚ)

end A058127

/-! ## A058127.P11432482762697874929

`A122525(n+1)/A094587(n)`
-/

namespace A058127.P11432482762697874929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (n + 1) : ℚ) / (A094587 n : ℚ)

end

end A058127.P11432482762697874929

namespace A058127

/-- `A122525(n+1)/A094587(n)` -/
def P11432482762697874929.Spec : Prop :=
  ∀ n, P11432482762697874929.a n = (A058127 (n + 1) : ℚ)

end A058127

/-! ## A058127.P16869242131802271834

`A232006(A014132(A038722(n+1)))`
-/

namespace A058127.P16869242131802271834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A058127.P16869242131802271834

namespace A058127

/-- `A232006(A014132(A038722(n+1)))` -/
def P16869242131802271834.Spec : Prop :=
  ∀ n, P16869242131802271834.a n = A058127 (n + 1)

end A058127

/-! ## A058127.P16718593015688838044

`A232006(A061579(A007401(n+1)))`
-/

namespace A058127.P16718593015688838044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A061579 (A007401 (n + 1)).toNat).toNat

end

end A058127.P16718593015688838044

namespace A058127

/-- `A232006(A061579(A007401(n+1)))` -/
def P16718593015688838044.Spec : Prop :=
  ∀ n, P16718593015688838044.a n = A058127 (n + 1)

end A058127

/-! ## A058127.P16612738066457445379

`A232006(A038722(n+1)+A002024(n+1))`
-/

namespace A058127.P16612738066457445379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A058127.P16612738066457445379

namespace A058127

/-- `A232006(A038722(n+1)+A002024(n+1))` -/
def P16612738066457445379.Spec : Prop :=
  ∀ n, P16612738066457445379.a n = A058127 (n + 1)

end A058127

/-! ## A058127.P8677791576164532793

`A139526(n+2)/A074909(n)`
-/

namespace A058127.P8677791576164532793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139526 (n + 2) : ℚ) / (A074909 n : ℚ)

end

end A058127.P8677791576164532793

namespace A058127

/-- `A139526(n+2)/A074909(n)` -/
def P8677791576164532793.Spec : Prop :=
  ∀ n, P8677791576164532793.a n = (A058127 (n + 1) : ℚ)

end A058127

/-!
# A058128: a(1) = 1, a(n) = (n^n-n)/(n-1)^2 for n >= 2.

The programs for A058128, there is no canonical definition to state claims against.
-/

/-! ## A058128.P11882073380417475317

`∑{#}[n, (#+1)*(n+1)^(n-#-1)]`
-/

namespace A058128.P11882073380417475317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ)

end

end A058128.P11882073380417475317

/-! ## A058128.P8992920747144225927

`A023811(n+1)+1`
-/

namespace A058128.P8992920747144225927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023811 (n + 1) + 1

end

end A058128.P8992920747144225927

/-! ## A058128.P14301986189047823096

`A060073(A028310(n)+1)+A060072(n+1)`
-/

namespace A058128.P14301986189047823096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060073 (A028310 n + 1).toNat + A060072 (n + 1)

end

end A058128.P14301986189047823096

/-! ## A058128.P12776351995221614978

`A062805(n+1)/(n+1)`
-/

namespace A058128.P12776351995221614978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062805 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058128.P12776351995221614978

/-! ## A058128.P14774522468373127647

`A062808(n+1)/(n+1)+1`
-/

namespace A058128.P14774522468373127647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062808 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A058128.P14774522468373127647

/-! ## A058128.P1221781340446632966

`A062805(n+1)+1-A023037(n+1)`
-/

namespace A058128.P1221781340446632966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062805 (n + 1) + (1 - A023037 (n + 1))

end

end A058128.P1221781340446632966

/-! ## A058128.P10891132783546623969

`A347274(n+1)/((n+1)*(n+1))`
-/

namespace A058128.P10891132783546623969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347274 (n + 1) : ℚ) / ((n + 1) * (n + 1) : ℚ)

end

end A058128.P10891132783546623969

/-! ## A058128.P36346325703340976

`(n+1)^(n+1)-A062813(n+1)`
-/

namespace A058128.P36346325703340976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A062813 (n + 1)

end

end A058128.P36346325703340976

/-! ## A058128.P13724570142885604717

`A031973(n+1)-A068475(n+1)`
-/

namespace A058128.P13724570142885604717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 (n + 1) - A068475 (n + 1)

end

end A058128.P13724570142885604717

/-! ## A058128.P15225228805349136982

`A031972(n+1)+1-A068475(n+1)`
-/

namespace A058128.P15225228805349136982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 (n + 1) + (1 - A068475 (n + 1))

end

end A058128.P15225228805349136982

/-!
# A058129: Number of nonisomorphic monoids (semigroups with identity) of order n.

The programs for A058129, there is no canonical definition to state claims against.
-/

/-! ## A058129.P1120656837808125241

`2*A058133(n)-A058132(n)`
-/

namespace A058129.P1120656837808125241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058133 n - A058132 n

end

end A058129.P1120656837808125241

/-! ## A058129.P1728341773322173661

`A320420(n)+A000001(n)`
-/

namespace A058129.P1728341773322173661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320420 n + A000001 n

end

end A058129.P1728341773322173661

/-! ## A058129.P8777100994005369814

`A027851(n)-A318987(n)`
-/

namespace A058129.P8777100994005369814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - A318987 n

end

end A058129.P8777100994005369814

/-! ## A058129.P4180942417131921530

`A320420(n)+sqrt(A297420(n))`
-/

namespace A058129.P4180942417131921530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A320420 n : ℝ) + Real.sqrt (A297420 n : ℝ)

end

end A058129.P4180942417131921530

/-! ## A058129.P1704972837455076684

`A027851(n)%A318987(A254667(n))`
-/

namespace A058129.P1704972837455076684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027851 n) (A318987 (A254667 n).toNat)

end

end A058129.P1704972837455076684

/-!
# A058130: Number of asymmetric monoids (semigroups with identity) of order n.

The programs for A058130, there is no canonical definition to state claims against.
-/

/-! ## A058130.P13038279029177143688

`2*A058136(n+1)-A058135(n+1)`
-/

namespace A058130.P13038279029177143688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058136 (n + 1) - A058135 (n + 1)

end

end A058130.P13038279029177143688

/-! ## A058130.P11590835209042879056

`A082315(∑[A015473(n)]+1)`
-/

namespace A058130.P11590835209042879056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A058130.P11590835209042879056

/-!
# A058131: Number of isomorphism classes of commutative monoids (commutative semigroups with identity) of order n.

The programs for A058131, there is no canonical definition to state claims against.
-/

/-! ## A058131.P2628947934203266563

`A261231(n*A295370(n))`
-/

namespace A058131.P2628947934203266563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 ((n : ℤ) * A295370 n).toNat

end

end A058131.P2628947934203266563

/-!
# A058132: Number of self-converse monoids (semigroups with identity) of order n.

The programs for A058132, there is no canonical definition to state claims against.
-/

/-! ## A058132.P11855102996285794961

`A058133(n)*2-A058129(n)`
-/

namespace A058132.P11855102996285794961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 n * 2 - A058129 n

end

end A058132.P11855102996285794961

/-! ## A058132.P168052500402960627

`2*A058133(n)-A058129(n)`
-/

namespace A058132.P168052500402960627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058133 n - A058129 n

end

end A058132.P168052500402960627

/-! ## A058132.P15313374198069342736

`2*A058133(n)-(A320420(n)+A000001(n))`
-/

namespace A058132.P15313374198069342736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058133 n - (A320420 n + A000001 n)

end

end A058132.P15313374198069342736

/-! ## A058132.P15686863755121460499

`2*A058133(n)-(A027851(n)-A318987(n))`
-/

namespace A058132.P15686863755121460499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058133 n - (A027851 n - A318987 n)

end

end A058132.P15686863755121460499

/-!
# A058133: Number of monoids (semigroups with identity) of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058133, there is no canonical definition to state claims against.
-/

/-! ## A058133.P14245182830926745051

`(A058129(n)+A058132(n))/2`
-/

namespace A058133.P14245182830926745051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058129 n + A058132 n : ℚ) / 2

end

end A058133.P14245182830926745051

/-! ## A058133.P7067927955363798091

`(A058132(n)+A320420(n)+A000001(n))/2`
-/

namespace A058133.P7067927955363798091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058132 n + (A320420 n + A000001 n) : ℚ) / 2

end

end A058133.P7067927955363798091

/-! ## A058133.P2030125847681008273

`(A058132(n)+A027851(n)-A318987(n))/2`
-/

namespace A058133.P2030125847681008273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058132 n + (A027851 n - A318987 n) : ℚ) / 2

end

end A058133.P2030125847681008273

/-! ## A058133.P11364600478199567335

`(A058132(n)+A027851(n)%A318987(A254667(n)))/2`
-/

namespace A058133.P11364600478199567335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058132 n + Int.tmod (A027851 n) (A318987 (A254667 n).toNat) : ℚ) / 2

end

end A058133.P11364600478199567335

/-!
# A058134: Number of asymmetric commutative monoids (semigroups with identity) of order n.

The programs for A058134, there is no canonical definition to state claims against.
-/

/-! ## A058134.P870870222113976231

`A000607(A000577(n+1))+∏[n!%2+n]`
-/

namespace A058134.P870870222113976231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A000577 (n + 1)).toNat + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A058134.P870870222113976231

/-! ## A058134.P3558867749518671844

`∑{d}[n+1, A207386(#-1)*A294726((n+1)/#-1)]`
-/

namespace A058134.P3558867749518671844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A207386 (d - 1) * A294726 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A058134.P3558867749518671844

/-! ## A058134.P920486966455665184

`A111139(n)+A001858(A000009(n))`
-/

namespace A058134.P920486966455665184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111139 n + A001858 (A000009 n).toNat

end

end A058134.P920486966455665184

/-!
# A058135: Number of asymmetric self-converse monoids (semigroups with identity) of order n.

The programs for A058135, there is no canonical definition to state claims against.
-/

/-! ## A058135.P8491919517247111247

`2*A058136(n+1)-A058130(n+1)`
-/

namespace A058135.P8491919517247111247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058136 (n + 1) - A058130 (n + 1)

end

end A058135.P8491919517247111247

/-! ## A058135.P14824729862955959750

`A345750(n)+A000720(A084708(n+1))`
-/

namespace A058135.P14824729862955959750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345750 n + A000720 (A084708 (n + 1)).toNat

end

end A058135.P14824729862955959750

/-!
# A058136: Number of asymmetric monoids (semigroups with identity) of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058136, there is no canonical definition to state claims against.
-/

/-! ## A058136.P9688181666693402079

`(A058135(n+1)+A058130(n+1))/2`
-/

namespace A058136.P9688181666693402079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058135 (n + 1) + A058130 (n + 1) : ℚ) / 2

end

end A058136.P9688181666693402079

/-! ## A058136.P1072087290841154200

`A014682(A058135(n+1)+A058130(n+1))`
-/

namespace A058136.P1072087290841154200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058135 (n + 1) + A058130 (n + 1)).toNat

end

end A058136.P1072087290841154200

/-!
# A058137: Triangle read by rows: monoids of order n with k idempotents.

The programs for A058137, there is no canonical definition to state claims against.
-/

/-! ## A058137.P5014782917061808774

`2*A058147(n+1)-A058144(n+1)`
-/

namespace A058137.P5014782917061808774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058147 (n + 1) - A058144 (n + 1)

end

end A058137.P5014782917061808774

/-! ## A058137.P2683442208825366677

`A004277(A058147(n+1))-A058144(n+1)`
-/

namespace A058137.P2683442208825366677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058147 (n + 1)).toNat - A058144 (n + 1)

end

end A058137.P2683442208825366677

/-!
# A058138: Monoids of order n with 2 idempotents.

The programs for A058138, there is no canonical definition to state claims against.
-/

/-! ## A058138.P895325769717859119

`A058137(∑[n+1]+2)`
-/

namespace A058138.P895325769717859119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058138.P895325769717859119

/-!
# A058139: Monoids of order n with 3 idempotents.

The programs for A058139, there is no canonical definition to state claims against.
-/

/-! ## A058139.P7639922886506818614

`A058137(∑[n+2]+4)`
-/

namespace A058139.P7639922886506818614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A058139.P7639922886506818614

/-!
# A058140: Triangle read by rows: number of asymmetric monoids of order n with k idempotents.

The programs for A058140, there is no canonical definition to state claims against.
-/

/-! ## A058140.P2025715140221396563

`2*A058152(n+1)-A058151(n+1)`
-/

namespace A058140.P2025715140221396563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058152 (n + 1) - A058151 (n + 1)

end

end A058140.P2025715140221396563

/-! ## A058140.P8112154925667390440

`A005843(A058152(n+1))-A058151(n+1)`
-/

namespace A058140.P8112154925667390440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A058152 (n + 1)).toNat - A058151 (n + 1)

end

end A058140.P8112154925667390440

/-!
# A058141: Number of asymmetric monoids of order n with 2 idempotents.

The programs for A058141, there is no canonical definition to state claims against.
-/

/-! ## A058141.P12055801078943473000

`A058140(∑[n+1]+2)`
-/

namespace A058141.P12055801078943473000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058140 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058141.P12055801078943473000

/-!
# A058143: Number of commutative monoids of order n with 2 idempotents.

The programs for A058143, there is no canonical definition to state claims against.
-/

/-! ## A058143.P15509971429973069143

`A058142(∑[n+1]+2)`
-/

namespace A058143.P15509971429973069143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058143.P15509971429973069143

/-! ## A058143.P13574519246637763167

`record[A058142(A160791(n)+2)]`
-/

namespace A058143.P13574519246637763167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (A160791 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058143.P13574519246637763167

/-! ## A058143.P3376192334261493907

`record[A058142(record[A195083(n+1)])]`
-/

namespace A058143.P3376192334261493907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058143.P3376192334261493907

/-! ## A058143.P7886928106131126933

`A058142(A133263(n+1))+char[10]`
-/

namespace A058143.P7886928106131126933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A058143.P7886928106131126933

/-! ## A058143.P11063765424549145201

`record[A058142(n+1)/A008327(n)]`
-/

namespace A058143.P11063765424549145201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058142 (n + 1) : ℚ) / (A008327 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058143.P11063765424549145201

/-!
# A058144: Triangle: Number of self-converse monoids of order n with k idempotents.

The programs for A058144, there is no canonical definition to state claims against.
-/

/-! ## A058144.P12418107484549373395

`2*A058147(n+1)-A058137(n+1)`
-/

namespace A058144.P12418107484549373395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058147 (n + 1) - A058137 (n + 1)

end

end A058144.P12418107484549373395

/-! ## A058144.P10530805274791625160

`A004277(A058147(n+1))-A058137(n+1)`
-/

namespace A058144.P10530805274791625160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058147 (n + 1)).toNat - A058137 (n + 1)

end

end A058144.P10530805274791625160

/-!
# A058145: Number of self-converse monoids of order n with 2 idempotents.

The programs for A058145, there is no canonical definition to state claims against.
-/

/-! ## A058145.P17655834252776684518

`A058144(∑[n+1]+2)`
-/

namespace A058145.P17655834252776684518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058144 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058145.P17655834252776684518

/-!
# A058146: Number of self-converse monoids of order n with 3 idempotents.

The programs for A058146, there is no canonical definition to state claims against.
-/

/-! ## A058146.P2596760088179080228

`A058144(∑[n+2]+4)`
-/

namespace A058146.P2596760088179080228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058144 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A058146.P2596760088179080228

/-!
# A058147: Triangle read by rows: number of monoids of order n with k idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058147, there is no canonical definition to state claims against.
-/

/-! ## A058147.P1635336041606043366

`(A058144(n+1)+A058137(n+1))/2`
-/

namespace A058147.P1635336041606043366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058144 (n + 1) + A058137 (n + 1) : ℚ) / 2

end

end A058147.P1635336041606043366

/-! ## A058147.P7962759775654756589

`A001281(A058144(n+1)+A058137(n+1))`
-/

namespace A058147.P7962759775654756589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058144 (n + 1) + A058137 (n + 1)).toNat

end

end A058147.P7962759775654756589

/-! ## A058147.P12454156150431724981

`A004525(A058144(n+1)+A058137(n+1))`
-/

namespace A058147.P12454156150431724981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A058144 (n + 1) + A058137 (n + 1)).toNat

end

end A058147.P12454156150431724981

/-! ## A058147.P16299380842549298504

`A004526(A058144(n+1)+A058137(n+1))`
-/

namespace A058147.P16299380842549298504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058144 (n + 1) + A058137 (n + 1)).toNat

end

end A058147.P16299380842549298504

/-! ## A058147.P562554211670991894

`A014682(A058144(n+1)+A058137(n+1))`
-/

namespace A058147.P562554211670991894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058144 (n + 1) + A058137 (n + 1)).toNat

end

end A058147.P562554211670991894

/-!
# A058148: Monoids of order n with 2 idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058148, there is no canonical definition to state claims against.
-/

/-! ## A058148.P5299262124565514284

`A058147(∑[n+1]+2)`
-/

namespace A058148.P5299262124565514284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058147 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A058148.P5299262124565514284

/-!
# A058149: Monoids of order n with 3 idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058149, there is no canonical definition to state claims against.
-/

/-! ## A058149.P5016286892779143403

`A058147(∑[n+2]+4)`
-/

namespace A058149.P5016286892779143403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058147 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A058149.P5016286892779143403

/-!
# A058150: Triangle: Number of asymmetric commutative monoids of order n with k idempotents.

The programs for A058150, there is no canonical definition to state claims against.
-/

/-! ## A058150.P7546775309205032456

`A058151(n+1)-A343030(A058140(n+1)²)`
-/

namespace A058150.P7546775309205032456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058151 (n + 1) - A343030 (A058140 (n + 1) ^ 2).toNat

end

end A058150.P7546775309205032456

/-!
# A058151: Triangle: Number of asymmetric self-converse monoids of order n with k idempotents.

The programs for A058151, there is no canonical definition to state claims against.
-/

/-! ## A058151.P7949176466620593382

`2*A058152(n+1)-A058140(n+1)`
-/

namespace A058151.P7949176466620593382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058152 (n + 1) - A058140 (n + 1)

end

end A058151.P7949176466620593382

/-! ## A058151.P13942659284859355672

`A005843(A058152(n+1))-A058140(n+1)`
-/

namespace A058151.P13942659284859355672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A058152 (n + 1)).toNat - A058140 (n + 1)

end

end A058151.P13942659284859355672

/-! ## A058151.P15601354692650747933

`A343030(A058140(n+1)²)+A058150(n+1)`
-/

namespace A058151.P15601354692650747933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A058140 (n + 1) ^ 2).toNat + A058150 (n + 1)

end

end A058151.P15601354692650747933

/-!
# A058152: Triangle: Number of asymmetric monoids of order n with k idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058152, there is no canonical definition to state claims against.
-/

/-! ## A058152.P8826434065498821204

`(A058151(n+1)+A058140(n+1))/2`
-/

namespace A058152.P8826434065498821204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058151 (n + 1) + A058140 (n + 1) : ℚ) / 2

end

end A058152.P8826434065498821204

/-! ## A058152.P15492599428582991167

`A001281(A058151(n+1)+A058140(n+1))`
-/

namespace A058152.P15492599428582991167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058151 (n + 1) + A058140 (n + 1)).toNat

end

end A058152.P15492599428582991167

/-! ## A058152.P5911567456772249571

`A004525(A058151(n+1)+A058140(n+1))`
-/

namespace A058152.P5911567456772249571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A058151 (n + 1) + A058140 (n + 1)).toNat

end

end A058152.P5911567456772249571

/-! ## A058152.P16018846468019992978

`A004526(A058151(n+1)+A058140(n+1))`
-/

namespace A058152.P16018846468019992978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058151 (n + 1) + A058140 (n + 1)).toNat

end

end A058152.P16018846468019992978

/-! ## A058152.P6140448615926892259

`A014682(A058151(n+1)+A058140(n+1))`
-/

namespace A058152.P6140448615926892259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058151 (n + 1) + A058140 (n + 1)).toNat

end

end A058152.P6140448615926892259

/-!
# A058153: Number of labeled monoids of order n.

The programs for A058153, there is no canonical definition to state claims against.
-/

/-! ## A058153.P6041587776755899506

`(n+1)*A058154(A004709(n+1))`
-/

namespace A058153.P6041587776755899506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058154 (A004709 (n + 1)).toNat

end

end A058153.P6041587776755899506

/-! ## A058153.P16818413408084466904

`(n+1)*A058154(A240466(n+1))`
-/

namespace A058153.P16818413408084466904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058154 (A240466 (n + 1)).toNat

end

end A058153.P16818413408084466904

/-! ## A058153.P5230090851298346615

`(n+1)*A058154(A303368(n+1))`
-/

namespace A058153.P5230090851298346615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058154 (A303368 (n + 1)).toNat

end

end A058153.P5230090851298346615

/-!
# A058154: Number of labeled monoids of order n with a fixed identity.

The programs for A058154, there is no canonical definition to state claims against.
-/

/-! ## A058154.P18126945279150811230

`A058153(A004709(n+1))/(n+1)`
-/

namespace A058154.P18126945279150811230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058153 (A004709 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A058154.P18126945279150811230

/-! ## A058154.P5274191893425187865

`A058153(A060527(n+1))/(n+1)`
-/

namespace A058154.P5274191893425187865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058153 (A060527 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A058154.P5274191893425187865

/-! ## A058154.P12708506189215041292

`A058153(A191737(n+1))/(n+1)`
-/

namespace A058154.P12708506189215041292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058153 (A191737 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A058154.P12708506189215041292

/-!
# A058155: Number of labeled commutative monoids of order n.

The programs for A058155, there is no canonical definition to state claims against.
-/

/-! ## A058155.P1575987426752913793

`A058156(n+1)*(n+1)`
-/

namespace A058155.P1575987426752913793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058156 (n + 1) * (n + 1 : ℤ)

end

end A058155.P1575987426752913793

/-! ## A058155.P127151900224573436

`(n+1)*A058156(n+1)`
-/

namespace A058155.P127151900224573436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058156 (n + 1)

end

end A058155.P127151900224573436

/-!
# A058156: Number of labeled commutative monoids of order n with a fixed identity.

The programs for A058156, there is no canonical definition to state claims against.
-/

/-! ## A058156.P17846845730261722493

`A058155(n+1)/(n+1)`
-/

namespace A058156.P17846845730261722493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058155 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058156.P17846845730261722493

/-!
# A058157: Triangle read by rows: T(n,k) is the number of labeled monoids of order n with k idempotents.

The programs for A058157, there is no canonical definition to state claims against.
-/

/-! ## A058157.P5427528976887234425

`∑[char[∑[n]]]*A058158(n+1)`
-/

namespace A058157.P5427528976887234425
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A058158 (n + 1)

end

end A058157.P5427528976887234425

/-! ## A058157.P11501987657358549020

`A058158(n+1)*A002024(n+1)`
-/

namespace A058157.P11501987657358549020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058158 (n + 1) * A002024 (n + 1)

end

end A058157.P11501987657358549020

/-! ## A058157.P7876222793959032331

`A058158(n+1)*A113764(n+1)`
-/

namespace A058157.P7876222793959032331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058158 (n + 1) * A113764 (n + 1)

end

end A058157.P7876222793959032331

/-! ## A058157.P9390610824609783064

`A058158(n+1)*A123578(n+1)`
-/

namespace A058157.P9390610824609783064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058158 (n + 1) * A123578 (n + 1)

end

end A058157.P9390610824609783064

/-! ## A058157.P14305943189788382923

`A058158(n+1)*A130146(n+1)`
-/

namespace A058157.P14305943189788382923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058158 (n + 1) * A130146 (n + 1)

end

end A058157.P14305943189788382923

/-!
# A058158: Triangle read by rows: T(n,k) is the number of labeled monoids of order n with k idempotents and a fixed identity.

The programs for A058158, there is no canonical definition to state claims against.
-/

/-! ## A058158.P11010348701136315872

`A058157(n+1)/∑[char[∑[n]]]`
-/

namespace A058158.P11010348701136315872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058157 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058158.P11010348701136315872

/-! ## A058158.P2506768786638878993

`floor(A058157(n+1)/A002024(n+1))`
-/

namespace A058158.P2506768786638878993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058157 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A058158.P2506768786638878993

/-! ## A058158.P6661334793584999976

`floor(A058157(n+1)/A113764(n+1))`
-/

namespace A058158.P6661334793584999976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058157 (n + 1) : ℚ) / (A113764 (n + 1) : ℚ)⌋

end

end A058158.P6661334793584999976

/-! ## A058158.P1044811882834740706

`floor(A058157(n+1)/A123578(n+1))`
-/

namespace A058158.P1044811882834740706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058157 (n + 1) : ℚ) / (A123578 (n + 1) : ℚ)⌋

end

end A058158.P1044811882834740706

/-! ## A058158.P3606226775743319261

`floor(A058157(n+1)/A130146(n+1))`
-/

namespace A058158.P3606226775743319261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058157 (n + 1) : ℚ) / (A130146 (n + 1) : ℚ)⌋

end

end A058158.P3606226775743319261

/-!
# A058159: Triangle read by rows: T(n,k) is the number of labeled commutative monoids of order n with k idempotents.

The programs for A058159, there is no canonical definition to state claims against.
-/

/-! ## A058159.P15679926696556042942

`∑[char[∑[n]]]*A058160(n+1)`
-/

namespace A058159.P15679926696556042942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A058160 (n + 1)

end

end A058159.P15679926696556042942

/-! ## A058159.P17633077265255890653

`A058160(n+1)*A002024(n+1)`
-/

namespace A058159.P17633077265255890653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058160 (n + 1) * A002024 (n + 1)

end

end A058159.P17633077265255890653

/-! ## A058159.P9593098384754339244

`A058160(n+1)*A123578(n+1)`
-/

namespace A058159.P9593098384754339244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058160 (n + 1) * A123578 (n + 1)

end

end A058159.P9593098384754339244

/-! ## A058159.P3712605967175874620

`A058160(n+1)*A077168(A003056(n))`
-/

namespace A058159.P3712605967175874620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058160 (n + 1) * A077168 (A003056 n).toNat

end

end A058159.P3712605967175874620

/-! ## A058159.P4215664178835019113

`A058157(n+1)*A058160(n+1)/A058158(n+1)`
-/

namespace A058159.P4215664178835019113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058157 (n + 1) * A058160 (n + 1) : ℚ) / (A058158 (n + 1) : ℚ)

end

end A058159.P4215664178835019113

/-!
# A058160: Triangle read by rows: T(n,k) is the number of labeled commutative monoids of order n with k idempotents and a fixed identity.

The programs for A058160, there is no canonical definition to state claims against.
-/

/-! ## A058160.P3052319658910503997

`A058159(n+1)/∑[char[∑[n]]]`
-/

namespace A058160.P3052319658910503997
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058159 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A058160.P3052319658910503997

/-! ## A058160.P11644631512907607507

`floor(A058159(n+1)/A002024(n+1))`
-/

namespace A058160.P11644631512907607507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058159 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A058160.P11644631512907607507

/-! ## A058160.P12619189220749094581

`floor(A058159(n+1)/A123578(n+1))`
-/

namespace A058160.P12619189220749094581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058159 (n + 1) : ℚ) / (A123578 (n + 1) : ℚ)⌋

end

end A058160.P12619189220749094581

/-! ## A058160.P2438254569628959112

`round(A058159(2*n+1-n)/A123578(n+1))`
-/

namespace A058160.P2438254569628959112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058159 (2 * n + 1 - n) : ℚ) / (A123578 (n + 1) : ℚ))

end

end A058160.P2438254569628959112

/-! ## A058160.P697142633725497269

`A058159(n+1)/A002024(n+1)*A007318(C(2, n))`
-/

namespace A058160.P697142633725497269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058159 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A007318 (Nat.choose 2 n) : ℚ)

end

end A058160.P697142633725497269

/-! ## A058160.P10652158137169201196

`A058159(n+1)/A002024(n+1)*A000108(gcd(n, n+1))`
-/

namespace A058160.P10652158137169201196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058159 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A000108 (Nat.gcd n (n + 1)) : ℚ)

end

end A058160.P10652158137169201196

/-! ## A058160.P17872864731031218988

`(A058159(n+1)/A002024(n+1))^(A017509(n)²%(n+1))`
-/

namespace A058160.P17872864731031218988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058159 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)) ^ (Int.tmod (A017509 n ^ 2) (n + 1 : ℤ) : ℤ)

end

end A058160.P17872864731031218988

/-! ## A058160.P8542474815087806257

`A271699(A262079(n+1))+A058159(n+1)/A002024(n+1)`
-/

namespace A058160.P8542474815087806257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271699 (A262079 (n + 1)).toNat : ℚ) + (A058159 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A058160.P8542474815087806257

/-! ## A058160.P17617073343631918934

`(A058159(n+1)/A002024(n+1))^A001222(A027746(n+1))`
-/

namespace A058160.P17617073343631918934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058159 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)) ^ (A001222 (A027746 (n + 1)).toNat : ℤ)

end

end A058160.P17617073343631918934

/-!
# A058161: Number of labeled cyclic groups with a fixed identity.

The programs for A058161, the canonical program `A058161.P7672839083223615589` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058161 has offset 1).

The definition of A058161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058161.P10778362485055123617

`n!/A000010(n+1)`
-/

namespace A058161.P10778362485055123617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A000010 (n + 1) : ℚ)

end

end A058161.P10778362485055123617

namespace A058161

/-- `n!/A000010(n+1)` -/
def P10778362485055123617.Spec : Prop :=
  ∀ n, P10778362485055123617.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P7672839083223615589

`(n+1)!/A002618(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A058161

/-- `(n+1)!/A002618(n+1)` -/
def P7672839083223615589.Spec : Prop :=
  ∀ n, P7672839083223615589.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P10877158440819086062

`a(n-1)/A000010(n+1)*A000010(n²)` with `a(0)=1`
-/

namespace A058161.P10877158440819086062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (A000010 (n + 1) : ℚ) * (A000010 (n ^ 2) : ℚ)

end

end A058161.P10877158440819086062

namespace A058161

/-- `a(n-1)/A000010(n+1)*A000010(n²)` -/
def P10877158440819086062.Spec : Prop :=
  ∀ n, P10877158440819086062.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P1910940627783809687

`∏[A000010(A028310(n²))/A000010(n+1)]`
-/

namespace A058161.P1910940627783809687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A028310 (n ^ 2)).toNat : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058161.P1910940627783809687

namespace A058161

/-- `∏[A000010(A028310(n²))/A000010(n+1)]` -/
def P1910940627783809687.Spec : Prop :=
  ∀ n, P1910940627783809687.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P10461275959168873043

`n!/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A058161.P10461275959168873043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A058161.P10461275959168873043

namespace A058161

/-- `n!/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P10461275959168873043.Spec : Prop :=
  ∀ n, P10461275959168873043.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P5882324788557031446

`A034381(n+1)/(n+1)`
-/

namespace A058161.P5882324788557031446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034381 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058161.P5882324788557031446

namespace A058161

/-- `A034381(n+1)/(n+1)` -/
def P5882324788557031446.Spec : Prop :=
  ∀ n, P5882324788557031446.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P17458013670517797263

`floor(n!/A000010(2*n-(n-1)))`
-/

namespace A058161.P17458013670517797263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℚ) / (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ)⌋

end

end A058161.P17458013670517797263

namespace A058161

/-- `floor(n!/A000010(2*n-(n-1)))` -/
def P17458013670517797263.Spec : Prop :=
  ∀ n, P17458013670517797263.a n = A058161 (n + 1)

end A058161

/-! ## A058161.P15425290288658642197

`n!/∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A058161.P15425290288658642197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))

end

end A058161.P15425290288658642197

namespace A058161

/-- `n!/∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P15425290288658642197.Spec : Prop :=
  ∀ n, P15425290288658642197.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P12668510607439070465

`A000142(n)/A000010(n+1)`
-/

namespace A058161.P12668510607439070465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000010 (n + 1) : ℚ)

end

end A058161.P12668510607439070465

namespace A058161

/-- `A000142(n)/A000010(n+1)` -/
def P12668510607439070465.Spec : Prop :=
  ∀ n, P12668510607439070465.a n = (A058161 (n + 1) : ℚ)

end A058161

/-! ## A058161.P622883129836595036

`A000142(n+1)/A002618(n+1)`
-/

namespace A058161.P622883129836595036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A058161.P622883129836595036

namespace A058161

/-- `A000142(n+1)/A002618(n+1)` -/
def P622883129836595036.Spec : Prop :=
  ∀ n, P622883129836595036.a n = (A058161 (n + 1) : ℚ)

end A058161

/-!
# A058162: Number of labeled Abelian groups with a fixed identity.

The programs for A058162, there is no canonical definition to state claims against.
-/

/-! ## A058162.P2432882256925826116

`A034382(n+1)/(n+1)`
-/

namespace A058162.P2432882256925826116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034382 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058162.P2432882256925826116

/-! ## A058162.P17678929059542694140

`A000688(n+1)*A138286(n+1)`
-/

namespace A058162.P17678929059542694140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A138286 (n + 1)

end

end A058162.P17678929059542694140

/-! ## A058162.P16344008590168762675

`A138286(n+1)*A238877(Δ[n²])`
-/

namespace A058162.P16344008590168762675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138286 (n + 1) * A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058162.P16344008590168762675

/-! ## A058162.P916849952583901149

`A101872(A003961(n+1))*A138286(n+1)`
-/

namespace A058162.P916849952583901149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A003961 (n + 1)).toNat * A138286 (n + 1)

end

end A058162.P916849952583901149

/-! ## A058162.P10245020493489079121

`A104404(A045965(n+1))*A138286(n+1)`
-/

namespace A058162.P10245020493489079121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A045965 (n + 1)).toNat * A138286 (n + 1)

end

end A058162.P10245020493489079121

/-!
# A058163: Number of labeled groups with a fixed identity.

The programs for A058163, there is no canonical definition to state claims against.
-/

/-! ## A058163.P12175257094102964507

`A034383(n+1)/(n+1)`
-/

namespace A058163.P12175257094102964507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034383 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058163.P12175257094102964507

/-! ## A058163.P5610263528177040466

`floor(A034383(A077168(n))/A077168(n))`
-/

namespace A058163.P5610263528177040466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034383 (A077168 n).toNat : ℚ) / (A077168 n : ℚ)⌋

end

end A058163.P5610263528177040466

/-! ## A058163.P6484222652359266132

`A034383(A077168(n))/A077168(n)*A304042(n)`
-/

namespace A058163.P6484222652359266132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034383 (A077168 n).toNat : ℚ) / (A077168 n : ℚ) * (A304042 n : ℚ)

end

end A058163.P6484222652359266132

/-! ## A058163.P8320912512848242110

`A034383(A077168(n))/A077168(n)*A033999(n)²`
-/

namespace A058163.P8320912512848242110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034383 (A077168 n).toNat : ℚ) / (A077168 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A058163.P8320912512848242110

/-! ## A058163.P10798523603759918867

`(A034383(A077168(n))/A077168(n))^A002828(n²)`
-/

namespace A058163.P10798523603759918867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034383 (A077168 n).toNat : ℚ) / (A077168 n : ℚ)) ^ (A002828 (n ^ 2) : ℤ)

end

end A058163.P10798523603759918867

/-!
# A058164: Number of labeled lattices with a fixed bottom.

The programs for A058164, there is no canonical definition to state claims against.
-/

/-! ## A058164.P18439048248216498881

`A055512(n+1)/(n+1)`
-/

namespace A058164.P18439048248216498881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055512 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A058164.P18439048248216498881

/-! ## A058164.P18228705500746780076

`Δ[A173488(n)]/(n+1)`
-/

namespace A058164.P18228705500746780076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173488 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A058164.P18228705500746780076

/-! ## A058164.P10328612510786396783

`A058160(∑[n+1])`
-/

namespace A058164.P10328612510786396783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058160 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058164.P10328612510786396783

/-! ## A058164.P2452838696951241525

`A058159(∑[n+1])/(n+1)`
-/

namespace A058164.P2452838696951241525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058159 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A058164.P2452838696951241525

/-! ## A058164.P1005535000144419128

`A058160(A025747(n))*A257462(n)`
-/

namespace A058164.P1005535000144419128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058160 (A025747 n).toNat * A257462 n

end

end A058164.P1005535000144419128

/-!
# A058165: Number of labeled lattices with a fixed bottom and top.

The programs for A058165, there is no canonical definition to state claims against.
-/

/-! ## A058165.P10910123026646968357

`A058164(n+2)/(n+1)`
-/

namespace A058165.P10910123026646968357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058164 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A058165.P10910123026646968357

/-! ## A058165.P472220183702313604

`A055512(n+2)/((n+2)*(n+1))`
-/

namespace A058165.P472220183702313604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055512 (n + 2) : ℚ) / ((n + 2) * (n + 1) : ℚ)

end

end A058165.P472220183702313604

/-! ## A058165.P6206055445473920257

`A058160(∑[n+2]+1)/(n+1)`
-/

namespace A058165.P6206055445473920257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058160 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A058165.P6206055445473920257

/-! ## A058165.P5111843254835125048

`A058167(∑[n+1])/(n+1)`
-/

namespace A058165.P5111843254835125048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058167 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A058165.P5111843254835125048

/-!
# A058169: Triangle: Number of asymmetric self-converse semigroups of order n with k idempotents.

The programs for A058169, there is no canonical definition to state claims against.
-/

/-! ## A058169.P14700396400029417648

`2*A058170(n+1)-A058113(n+1)`
-/

namespace A058169.P14700396400029417648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058170 (n + 1) - A058113 (n + 1)

end

end A058169.P14700396400029417648

/-! ## A058169.P10140767623589606149

`A004277(A058170(n+1))-A058113(n+1)`
-/

namespace A058169.P10140767623589606149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A058170 (n + 1)).toNat - A058113 (n + 1)

end

end A058169.P10140767623589606149

/-!
# A058170: Triangle: Number of asymmetric semigroups of order n with k idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058170, there is no canonical definition to state claims against.
-/

/-! ## A058170.P12606393509804917168

`(A058169(n+1)+A058113(n+1))/2`
-/

namespace A058170.P12606393509804917168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058169 (n + 1) + A058113 (n + 1) : ℚ) / 2

end

end A058170.P12606393509804917168

/-! ## A058170.P6243195857398031246

`A001281(A058169(n+1)+A058113(n+1))`
-/

namespace A058170.P6243195857398031246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058169 (n + 1) + A058113 (n + 1)).toNat

end

end A058170.P6243195857398031246

/-! ## A058170.P13559162845672990341

`A004526(A058169(n+1)+A058113(n+1))`
-/

namespace A058170.P13559162845672990341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A058169 (n + 1) + A058113 (n + 1)).toNat

end

end A058170.P13559162845672990341

/-! ## A058170.P14123643478160894615

`A014682(A058169(n+1)+A058113(n+1))`
-/

namespace A058170.P14123643478160894615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A058169 (n + 1) + A058113 (n + 1)).toNat

end

end A058170.P14123643478160894615

/-! ## A058170.P15612720599034502868

`A025480(A058169(n+1)+A058113(n+1))`
-/

namespace A058170.P15612720599034502868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A058169 (n + 1) + A058113 (n + 1)).toNat

end

end A058170.P15612720599034502868

/-!
# A058171: Number of quasigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058171, there is no canonical definition to state claims against.
-/

/-! ## A058171.P9089987334434797959

`(A057993(n)+A057991(n))/2`
-/

namespace A058171.P9089987334434797959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057993 n + A057991 n : ℚ) / 2

end

end A058171.P9089987334434797959

/-! ## A058171.P10404190562224793052

`A126591(floor(floor(n!/2)/2))`
-/

namespace A058171.P10404190562224793052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126591 ⌊(⌊(Nat.factorial n : ℚ) / 2⌋ : ℚ) / 2⌋.toNat

end

end A058171.P10404190562224793052

/-!
# A058172: Number of asymmetric commutative quasigroups of order n.

The programs for A058172, there is no canonical definition to state claims against.
-/

/-! ## A058172.P6521904342084252453

`A241644(floor(n²/7)²)`
-/

namespace A058172.P6521904342084252453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241644 (⌊(n ^ 2 : ℚ) / 7⌋ ^ 2).toNat

end

end A058172.P6521904342084252453

/-! ## A058172.P17649786680341522098

`A061152(a(n-1)+lcm(4, a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A058172.P17649786680341522098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 2] fun n a =>
  A061152 (a (n - 1) + (Int.lcm 4 (a (n - 2)) : ℤ)).toNat

end

end A058172.P17649786680341522098

/-! ## A058172.P14958006882019789503

`(a(n-1)+a(n-3)+a(n-4))*A057730(n+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=2, a(5)=4`
-/

namespace A058172.P14958006882019789503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 2, 4] fun n a =>
  (a (n - 1) + (a (n - 3) + a (n - 4))) * A057730 (n + 1)

end

end A058172.P14958006882019789503

/-!
# A058174: Number of asymmetric quasigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A058174, there is no canonical definition to state claims against.
-/

/-! ## A058174.P15356895616531963341

`A191558(∏{p}[A319639(n), #])`
-/

namespace A058174.P15356895616531963341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A058174.P15356895616531963341

/-! ## A058174.P6875182677216091159

`A236348(∑[∑[A171737(n+1)]])`
-/

namespace A058174.P6875182677216091159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058174.P6875182677216091159

/-!
# A058177: Triangle: Number of commutative quasigroups of order n with k idempotents.

The programs for A058177, there is no canonical definition to state claims against.
-/

/-! ## A058177.P12500780315447317466

`and(A110180(n), A274821(A241510(n)))`
-/

namespace A058177.P12500780315447317466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110180 n) (A274821 (A241510 n).toNat)

end

end A058177.P12500780315447317466

/-! ## A058177.P10658431278798804630

`and(A132729(n), A274821(A241510(n)))`
-/

namespace A058177.P10658431278798804630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132729 n) (A274821 (A241510 n).toNat)

end

end A058177.P10658431278798804630

/-! ## A058177.P12934327375722852087

`A322530(A279329(A126286(n+1)²))`
-/

namespace A058177.P12934327375722852087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (A279329 (A126286 (n + 1) ^ 2).toNat).toNat

end

end A058177.P12934327375722852087

/-! ## A058177.P998408934656249157

`and(A110180(n), A155212(A013498(n+1)))`
-/

namespace A058177.P998408934656249157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110180 n) (A155212 (A013498 (n + 1)).toNat)

end

end A058177.P998408934656249157

/-! ## A058177.P1406349881655034075

`and(A010147(A164197(n)), A208510(n+1))`
-/

namespace A058177.P1406349881655034075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010147 (A164197 n).toNat) (A208510 (n + 1))

end

end A058177.P1406349881655034075

/-!
# A058178: Triangle: Self-converse quasigroups of order n with k idempotents.

The programs for A058178, there is no canonical definition to state claims against.
-/

/-! ## A058178.P3659173324138578513

`A240850(A058175(n))`
-/

namespace A058178.P3659173324138578513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 (A058175 n).toNat

end

end A058178.P3659173324138578513

/-! ## A058178.P12799965015505770791

`A012265(A058175(n)+2)`
-/

namespace A058178.P12799965015505770791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A058175 n + 2).toNat

end

end A058178.P12799965015505770791

/-! ## A058178.P16288916906241843662

`A058207(A058175(n))%A058192(A058176(n))`
-/

namespace A058178.P16288916906241843662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058207 (A058175 n).toNat) (A058192 (A058176 n).toNat)

end

end A058178.P16288916906241843662

/-! ## A058178.P10954623427651221317

`A000598(n)%A001222(A259635(n+1))`
-/

namespace A058178.P10954623427651221317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000598 n) (A001222 (A259635 (n + 1)).toNat)

end

end A058178.P10954623427651221317

/-! ## A058178.P12798206987126319221

`A353478(3*n+4)+A348616(A335920(n))`
-/

namespace A058178.P12798206987126319221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (3 * n + 4) + A348616 (A335920 n).toNat

end

end A058178.P12798206987126319221

/-!
# A058181: Quadratic recurrence a(n) = a(n-1)^2 - a(n-2) for n >= 2 with a(0) = 1 and a(1) = 0.

The programs for A058181, the canonical program `A058181.P697803618900055019` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058181 has offset 0).

The definition of A058181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)` (program `A058181.P697803618900055019`, by `A058181.P697803618900055019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058181.P697803618900055019

`a(n-1)²-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058181

/-- `a(n-1)²-a(n-2)` -/
def P697803618900055019.Spec : Prop :=
  ∀ n, P697803618900055019.a n = A058181 n

theorem P697803618900055019.correct : P697803618900055019.Spec := by
  intro n
  simp only [A058181]

end A058181

/-! ## A058181.P6936089975861711693

`a(n-1)^2-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A058181.P6936089975861711693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) ^ 2 - a (n - 2)

end

end A058181.P6936089975861711693

namespace A058181

/-- `a(n-1)^2-a(n-2)` -/
def P6936089975861711693.Spec : Prop :=
  ∀ n, P6936089975861711693.a n = A058181 n

theorem P6936089975861711693.correct : P6936089975861711693.Spec := by
  intro n
  simp only [A058181, Nat.add_sub_cancel, A058181.P6936089975861711693.a, A058181.P697803618900055019.a, SequenceMachineLib.memo_apply]

end A058181

/-! ## A058181.P4227804902421370362

`a(n-1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A058181.P4227804902421370362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) * a (n - 1) - a (n - 2)

end

end A058181.P4227804902421370362

namespace A058181

/-- `a(n-1)*a(n-1)-a(n-2)` -/
def P4227804902421370362.Spec : Prop :=
  ∀ n, P4227804902421370362.a n = A058181 n

theorem P4227804902421370362.correct : P4227804902421370362.Spec := by
  intro n
  simp only [A058181, Nat.add_sub_cancel, A058181.P4227804902421370362.a, A058181.P697803618900055019.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A058181

/-!
# A058182: a(n) = a(n-1)^2 + a(n-2) for n >= 2 with a(0) = 1 and a(1) = 0.

The programs for A058182, the canonical program `A058182.P12809173364870696595` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058182 has offset 0).

The definition of A058182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(n-2)` (program `A058182.P12809173364870696595`, by `A058182.P12809173364870696595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058182.P12809173364870696595

`a(n-1)²+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058182

/-- `a(n-1)²+a(n-2)` -/
def P12809173364870696595.Spec : Prop :=
  ∀ n, (P12809173364870696595.a n : ℤ) = A058182 n

theorem P12809173364870696595.correct : P12809173364870696595.Spec := by
  intro n
  simp only [A058182]

end A058182

/-! ## A058182.P278049086067932715

`a(n-2)+a(n-1)^2` with `a(0)=1, a(1)=0`
-/

namespace A058182.P278049086067932715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + a (n - 1) ^ 2

end

end A058182.P278049086067932715

namespace A058182

/-- `a(n-2)+a(n-1)^2` -/
def P278049086067932715.Spec : Prop :=
  ∀ n, (P278049086067932715.a n : ℤ) = A058182 n

end A058182

/-! ## A058182.P4127981272524779765

`a(n-1)²-floor(-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058182.P4127981272524779765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) ^ 2 - (-a (n - 2))

end

end A058182.P4127981272524779765

namespace A058182

/-- `a(n-1)²-floor(-a(n-2))` -/
def P4127981272524779765.Spec : Prop :=
  ∀ n, P4127981272524779765.a n = A058182 n

end A058182

/-! ## A058182.P4405684386450479731

`a(n-1)²-ceil(-a(n-2))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A058182.P4405684386450479731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) ^ 2 - (-a (n - 2))

end

end A058182.P4405684386450479731

namespace A058182

/-- `a(n-1)²-ceil(-a(n-2))` -/
def P4405684386450479731.Spec : Prop :=
  ∀ n, P4405684386450479731.a n = A058182 n

end A058182

/-! ## A058182.P9240896500804362621

`a(n-2)+a(n-1)*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A058182.P9240896500804362621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + a (n - 1) * a (n - 1)

end

end A058182.P9240896500804362621

namespace A058182

/-- `a(n-2)+a(n-1)*a(n-1)` -/
def P9240896500804362621.Spec : Prop :=
  ∀ n, (P9240896500804362621.a n : ℤ) = A058182 n

end A058182

/-!
# A058183: Number of digits in concatenation of first n positive integers.

The programs for A058183, the canonical program `A058183.P4906920629226833825` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058183 has offset 1).

The definition of A058183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058183.P4906920629226833825

`A055642(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058183

/-- `A055642(n+1)+a(n-1)` -/
def P4906920629226833825.Spec : Prop :=
  ∀ n, P4906920629226833825.a n = A058183 (n + 1)

theorem P4906920629226833825.correct : P4906920629226833825.Spec := by
  intro n
  simp only [A058183, Nat.add_sub_cancel]

end A058183

/-! ## A058183.P17045309155388705453

`A004216(n+1)+a(n-1)+1` with `a(0)=1`
-/

namespace A058183.P17045309155388705453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004216 (n + 1) + (a (n - 1) + 1)

end

end A058183.P17045309155388705453

namespace A058183

/-- `A004216(n+1)+a(n-1)+1` -/
def P17045309155388705453.Spec : Prop :=
  ∀ n, P17045309155388705453.a n = A058183 (n + 1)

theorem P17045309155388705453.correct : P17045309155388705453.Spec := by
  intro n
  simp only [A058183, Nat.add_sub_cancel, A058183.P17045309155388705453.a, A058183.P4906920629226833825.a, A004216, A004216.P11701108540860389608.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058183

/-! ## A058183.P2835164484436615561

`∑{digits}[n+1, A036370(#)]+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A058183.P2835164484436615561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum + a (n - 1)

end

end A058183.P2835164484436615561

namespace A058183

/-- `∑{digits}[n+1, A036370(#)]+a(n-1)` -/
def P2835164484436615561.Spec : Prop :=
  ∀ n, P2835164484436615561.a n = A058183 (n + 1)

end A058183

/-! ## A058183.P9699666922795684006

`A117804(n+1)+A004216(n+1)`
-/

namespace A058183.P9699666922795684006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1) + A004216 (n + 1)

end

end A058183.P9699666922795684006

namespace A058183

/-- `A117804(n+1)+A004216(n+1)` -/
def P9699666922795684006.Spec : Prop :=
  ∀ n, P9699666922795684006.a n = A058183 (n + 1)

end A058183

/-! ## A058183.P17958483329185882482

`∑{digits}[n+1, A007318(A007318(#))]+a(n-1)` with `a(0)=1`
-/

namespace A058183.P17958483329185882482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum + a (n - 1)

end

end A058183.P17958483329185882482

namespace A058183

/-- `∑{digits}[n+1, A007318(A007318(#))]+a(n-1)` -/
def P17958483329185882482.Spec : Prop :=
  ∀ n, P17958483329185882482.a n = A058183 (n + 1)

end A058183

/-! ## A058183.P5445755931720371549

`∑{digits}[n+1, A014963(A079299(#+1))]+a(n-1)` with `a(0)=1`
-/

namespace A058183.P5445755931720371549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014963 (A079299 (x + 1)).toNat).sum + a (n - 1)

end

end A058183.P5445755931720371549

namespace A058183

/-- `∑{digits}[n+1, A014963(A079299(#+1))]+a(n-1)` -/
def P5445755931720371549.Spec : Prop :=
  ∀ n, P5445755931720371549.a n = A058183 (n + 1)

end A058183

/-! ## A058183.P15532037867503154260

`A117804(n+2)-1`
-/

namespace A058183.P15532037867503154260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 2) - 1

end

end A058183.P15532037867503154260

namespace A058183

/-- `A117804(n+2)-1` -/
def P15532037867503154260.Spec : Prop :=
  ∀ n, P15532037867503154260.a n = A058183 (n + 1)

end A058183

/-! ## A058183.P11479821139037233023

`lt[A322804(n+1)/A261320(n), n]`
-/

namespace A058183.P11479821139037233023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322804 (n + 1) : ℚ) / (A261320 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A058183.P11479821139037233023

namespace A058183

/-- `lt[A322804(n+1)/A261320(n), n]` -/
def P11479821139037233023.Spec : Prop :=
  ∀ n, (P11479821139037233023.a n : ℤ) = A058183 (n + 1)

end A058183

/-! ## A058183.P15072305680728079474

`lt[(A126120(n)/A000010(n+1))², n]`
-/

namespace A058183.P15072305680728079474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A126120 n : ℚ) / (A000010 (n + 1) : ℚ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A058183.P15072305680728079474

namespace A058183

/-- `lt[(A126120(n)/A000010(n+1))², n]` -/
def P15072305680728079474.Spec : Prop :=
  ∀ n, (P15072305680728079474.a n : ℤ) = A058183 (n + 1)

end A058183

/-! ## A058183.P3729178053673062220

`lt[(1-log(n+1))^n, n]`
-/

namespace A058183.P3729178053673062220
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.log (n + 1 : ℝ)) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A058183.P3729178053673062220

namespace A058183

/-- `lt[(1-log(n+1))^n, n]` -/
def P3729178053673062220.Spec : Prop :=
  ∀ n, (P3729178053673062220.a n : ℤ) = A058183 (n + 1)

end A058183

/-!
# A058184: "Real rabbits": a(n) = Re(c(n)) where complex c(n) = a(n) + i*b(n) and c(0) = i, c(1) = -i, c(n) = c(n-1) + i*c(n-2).

The programs for A058184, the canonical program `A058184.P4700326057990820282` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058184 has offset 0).

The definition of A058184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058184.P7007623205344992649

`ogf((-x^2+2x^3)/(1-2x+x^2+x^4))`
-/

namespace A058184.P7007623205344992649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, -1, 2] [1, -2, 1, 0, 1] n

end

end A058184.P7007623205344992649

namespace A058184

/-- `ogf((-x^2+2x^3)/(1-2x+x^2+x^4))` -/
def P7007623205344992649.Spec : Prop :=
  ∀ n, P7007623205344992649.a n = A058184 n

end A058184

/-! ## A058184.P4700326057990820282

`2*a(n-1)-a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=-1, a(3)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058184

/-- `2*a(n-1)-a(n-2)-a(n-4)` -/
def P4700326057990820282.Spec : Prop :=
  ∀ n, P4700326057990820282.a n = A058184 n

theorem P4700326057990820282.correct : P4700326057990820282.Spec := by
  intro n
  simp only [A058184]

end A058184

/-! ## A058184.P16364198639945368633

`a(n-1)-A014291(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A058184.P16364198639945368633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - A014291 (n - 2)

end

end A058184.P16364198639945368633

namespace A058184

/-- `a(n-1)-A014291(n-2)` -/
def P16364198639945368633.Spec : Prop :=
  ∀ n, P16364198639945368633.a n = A058184 n

end A058184

/-! ## A058184.P11094445042699632246

`Δ[A014291(n+1)]`
-/

namespace A058184.P11094445042699632246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058184.P11094445042699632246

namespace A058184

/-- `Δ[A014291(n+1)]` -/
def P11094445042699632246.Spec : Prop :=
  ∀ n, P11094445042699632246.a n = A058184 n

end A058184

/-! ## A058184.P12347649752276362593

`A014291(n+2)-A014291(n+1)`
-/

namespace A058184.P12347649752276362593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014291 (n + 2) - A014291 (n + 1)

end

end A058184.P12347649752276362593

namespace A058184

/-- `A014291(n+2)-A014291(n+1)` -/
def P12347649752276362593.Spec : Prop :=
  ∀ n, P12347649752276362593.a n = A058184 n

end A058184

/-! ## A058184.P13840649963487136400

`Δ[Δ[A104862(n+1)]-A104862(n+1)]`
-/

namespace A058184.P13840649963487136400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A104862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058184.P13840649963487136400

namespace A058184

/-- `Δ[Δ[A104862(n+1)]-A104862(n+1)]` -/
def P13840649963487136400.Spec : Prop :=
  ∀ n, P13840649963487136400.a n = A058184 n

end A058184

/-!
# A058185: Numbers (written in decimal) which appear the same when written in base 5 and base 10/2.

The programs for A058185, the canonical program `A058185.P18405885786713772514` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058185 has offset 1).

The definition of A058185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058185.P18405885786713772514

`eq[0, val(n, 5)-a(n-1)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058185

/-- `eq[0, val(n, 5)-a(n-1)]` -/
def P18405885786713772514.Spec : Prop :=
  ∀ n, (P18405885786713772514.a n : ℤ) = A058185 (n + 1)

theorem P18405885786713772514.correct : P18405885786713772514.Spec := by
  intro n
  simp only [A058185, Nat.add_sub_cancel]

end A058185

/-! ## A058185.P2535696515293585709

`lt[abs(A332412(n)), 2]`
-/

namespace A058185.P2535696515293585709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332412 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058185.P2535696515293585709

namespace A058185

/-- `lt[abs(A332412(n)), 2]` -/
def P2535696515293585709.Spec : Prop :=
  ∀ n, (P2535696515293585709.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P17491601142184553374

`record[A004515(A065187(n+1)-1)]`
-/

namespace A058185.P17491601142184553374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A065187 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058185.P17491601142184553374

namespace A058185

/-- `record[A004515(A065187(n+1)-1)]` -/
def P17491601142184553374.Spec : Prop :=
  ∀ n, P17491601142184553374.a n = A058185 (n + 1)

end A058185

/-! ## A058185.P2347479790828334667

`eq[A092202(n), A332412(n)]`
-/

namespace A058185.P2347479790828334667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058185.P2347479790828334667

namespace A058185

/-- `eq[A092202(n), A332412(n)]` -/
def P2347479790828334667.Spec : Prop :=
  ∀ n, (P2347479790828334667.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P3107569368786396111

`eq[abs(A332412(n)), A000035(n)]`
-/

namespace A058185.P3107569368786396111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332412 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058185.P3107569368786396111

namespace A058185

/-- `eq[abs(A332412(n)), A000035(n)]` -/
def P3107569368786396111.Spec : Prop :=
  ∀ n, (P3107569368786396111.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P15003685501155659973

`eq[A000035(n), A093348(n+1)]`
-/

namespace A058185.P15003685501155659973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058185.P15003685501155659973

namespace A058185

/-- `eq[A000035(n), A093348(n+1)]` -/
def P15003685501155659973.Spec : Prop :=
  ∀ n, (P15003685501155659973.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P11103637859734811162

`eq[A093347(A093348(n+1)+1), A093348(n+1)]`
-/

namespace A058185.P11103637859734811162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (A093348 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058185.P11103637859734811162

namespace A058185

/-- `eq[A093347(A093348(n+1)+1), A093348(n+1)]` -/
def P11103637859734811162.Spec : Prop :=
  ∀ n, (P11103637859734811162.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P8924227561894916295

`eq[A093348(n+1), A094114(A093348(n+1)+1)]`
-/

namespace A058185.P8924227561894916295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A093348 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058185.P8924227561894916295

namespace A058185

/-- `eq[A093348(n+1), A094114(A093348(n+1)+1)]` -/
def P8924227561894916295.Spec : Prop :=
  ∀ n, (P8924227561894916295.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P11892876563453816776

`eq[A332412(n)², A332412(A332412(n)²)]`
-/

namespace A058185.P11892876563453816776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 (A332412 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058185.P11892876563453816776

namespace A058185

/-- `eq[A332412(n)², A332412(A332412(n)²)]` -/
def P11892876563453816776.Spec : Prop :=
  ∀ n, (P11892876563453816776.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P13314273626675280591

`A028900(A058186(n+1))`
-/

namespace A058185.P13314273626675280591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A058186 (n + 1)).toNat

end

end A058185.P13314273626675280591

namespace A058185

/-- `A028900(A058186(n+1))` -/
def P13314273626675280591.Spec : Prop :=
  ∀ n, P13314273626675280591.a n = A058185 (n + 1)

end A058185

/-! ## A058185.P3654729887569389984

`eq[0, A102675(A024657(n))]`
-/

namespace A058185.P3654729887569389984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A024657 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058185.P3654729887569389984

namespace A058185

/-- `eq[0, A102675(A024657(n))]` -/
def P3654729887569389984.Spec : Prop :=
  ∀ n, (P3654729887569389984.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P10263508976028164410

`eq[1, A003114(A332412(n)²)]`
-/

namespace A058185.P10263508976028164410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (A332412 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058185.P10263508976028164410

namespace A058185

/-- `eq[1, A003114(A332412(n)²)]` -/
def P10263508976028164410.Spec : Prop :=
  ∀ n, (P10263508976028164410.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P2745906418523453221

`eq[1, A008619(A332412(n)²)]`
-/

namespace A058185.P2745906418523453221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332412 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058185.P2745906418523453221

namespace A058185

/-- `eq[1, A008619(A332412(n)²)]` -/
def P2745906418523453221.Spec : Prop :=
  ∀ n, (P2745906418523453221.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P3245816954792415390

`eq[1, A029579(A332412(n)²)]`
-/

namespace A058185.P3245816954792415390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A332412 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058185.P3245816954792415390

namespace A058185

/-- `eq[1, A029579(A332412(n)²)]` -/
def P3245816954792415390.Spec : Prop :=
  ∀ n, (P3245816954792415390.a n : ℤ) = A058185 (n + 1)

end A058185

/-! ## A058185.P15599540487536815728

`eq[1, A109613(A332412(n)²)]`
-/

namespace A058185.P15599540487536815728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A332412 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058185.P15599540487536815728

namespace A058185

/-- `eq[1, A109613(A332412(n)²)]` -/
def P15599540487536815728.Spec : Prop :=
  ∀ n, (P15599540487536815728.a n : ℤ) = A058185 (n + 1)

end A058185

/-!
# A058186: Numbers (written in base 5) which appear the same when written in base 5 and base 10/2.

The programs for A058186, the canonical program `A058186.P13779469765456657561` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058186 has offset 1).

The definition of A058186 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A058185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058186.P13779469765456657561

`A007091(A058185(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058186

/-- `A007091(A058185(n+1))` -/
def P13779469765456657561.Spec : Prop :=
  ∀ n, P13779469765456657561.a n = A058186 (n + 1)

theorem P13779469765456657561.correct : P13779469765456657561.Spec := by
  intro n
  simp only [A058186, Nat.add_sub_cancel]

end A058186

/-! ## A058186.P17227071010238001051

`A024635(floor(6*n/5))`
-/

namespace A058186.P17227071010238001051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 ⌊6 * ((n : ℚ) / 5)⌋.toNat

end

end A058186.P17227071010238001051

namespace A058186

/-- `A024635(floor(6*n/5))` -/
def P17227071010238001051.Spec : Prop :=
  ∀ n, P17227071010238001051.a n = A058186 (n + 1)

end A058186

/-! ## A058186.P3081275032161009655

`∩[A024635(n)-1, A024635(n)]`
-/

namespace A058186.P3081275032161009655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P3081275032161009655

namespace A058186

/-- `∩[A024635(n)-1, A024635(n)]` -/
def P3081275032161009655.Spec : Prop :=
  ∀ n, (P3081275032161009655.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P13279830455682498244

`A024635(A047226(n+1)+1)-1`
-/

namespace A058186.P13279830455682498244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 (A047226 (n + 1) + 1).toNat - 1

end

end A058186.P13279830455682498244

namespace A058186

/-- `A024635(A047226(n+1)+1)-1` -/
def P13279830455682498244.Spec : Prop :=
  ∀ n, P13279830455682498244.a n = A058186 (n + 1)

end A058186

/-! ## A058186.P11644783646944806598

`∩[A007091(n), A024635(n)]`
-/

namespace A058186.P11644783646944806598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P11644783646944806598

namespace A058186

/-- `∩[A007091(n), A024635(n)]` -/
def P11644783646944806598.Spec : Prop :=
  ∀ n, (P11644783646944806598.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P10740547130489020409

`∩[A007091(n), A024644(n)]`
-/

namespace A058186.P10740547130489020409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P10740547130489020409

namespace A058186

/-- `∩[A007091(n), A024644(n)]` -/
def P10740547130489020409.Spec : Prop :=
  ∀ n, (P10740547130489020409.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P5912935344595968761

`∩[A007091(n), A024657(n)]`
-/

namespace A058186.P5912935344595968761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P5912935344595968761

namespace A058186

/-- `∩[A007091(n), A024657(n)]` -/
def P5912935344595968761.Spec : Prop :=
  ∀ n, (P5912935344595968761.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P9140038636420179161

`A024657(A058185(2*n+1-n))`
-/

namespace A058186.P9140038636420179161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (A058185 (2 * n + 1 - n)).toNat

end

end A058186.P9140038636420179161

namespace A058186

/-- `A024657(A058185(2*n+1-n))` -/
def P9140038636420179161.Spec : Prop :=
  ∀ n, P9140038636420179161.a n = A058186 (n + 1)

end A058186

/-! ## A058186.P13909719891569841963

`∩[A007092(n)-1, A024644(n)]`
-/

namespace A058186.P13909719891569841963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P13909719891569841963

namespace A058186

/-- `∩[A007092(n)-1, A024644(n)]` -/
def P13909719891569841963.Spec : Prop :=
  ∀ n, (P13909719891569841963.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P3799242661287357371

`∩[A135210(n+1), A024635(n)]`
-/

namespace A058186.P3799242661287357371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P3799242661287357371

namespace A058186

/-- `∩[A135210(n+1), A024635(n)]` -/
def P3799242661287357371.Spec : Prop :=
  ∀ n, (P3799242661287357371.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P130370373249549878

`∩[A135210(n+1), A024644(n)]`
-/

namespace A058186.P130370373249549878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P130370373249549878

namespace A058186

/-- `∩[A135210(n+1), A024644(n)]` -/
def P130370373249549878.Spec : Prop :=
  ∀ n, (P130370373249549878.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P195018490441500209

`∩[A039146(n+1), A024635(n)]`
-/

namespace A058186.P195018490441500209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P195018490441500209

namespace A058186

/-- `∩[A039146(n+1), A024635(n)]` -/
def P195018490441500209.Spec : Prop :=
  ∀ n, (P195018490441500209.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P14921099757306512336

`∩[A039147(n+1), A024635(n)]`
-/

namespace A058186.P14921099757306512336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P14921099757306512336

namespace A058186

/-- `∩[A039147(n+1), A024635(n)]` -/
def P14921099757306512336.Spec : Prop :=
  ∀ n, (P14921099757306512336.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P9293917138509019992

`∩[A039148(n+1), A024635(n)]`
-/

namespace A058186.P9293917138509019992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P9293917138509019992

namespace A058186

/-- `∩[A039148(n+1), A024635(n)]` -/
def P9293917138509019992.Spec : Prop :=
  ∀ n, (P9293917138509019992.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P9434025305747969221

`∩[A039149(n+1), A024635(n)]`
-/

namespace A058186.P9434025305747969221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058186.P9434025305747969221

namespace A058186

/-- `∩[A039149(n+1), A024635(n)]` -/
def P9434025305747969221.Spec : Prop :=
  ∀ n, (P9434025305747969221.a n : ℤ) = A058186 (n + 1)

end A058186

/-! ## A058186.P8931587145967554344

`record[A004180(A024635(n))]`
-/

namespace A058186.P8931587145967554344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A024635 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058186.P8931587145967554344

namespace A058186

/-- `record[A004180(A024635(n))]` -/
def P8931587145967554344.Spec : Prop :=
  ∀ n, P8931587145967554344.a n = A058186 (n + 1)

end A058186

/-! ## A058186.P746778858566408264

`record[A167831(A024644(n))]`
-/

namespace A058186.P746778858566408264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (A024644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058186.P746778858566408264

namespace A058186

/-- `record[A167831(A024644(n))]` -/
def P746778858566408264.Spec : Prop :=
  ∀ n, P746778858566408264.a n = A058186 (n + 1)

end A058186

/-! ## A058186.P4018905534072582705

`record[A167831(A024657(n))]`
-/

namespace A058186.P4018905534072582705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (A024657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058186.P4018905534072582705

namespace A058186

/-- `record[A167831(A024657(n))]` -/
def P4018905534072582705.Spec : Prop :=
  ∀ n, P4018905534072582705.a n = A058186 (n + 1)

end A058186

/-! ## A058186.P4354704677982818513

`lt[A054055(A004525(n)), 3]`
-/

namespace A058186.P4354704677982818513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004525 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A058186.P4354704677982818513

namespace A058186

/-- `lt[A054055(A004525(n)), 3]` -/
def P4354704677982818513.Spec : Prop :=
  ∀ n, (P4354704677982818513.a n : ℤ) = A058186 (n + 1)

end A058186

/-!
# A058187: Expansion of (1+x)/(1-x^2)^4: duplicated tetrahedral numbers.

The programs for A058187, the canonical program `A058187.P11225617256787788162` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058187 has offset 0).

The definition of A058187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058187.P5094086536093854610

`C(floor(n/2)+3, 3)`
-/

namespace A058187.P5094086536093854610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3

end

end A058187.P5094086536093854610

namespace A058187

/-- `C(floor(n/2)+3, 3)` -/
def P5094086536093854610.Spec : Prop :=
  ∀ n, (P5094086536093854610.a n : ℤ) = A058187 n

end A058187

/-! ## A058187.P10270807171440642402

`ogf(1/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A058187.P10270807171440642402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A058187.P10270807171440642402

namespace A058187

/-- `ogf(1/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P10270807171440642402.Spec : Prop :=
  ∀ n, P10270807171440642402.a n = A058187 n

end A058187

/-! ## A058187.P11225617256787788162

`A000292(A008619(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058187

/-- `A000292(A008619(n))` -/
def P11225617256787788162.Spec : Prop :=
  ∀ n, P11225617256787788162.a n = A058187 n

theorem P11225617256787788162.correct : P11225617256787788162.Spec := by
  intro n
  simp only [A058187]

end A058187

/-! ## A058187.P12397340008115153725

`A006918(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A058187.P12397340008115153725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006918 (n + 1) - a (n - 1)

end

end A058187.P12397340008115153725

namespace A058187

/-- `A006918(n+1)-a(n-1)` -/
def P12397340008115153725.Spec : Prop :=
  ∀ n, P12397340008115153725.a n = A058187 n

end A058187

/-! ## A058187.P10035010627952296723

`∑[∑[∑[∑[(-1)^n*∑[n+1]]]]]`
-/

namespace A058187.P10035010627952296723
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058187.P10035010627952296723

namespace A058187

/-- `∑[∑[∑[∑[(-1)^n*∑[n+1]]]]]` -/
def P10035010627952296723.Spec : Prop :=
  ∀ n, P10035010627952296723.a n = A058187 n

end A058187

/-! ## A058187.P10853379820795693613

`∑[∑[n+1-a(n-1)]-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A058187.P10853379820795693613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A058187.P10853379820795693613

namespace A058187

/-- `∑[∑[n+1-a(n-1)]-a(n-1)]-a(n-1)` -/
def P10853379820795693613.Spec : Prop :=
  ∀ n, P10853379820795693613.a n = A058187 n

end A058187

/-! ## A058187.P10573918258140197912

`A005232(or(1, n))`
-/

namespace A058187.P10573918258140197912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (Nat.lor 1 n)

end

end A058187.P10573918258140197912

namespace A058187

/-- `A005232(or(1, n))` -/
def P10573918258140197912.Spec : Prop :=
  ∀ n, P10573918258140197912.a n = A058187 n

end A058187

/-! ## A058187.P16954986018494196277

`A160790(or(1, n))`
-/

namespace A058187.P16954986018494196277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (Nat.lor 1 n)

end

end A058187.P16954986018494196277

namespace A058187

/-- `A160790(or(1, n))` -/
def P16954986018494196277.Spec : Prop :=
  ∀ n, P16954986018494196277.a n = A058187 n

end A058187

/-! ## A058187.P7632261864142029300

`A294085(or(1, n))`
-/

namespace A058187.P7632261864142029300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294085 (Nat.lor 1 n)

end

end A058187.P7632261864142029300

namespace A058187

/-- `A294085(or(1, n))` -/
def P7632261864142029300.Spec : Prop :=
  ∀ n, P7632261864142029300.a n = A058187 n

end A058187

/-! ## A058187.P7878435268350369610

`A008804(n-and(1, n))`
-/

namespace A058187.P7878435268350369610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (n - Nat.land 1 n)

end

end A058187.P7878435268350369610

namespace A058187

/-- `A008804(n-and(1, n))` -/
def P7878435268350369610.Spec : Prop :=
  ∀ n, P7878435268350369610.a n = A058187 n

end A058187

/-! ## A058187.P18236372266456824133

`sqrt(A001249(floor(n/2)))`
-/

namespace A058187.P18236372266456824133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A058187.P18236372266456824133

namespace A058187

/-- `sqrt(A001249(floor(n/2)))` -/
def P18236372266456824133.Spec : Prop :=
  ∀ n, P18236372266456824133.a n = (A058187 n : ℝ)

end A058187

/-! ## A058187.P13013817532292080185

`A000292(∑[char[2*n]])`
-/

namespace A058187.P13013817532292080185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058187.P13013817532292080185

namespace A058187

/-- `A000292(∑[char[2*n]])` -/
def P13013817532292080185.Spec : Prop :=
  ∀ n, P13013817532292080185.a n = A058187 n

end A058187

/-! ## A058187.P1321253403656974879

`A008805(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A058187.P1321253403656974879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008805 n + a (n - 2)

end

end A058187.P1321253403656974879

namespace A058187

/-- `A008805(n)+a(n-2)` -/
def P1321253403656974879.Spec : Prop :=
  ∀ n, P1321253403656974879.a n = A058187 n

end A058187

/-! ## A058187.P9466227682809618123

`A053307(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A058187.P9466227682809618123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A053307 n - a (n - 3)

end

end A058187.P9466227682809618123

namespace A058187

/-- `A053307(n)-a(n-3)` -/
def P9466227682809618123.Spec : Prop :=
  ∀ n, P9466227682809618123.a n = A058187 n

end A058187

/-! ## A058187.P18076924643720293074

`A008804(A052928(n))`
-/

namespace A058187.P18076924643720293074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (A052928 n).toNat

end

end A058187.P18076924643720293074

namespace A058187

/-- `A008804(A052928(n))` -/
def P18076924643720293074.Spec : Prop :=
  ∀ n, P18076924643720293074.a n = A058187 n

end A058187

/-! ## A058187.P7621624836912386491

`A005232(A109613(n))`
-/

namespace A058187.P7621624836912386491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A109613 n).toNat

end

end A058187.P7621624836912386491

namespace A058187

/-- `A005232(A109613(n))` -/
def P7621624836912386491.Spec : Prop :=
  ∀ n, P7621624836912386491.a n = A058187 n

end A058187

/-! ## A058187.P4850057340493167547

`A005232(A052928(n)+1)`
-/

namespace A058187.P4850057340493167547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A052928 n + 1).toNat

end

end A058187.P4850057340493167547

namespace A058187

/-- `A005232(A052928(n)+1)` -/
def P4850057340493167547.Spec : Prop :=
  ∀ n, P4850057340493167547.a n = A058187 n

end A058187

/-! ## A058187.P16883408150922384799

`A005232(A063196(n+1))`
-/

namespace A058187.P16883408150922384799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A063196 (n + 1)).toNat

end

end A058187.P16883408150922384799

namespace A058187

/-- `A005232(A063196(n+1))` -/
def P16883408150922384799.Spec : Prop :=
  ∀ n, P16883408150922384799.a n = A058187 n

end A058187

/-! ## A058187.P7953125235191807123

`A008804(2*A004526(n))`
-/

namespace A058187.P7953125235191807123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * A004526 n).toNat

end

end A058187.P7953125235191807123

namespace A058187

/-- `A008804(2*A004526(n))` -/
def P7953125235191807123.Spec : Prop :=
  ∀ n, P7953125235191807123.a n = A058187 n

end A058187

/-! ## A058187.P13728135135457385074

`A160790(n)+A027656(n)`
-/

namespace A058187.P13728135135457385074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 n + A027656 n

end

end A058187.P13728135135457385074

namespace A058187

/-- `A160790(n)+A027656(n)` -/
def P13728135135457385074.Spec : Prop :=
  ∀ n, P13728135135457385074.a n = A058187 n

end A058187

/-!
# A058188: Number of primes between prime(n) and prime(n) + sqrt(prime(n)), where prime(n) is the n-th prime.

The programs for A058188, the canonical program `A058188.P9072146060356888764` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058188 has offset 1).

The definition of A058188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058188.P9072146060356888764

`A000720(A000040(n+1)+A000006(n+1))-(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058188

/-- `A000720(A000040(n+1)+A000006(n+1))-(n+1)` -/
def P9072146060356888764.Spec : Prop :=
  ∀ n, P9072146060356888764.a n = A058188 (n + 1)

theorem P9072146060356888764.correct : P9072146060356888764.Spec := by
  intro n
  simp only [A058188, Nat.add_sub_cancel]

end A058188

/-! ## A058188.P10224333496598379040

`A188817(A000040(n+1))-A189024(A000040(n+1))`
-/

namespace A058188.P10224333496598379040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188817 (A000040 (n + 1)).toNat - A189024 (A000040 (n + 1)).toNat

end

end A058188.P10224333496598379040

namespace A058188

/-- `A188817(A000040(n+1))-A189024(A000040(n+1))` -/
def P10224333496598379040.Spec : Prop :=
  ∀ n, P10224333496598379040.a n = A058188 (n + 1)

end A058188

/-! ## A058188.P9571911613526372110

`A344969(A164406(n))%3`
-/

namespace A058188.P9571911613526372110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344969 (A164406 n).toNat) 3

end

end A058188.P9571911613526372110

namespace A058188

/-- `A344969(A164406(n))%3` -/
def P9571911613526372110.Spec : Prop :=
  ∀ n, P9571911613526372110.a n = A058188 (n + 1)

end A058188

/-! ## A058188.P7025612606340597694

`A243148(A029968(n+4)-A071649(n+1))`
-/

namespace A058188.P7025612606340597694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A029968 (n + 4) - A071649 (n + 1)).toNat

end

end A058188.P7025612606340597694

namespace A058188

/-- `A243148(A029968(n+4)-A071649(n+1))` -/
def P7025612606340597694.Spec : Prop :=
  ∀ n, P7025612606340597694.a n = A058188 (n + 1)

end A058188

/-! ## A058188.P14548086885470730043

`A267034(A355304(n+5))+A087991(n+1)`
-/

namespace A058188.P14548086885470730043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A355304 (n + 5)).toNat + A087991 (n + 1)

end

end A058188.P14548086885470730043

namespace A058188

/-- `A267034(A355304(n+5))+A087991(n+1)` -/
def P14548086885470730043.Spec : Prop :=
  ∀ n, P14548086885470730043.a n = A058188 (n + 1)

end A058188

/-!
# A058189: Number of increasing geometric progressions ending in n (in the positive integers), including those of length 1 or 2.

The programs for A058189, there is no canonical definition to state claims against.
-/

/-! ## A058189.P7603207861809483156

`A058190(n+1)+n+1`
-/

namespace A058189.P7603207861809483156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (n + 1) + (n + 1 : ℤ)

end

end A058189.P7603207861809483156

/-! ## A058189.P11513794170497998399

`A277886(A187829(A003557(n+1)))+n`
-/

namespace A058189.P11513794170497998399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 (A187829 (A003557 (n + 1)).toNat).toNat + (n : ℤ)

end

end A058189.P11513794170497998399

/-! ## A058189.P16482477287753244240

`A097246(A003557(n+1))+A048675(A019565(n))`
-/

namespace A058189.P16482477287753244240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (A003557 (n + 1)).toNat + A048675 (A019565 n).toNat

end

end A058189.P16482477287753244240

/-! ## A058189.P14084202097854323026

`A335424(A000190(n+1)!)+n`
-/

namespace A058189.P14084202097854323026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (Nat.factorial (A000190 (n + 1)).toNat) + (n : ℤ)

end

end A058189.P14084202097854323026

/-! ## A058189.P7611054384366166626

`A029931(floor(2^(n-1))+(n+1)/∏{p}[n+1, #])`
-/

namespace A058189.P7611054384366166626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A058189.P7611054384366166626

/-!
# A058190: Number of increasing geometric progressions ending in n (in the positive integers), excluding those of length 1 or 2.

The programs for A058190, there is no canonical definition to state claims against.
-/

/-! ## A058190.P6626050487397022450

`A058189(n+1)-(n+1)`
-/

namespace A058190.P6626050487397022450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058189 (n + 1) - (n + 1 : ℤ)

end

end A058190.P6626050487397022450

/-! ## A058190.P4252443014683429211

`A058189(n+1)%A030640(n)`
-/

namespace A058190.P4252443014683429211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058189 (n + 1)) (A030640 n)

end

end A058190.P4252443014683429211

/-! ## A058190.P6146854475177856205

`(A058189(n+1)+A002378(n))%(n+1)`
-/

namespace A058190.P6146854475177856205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058189 (n + 1) + A002378 n) (n + 1 : ℤ)

end

end A058190.P6146854475177856205

/-! ## A058190.P5125403625235208081

`(A058189(n+1)+A055671(n))%(n+1)`
-/

namespace A058190.P5125403625235208081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058189 (n + 1) + A055671 n) (n + 1 : ℤ)

end

end A058190.P5125403625235208081

/-! ## A058190.P9641515371682999826

`(A000290(n)*A058189(n+1))%(n+1)`
-/

namespace A058190.P9641515371682999826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n * A058189 (n + 1)) (n + 1 : ℤ)

end

end A058190.P9641515371682999826

/-! ## A058190.P6459176144513683281

`(A058189(n+1)+n+1)%A073675(n+1)`
-/

namespace A058190.P6459176144513683281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058189 (n + 1) + (n + 1 : ℤ)) (A073675 (n + 1))

end

end A058190.P6459176144513683281

/-! ## A058190.P8491622849547892569

`A002262(A058189(n+1)+∑[n])`
-/

namespace A058190.P8491622849547892569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A058189 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A058190.P8491622849547892569

/-!
# A058191: Number of primes <= 13^n.

The programs for A058191, the canonical program `A058191.P14936452380980819236` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058191 has offset 0).

The definition of A058191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058191.P14936452380980819236

`A000720(13^n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058191

/-- `A000720(13^n)` -/
def P14936452380980819236.Spec : Prop :=
  ∀ n, P14936452380980819236.a n = A058191 n

theorem P14936452380980819236.correct : P14936452380980819236.Spec := by
  intro n
  simp only [A058191]

end A058191

/-!
# A058192: (6^n)-th prime.

The programs for A058192, the canonical program `A058192.P11683425840421053798` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058192 has offset 0).

The definition of A058192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058192.P11683425840421053798

`A000040(6^n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058192

/-- `A000040(6^n)` -/
def P11683425840421053798.Spec : Prop :=
  ∀ n, P11683425840421053798.a n = A058192 n

theorem P11683425840421053798.correct : P11683425840421053798.Spec := by
  intro n
  simp only [A058192]

end A058192

/-! ## A058192.P5530778144620253794

`A347000(A052905(n+2))`
-/

namespace A058192.P5530778144620253794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A052905 (n + 2)).toNat

end

end A058192.P5530778144620253794

namespace A058192

/-- `A347000(A052905(n+2))` -/
def P5530778144620253794.Spec : Prop :=
  ∀ n, P5530778144620253794.a n = A058192 n

end A058192

/-! ## A058192.P556781765249294109

`A347000(eq[3, A129713(n)])`
-/

namespace A058192.P556781765249294109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058192.P556781765249294109

namespace A058192

/-- `A347000(eq[3, A129713(n)])` -/
def P556781765249294109.Spec : Prop :=
  ∀ n, P556781765249294109.a n = A058192 n

end A058192

/-! ## A058192.P14062843986232422246

`A347000(eq[4, A025581(n)])`
-/

namespace A058192.P14062843986232422246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058192.P14062843986232422246

namespace A058192

/-- `A347000(eq[4, A025581(n)])` -/
def P14062843986232422246.Spec : Prop :=
  ∀ n, P14062843986232422246.a n = A058192 n

end A058192

/-! ## A058192.P11252884681060580951

`A347000(Δ[A055831(n+4)])`
-/

namespace A058192.P11252884681060580951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (f1 (n + 1) - f1 n).toNat

end

end A058192.P11252884681060580951

namespace A058192

/-- `A347000(Δ[A055831(n+4)])` -/
def P11252884681060580951.Spec : Prop :=
  ∀ n, P11252884681060580951.a n = A058192 n

end A058192

/-!
# A058193: Smallest prime p such that there is a gap of 6n between p and the next prime.

The programs for A058193, there is no canonical definition to state claims against.
-/

/-! ## A058193.P3908073655105018550

`A000230(3*(n+1))`
-/

namespace A058193.P3908073655105018550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (3 * (n + 1))

end

end A058193.P3908073655105018550

/-! ## A058193.P1925273734137806947

`or(1, A000230(Δ[3*∑[n]]))`
-/

namespace A058193.P1925273734137806947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A058193.P1925273734137806947

/-! ## A058193.P10192344977829401560

`-Δ[-∑[A000230(3*n)]]`
-/

namespace A058193.P10192344977829401560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A058193.P10192344977829401560

/-! ## A058193.P14516663487132135207

`A045881(3*(n+1))-1`
-/

namespace A058193.P14516663487132135207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (3 * (n + 1)) - 1

end

end A058193.P14516663487132135207

/-! ## A058193.P284551711892502451

`A252284(A318454(2*n+1))+A045881(3*(n+1))`
-/

namespace A058193.P284551711892502451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252284 (A318454 (2 * n + 1)).toNat + A045881 (3 * (n + 1))

end

end A058193.P284551711892502451

/-!
# A058194: Number of n-rowed matrices with entries {0,1,2,3} and all row sums 3, up to row and column permutation.

The programs for A058194, there is no canonical definition to state claims against.
-/

/-! ## A058194.P10246199488618674144

`A331485(A167614(n+2))`
-/

namespace A058194.P10246199488618674144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (A167614 (n + 2)).toNat

end

end A058194.P10246199488618674144

/-! ## A058194.P16046372832413028624

`A331485(A141214(n)+6)`
-/

namespace A058194.P16046372832413028624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (A141214 n + 6).toNat

end

end A058194.P16046372832413028624

/-! ## A058194.P7832674339317871646

`A331485(eq[3, A002262(n)])`
-/

namespace A058194.P7832674339317871646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058194.P7832674339317871646

/-! ## A058194.P18192262800786871159

`A331485(eq[8, A059268(n)])`
-/

namespace A058194.P18192262800786871159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058194.P18192262800786871159

/-! ## A058194.P9945570844153296959

`A331485(eq[4, A002260(n+1)])`
-/

namespace A058194.P9945570844153296959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058194.P9945570844153296959

/-!
# A058195: Areas of a sequence of right-angled figures described below.

The programs for A058195, the canonical program `A058195.P7985922740472977256` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058195 has offset 1).

The definition of A058195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058195.P15444945184373383566

`ogf((1+3x)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A058195.P15444945184373383566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, 5, 0, -5, 4, -1] n

end

end A058195.P15444945184373383566

namespace A058195

/-- `ogf((1+3x)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P15444945184373383566.Spec : Prop :=
  ∀ n, P15444945184373383566.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P7985922740472977256

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=57, a(4)=118, a(5)=218`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058195

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P7985922740472977256.Spec : Prop :=
  ∀ n, P7985922740472977256.a n = A058195 (n + 1)

theorem P7985922740472977256.correct : P7985922740472977256.Spec := by
  intro n
  simp only [A058195, Nat.add_sub_cancel]

end A058195

/-! ## A058195.P13400034915337748965

`∑[∑[floor((5/4+n)²)]]`
-/

namespace A058195.P13400034915337748965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4 + (n : ℚ)) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058195.P13400034915337748965

namespace A058195

/-- `∑[∑[floor((5/4+n)²)]]` -/
def P13400034915337748965.Spec : Prop :=
  ∀ n, P13400034915337748965.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P9928176549017977500

`floor(∑[∑[∑[a(n-2)+4]]])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A058195.P9928176549017977500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f3 =>
  f3 (n - 2) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058195.P9928176549017977500

namespace A058195

/-- `floor(∑[∑[∑[a(n-2)+4]]])` -/
def P9928176549017977500.Spec : Prop :=
  ∀ n, (P9928176549017977500.a n : ℤ) = A058195 (n + 1)

end A058195

/-! ## A058195.P5964361853549213077

`floor(∑[∑[∑[∑[4-a(n-1)]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058195.P5964361853549213077
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  4 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058195.P5964361853549213077

namespace A058195

/-- `floor(∑[∑[∑[∑[4-a(n-1)]]]])` -/
def P5964361853549213077.Spec : Prop :=
  ∀ n, P5964361853549213077.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P17258329350527140706

`(n+1)*C(n+3, 3)-a(n-1)` with `a(0)=1`
-/

namespace A058195.P17258329350527140706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) * Nat.choose (n + 3) 3 : ℤ) - a (n - 1)

end

end A058195.P17258329350527140706

namespace A058195

/-- `(n+1)*C(n+3, 3)-a(n-1)` -/
def P17258329350527140706.Spec : Prop :=
  ∀ n, P17258329350527140706.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P13837666324957204542

`(n+1)*∑[∑[n+1]]-a(n-1)` with `a(0)=1`
-/

namespace A058195.P13837666324957204542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - a (n - 1)

end

end A058195.P13837666324957204542

namespace A058195

/-- `(n+1)*∑[∑[n+1]]-a(n-1)` -/
def P13837666324957204542.Spec : Prop :=
  ∀ n, P13837666324957204542.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P10461790110103039359

`A006322(n+1)-A105636(n)`
-/

namespace A058195.P10461790110103039359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) - A105636 n

end

end A058195.P10461790110103039359

namespace A058195

/-- `A006322(n+1)-A105636(n)` -/
def P10461790110103039359.Spec : Prop :=
  ∀ n, P10461790110103039359.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P10888597180270662019

`A095694(n+2)-A243212(n+2)`
-/

namespace A058195.P10888597180270662019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095694 (n + 2) - A243212 (n + 2)

end

end A058195.P10888597180270662019

namespace A058195

/-- `A095694(n+2)-A243212(n+2)` -/
def P10888597180270662019.Spec : Prop :=
  ∀ n, P10888597180270662019.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P16704213348329472000

`A173196(n+1)+A002415(n+2)`
-/

namespace A058195.P16704213348329472000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + A002415 (n + 2)

end

end A058195.P16704213348329472000

namespace A058195

/-- `A173196(n+1)+A002415(n+2)` -/
def P16704213348329472000.Spec : Prop :=
  ∀ n, P16704213348329472000.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P13511987465297495527

`A002418(n+2)-A105636(n+2)`
-/

namespace A058195.P13511987465297495527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 (n + 2) - A105636 (n + 2)

end

end A058195.P13511987465297495527

namespace A058195

/-- `A002418(n+2)-A105636(n+2)` -/
def P13511987465297495527.Spec : Prop :=
  ∀ n, P13511987465297495527.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P1187306115210966663

`A105636(n+1)-A000332(n+3)`
-/

namespace A058195.P1187306115210966663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 (n + 1) - A000332 (n + 3)

end

end A058195.P1187306115210966663

namespace A058195

/-- `A105636(n+1)-A000332(n+3)` -/
def P1187306115210966663.Spec : Prop :=
  ∀ n, P1187306115210966663.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P9686837695839607628

`A096338(2*n+1)+∑[∑[A123108(n+1)]]`
-/

namespace A058195.P9686837695839607628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058195.P9686837695839607628

namespace A058195

/-- `A096338(2*n+1)+∑[∑[A123108(n+1)]]` -/
def P9686837695839607628.Spec : Prop :=
  ∀ n, P9686837695839607628.a n = A058195 (n + 1)

end A058195

/-! ## A058195.P5638066329445682742

`A088932(A016825(n)-1)/2`
-/

namespace A058195.P5638066329445682742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088932 (A016825 n - 1).toNat : ℚ) / 2

end

end A058195.P5638066329445682742

namespace A058195

/-- `A088932(A016825(n)-1)/2` -/
def P5638066329445682742.Spec : Prop :=
  ∀ n, P5638066329445682742.a n = (A058195 (n + 1) : ℚ)

end A058195

/-! ## A058195.P6589480740767932696

`A001401(4*n+2)-A001401(2*n+1)`
-/

namespace A058195.P6589480740767932696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (4 * n + 2) - A001401 (2 * n + 1)

end

end A058195.P6589480740767932696

namespace A058195

/-- `A001401(4*n+2)-A001401(2*n+1)` -/
def P6589480740767932696.Spec : Prop :=
  ∀ n, P6589480740767932696.a n = A058195 (n + 1)

end A058195

/-!
# A058196: Sum of digits of first 10^n primes.

The programs for A058196, there is no canonical definition to state claims against.
-/

/-! ## A058196.P16320409888761346281

`A051351(A086067(n))`
-/

namespace A058196.P16320409888761346281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 (A086067 n).toNat

end

end A058196.P16320409888761346281

/-!
# A058197: Where d(m) (number of divisors, A000005) rises by at least n.

The programs for A058197, there is no canonical definition to state claims against.
-/

/-! ## A058197.P2936989651300049757

`A058198(n+1)-1`
-/

namespace A058197.P2936989651300049757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058198 (n + 1) - 1

end

end A058197.P2936989651300049757

/-! ## A058197.P14815304601180148896

`A106400(A006519(n+1))+A058198(n+1)`
-/

namespace A058197.P14815304601180148896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A006519 (n + 1)).toNat + A058198 (n + 1)

end

end A058197.P14815304601180148896

/-! ## A058197.P2199063785186206321

`A106470(A319101(n+1))+A058198(n+1)`
-/

namespace A058197.P2199063785186206321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 (A319101 (n + 1)).toNat + A058198 (n + 1)

end

end A058197.P2199063785186206321

/-! ## A058197.P12665966797400022387

`A295304(A230201(n+1))+A058198(n+1)`
-/

namespace A058197.P12665966797400022387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A230201 (n + 1)).toNat + A058198 (n + 1)

end

end A058197.P12665966797400022387

/-! ## A058197.P9105731963429679995

`A129667(A020482(n+2))+A058198(n+1)`
-/

namespace A058197.P9105731963429679995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A020482 (n + 2)).toNat + A058198 (n + 1)

end

end A058197.P9105731963429679995

/-! ## A058197.P3238493724187562514

`A330025(A017365(n))+A058198(n+1)`
-/

namespace A058197.P3238493724187562514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A017365 n).toNat + A058198 (n + 1)

end

end A058197.P3238493724187562514

/-! ## A058197.P16507066801365177255

`A346242(p?[A155722(n+1)])+A058198(n+1)`
-/

namespace A058197.P16507066801365177255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A058198 (n + 1)

end

end A058197.P16507066801365177255

/-! ## A058197.P7152684649310055579

`A062157(A001747(n+1))+A058198(n+1)`
-/

namespace A058197.P7152684649310055579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001747 (n + 1)).toNat + A058198 (n + 1)

end

end A058197.P7152684649310055579

/-! ## A058197.P14180696138147898951

`A346242(p?[A346248(n+1)])+A058198(n+1)`
-/

namespace A058197.P14180696138147898951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A058198 (n + 1)

end

end A058197.P14180696138147898951

/-! ## A058197.P2666184204451965037

`A295304(2*A058198(n+1))+A058198(n+1)`
-/

namespace A058197.P2666184204451965037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (2 * A058198 (n + 1)).toNat + A058198 (n + 1)

end

end A058197.P2666184204451965037

/-!
# A058198: Where d(m) (number of divisors, A000005) has risen by at least n.

The programs for A058198, there is no canonical definition to state claims against.
-/

/-! ## A058198.P14030878736726065969

`A058197(n+1)+1`
-/

namespace A058198.P14030878736726065969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058197 (n + 1) + 1

end

end A058198.P14030878736726065969

/-! ## A058198.P11189964206780864622

`-xor(1, -A058197(-xor(n, -1)))`
-/

namespace A058198.P11189964206780864622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A058197 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A058198.P11189964206780864622

/-! ## A058198.P3445836717192838378

`A103391(2*A058197(-xor(n, -1)))`
-/

namespace A058198.P3445836717192838378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (2 * A058197 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A058198.P3445836717192838378

/-! ## A058198.P1532450480891781113

`A103391(lcm(2, A058197(-xor(n, -1))))`
-/

namespace A058198.P1532450480891781113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (Int.lcm 2 (A058197 (-Int.xor (n : ℤ) (-1)).toNat))

end

end A058198.P1532450480891781113

/-! ## A058198.P12239805318075115577

`A092486(A058197(n+1))`
-/

namespace A058198.P12239805318075115577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A058197 (n + 1)).toNat

end

end A058198.P12239805318075115577

/-! ## A058198.P7569581655935416728

`A014681(A058197(n+1))`
-/

namespace A058198.P7569581655935416728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A058197 (n + 1)).toNat

end

end A058198.P7569581655935416728

/-!
# A058199: Where d(m) (number of divisors, A000005) falls by at least n.

The programs for A058199, there is no canonical definition to state claims against.
-/

/-! ## A058199.P9868719222813014110

`A153494(A043726(n+1)*A096605(n+1))`
-/

namespace A058199.P9868719222813014110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153494 (A043726 (n + 1) * A096605 (n + 1)).toNat

end

end A058199.P9868719222813014110

