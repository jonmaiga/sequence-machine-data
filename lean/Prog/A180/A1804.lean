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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C026

/-!
# A180400: Coefficients of Maclaurin series for (1-9x-9x^2)^(-1/3).

The programs for A180400, there is no canonical definition to state claims against.
-/

/-! ## A180400.P2614274220735590441

`A361839(∑[n+2]-1)`
-/

namespace A180400.P2614274220735590441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A180400.P2614274220735590441

/-! ## A180400.P8103184045579275717

`record[A361839(n)^A115359(n+1)]`
-/

namespace A180400.P8103184045579275717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361839 n : ℚ) ^ (A115359 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180400.P8103184045579275717

/-! ## A180400.P1380183509845453006

`gcd(C(3, n²), A361839(A034856(n+1)))`
-/

namespace A180400.P1380183509845453006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 3 (n ^ 2) : ℤ) (A361839 (A034856 (n + 1)).toNat)

end

end A180400.P1380183509845453006

/-! ## A180400.P17742907266055163066

`C(A028310(n), n)*A361839(A034856(n+1))`
-/

namespace A180400.P17742907266055163066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A028310 n).toNat n : ℤ) * A361839 (A034856 (n + 1)).toNat

end

end A180400.P17742907266055163066

/-! ## A180400.P8773268915799190152

`record[A361839(A237519(n+1))]`
-/

namespace A180400.P8773268915799190152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180400.P8773268915799190152

/-!
# A180401: Stirling-like sequence obtained from bipartite 0-1 tableaux.

The programs for A180401, there is no canonical definition to state claims against.
-/

/-! ## A180401.P17182771056257895207

`and(A075504(n+1), A269944(n))*A344180(2^n)`
-/

namespace A180401.P17182771056257895207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075504 (n + 1)) (A269944 n) * A344180 (2 ^ n)

end

end A180401.P17182771056257895207

/-! ## A180401.P9309526051461332593

`and(A075504(n+1), A269944(n))%A028926(n+2)`
-/

namespace A180401.P9309526051461332593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A075504 (n + 1)) (A269944 n)) (A028926 (n + 2))

end

end A180401.P9309526051461332593

/-! ## A180401.P12697333987841882881

`A100196(A132062(n)²)-A268191(A209805(n+1))`
-/

namespace A180401.P12697333987841882881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A132062 n ^ 2).toNat - A268191 (A209805 (n + 1)).toNat

end

end A180401.P12697333987841882881

/-! ## A180401.P17111108070379024360

`A051889(A215861(n)+A151769(n))²-A326789(A008621(n))`
-/

namespace A180401.P17111108070379024360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A215861 n + A151769 n).toNat ^ 2 - A326789 (A008621 n).toNat

end

end A180401.P17111108070379024360

/-!
# A180402: a(n) = lcm(1,...,Fibonacci(n)).

The programs for A180402, there is no canonical definition to state claims against.
-/

/-! ## A180402.P1859734459091172846

`A003418(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A180402.P1859734459091172846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (n + 1) - f1 n).toNat

end

end A180402.P1859734459091172846

/-! ## A180402.P1654109763287770798

`A003418(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A180402.P1654109763287770798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180402.P1654109763287770798

/-! ## A180402.P10497013673283035956

`A003418(A109609(n))`
-/

namespace A180402.P10497013673283035956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A109609 n).toNat

end

end A180402.P10497013673283035956

/-! ## A180402.P14179176641459833850

`A003418(A147659(n))`
-/

namespace A180402.P14179176641459833850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A147659 n).toNat

end

end A180402.P14179176641459833850

/-! ## A180402.P7988177218312488894

`A003418(A185357(n))`
-/

namespace A180402.P7988177218312488894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A185357 n).toNat

end

end A180402.P7988177218312488894

/-!
# A180404: Primes p such that the sum of fifth power of their digits is a prime.

The programs for A180404, there is no canonical definition to state claims against.
-/

/-! ## A180404.P4088019512568552690

`p?[A359610(n+1)]`
-/

namespace A180404.P4088019512568552690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180404.P4088019512568552690

/-! ## A180404.P5674003756236667907

`∩[A000040(n+1), A359610(n+1)]`
-/

namespace A180404.P5674003756236667907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P5674003756236667907

/-! ## A180404.P13448167677255085092

`∩[A004139(n+1), A359610(n+1)]`
-/

namespace A180404.P13448167677255085092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P13448167677255085092

/-! ## A180404.P7056530801256000345

`∩[A006005(n+1), A359610(n+1)]`
-/

namespace A180404.P7056530801256000345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P7056530801256000345

/-! ## A180404.P9145277785709030809

`∩[A008578(n+1), A359610(n+1)]`
-/

namespace A180404.P9145277785709030809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P9145277785709030809

/-! ## A180404.P3109843316782083930

`∩[A033946(n+1), A359610(n+1)]`
-/

namespace A180404.P3109843316782083930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P3109843316782083930

/-! ## A180404.P8204511195455839327

`∩[A045319(n+1), A359610(n+1)]`
-/

namespace A180404.P8204511195455839327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P8204511195455839327

/-! ## A180404.P3883329033024240973

`∩[A045344(n+1), A359610(n+1)]`
-/

namespace A180404.P3883329033024240973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P3883329033024240973

/-! ## A180404.P17262878701021426874

`∩[A046022(n+1), A359610(n+1)]`
-/

namespace A180404.P17262878701021426874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P17262878701021426874

/-! ## A180404.P13546782520200882531

`∩[A046704(n+1), A359610(n+1)]`
-/

namespace A180404.P13546782520200882531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P13546782520200882531

/-! ## A180404.P1703168845093470761

`∩[A051948(n+1), A359610(n+1)]`
-/

namespace A180404.P1703168845093470761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P1703168845093470761

/-! ## A180404.P6110639979539049986

`∩[A053813(n+1), A359610(n+1)]`
-/

namespace A180404.P6110639979539049986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P6110639979539049986

/-! ## A180404.P8431134984938506429

`∩[A062972(n+1), A359610(n+1)]`
-/

namespace A180404.P8431134984938506429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P8431134984938506429

/-! ## A180404.P4016726671833628637

`∩[A064728(n+1), A359610(n+1)]`
-/

namespace A180404.P4016726671833628637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P4016726671833628637

/-! ## A180404.P10609041071706565344

`∩[A065091(n+1), A359610(n+1)]`
-/

namespace A180404.P10609041071706565344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P10609041071706565344

/-! ## A180404.P7796146197050387431

`filter[A359610(n+1), A010051(#)]`
-/

namespace A180404.P7796146197050387431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A180404.P7796146197050387431

/-! ## A180404.P17129129526030517944

`∩[A072227(n+1), A359610(n+1)]`
-/

namespace A180404.P17129129526030517944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P17129129526030517944

/-! ## A180404.P5925530269409106728

`∩[A174219(n+1), A359610(n+1)]`
-/

namespace A180404.P5925530269409106728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180404.P5925530269409106728

/-! ## A180404.P2241979101615362364

`filter[A359610(n+1), A323152(#)]`
-/

namespace A180404.P2241979101615362364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A180404.P2241979101615362364

/-! ## A180404.P10729912409915356724

`filter[A359610(n+1), A323153(#)]`
-/

namespace A180404.P10729912409915356724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A180404.P10729912409915356724

/-!
# A180406: Primes p from sequence A180404 whose reverse is also a prime.

The programs for A180406, there is no canonical definition to state claims against.
-/

/-! ## A180406.P5705891255498220074

`∩[A007500(n+1), A180404(n+1)]`
-/

namespace A180406.P5705891255498220074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180406.P5705891255498220074

/-! ## A180406.P6701565405537627942

`∩[A007500(n+1), A359610(n+1)]`
-/

namespace A180406.P6701565405537627942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180406.P6701565405537627942

/-! ## A180406.P6765583479614607925

`∩[A095179(n+1), A180404(n+1)]`
-/

namespace A180406.P6765583479614607925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180406.P6765583479614607925

/-! ## A180406.P14002571802927557846

`∩[A062895(n+1), A180404(n+1)]`
-/

namespace A180406.P14002571802927557846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180406.P14002571802927557846

/-! ## A180406.P12867658482091024712

`∩[A085869(n+1), A180404(n+1)]`
-/

namespace A180406.P12867658482091024712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180406.P12867658482091024712

/-!
# A180407: Primes from sequence A091367 whose reverse is still a prime.

The programs for A180407, there is no canonical definition to state claims against.
-/

/-! ## A180407.P618813975729807001

`∩[A012883(n+1), A111348(n+1)]`
-/

namespace A180407.P618813975729807001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180407.P618813975729807001

/-! ## A180407.P17448769924427304760

`∩[A091633(n+1), A111348(n+1)]`
-/

namespace A180407.P17448769924427304760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180407.P17448769924427304760

/-! ## A180407.P8081466820764476332

`∩[A111348(n+1), A227919(n+1)]`
-/

namespace A180407.P8081466820764476332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180407.P8081466820764476332

/-!
# A180409: Unique digits used in n in numerical order (with 0 last).

The programs for A180409, there is no canonical definition to state claims against.
-/

/-! ## A180409.P2168247268978600330

`A086068(A086066(n+1))`
-/

namespace A180409.P2168247268978600330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A086066 (n + 1)).toNat

end

end A180409.P2168247268978600330

/-! ## A180409.P16280456305513780904

`A137564(A056544(n+1))`
-/

namespace A180409.P16280456305513780904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A056544 (n + 1)).toNat

end

end A180409.P16280456305513780904

/-! ## A180409.P3905149407654034007

`A137564(A113585(n+1))`
-/

namespace A180409.P3905149407654034007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A113585 (n + 1)).toNat

end

end A180409.P3905149407654034007

/-! ## A180409.P10193048889334904321

`A328447(A106612(n+1))`
-/

namespace A180409.P10193048889334904321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A106612 (n + 1)).toNat

end

end A180409.P10193048889334904321

/-! ## A180409.P3177883183263543292

`A328447(A137564(n+1))`
-/

namespace A180409.P3177883183263543292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A137564 (n + 1)).toNat

end

end A180409.P3177883183263543292

/-! ## A180409.P10995207304858862067

`A321474(A227362(n+1))`
-/

namespace A180409.P10995207304858862067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A227362 (n + 1)).toNat

end

end A180409.P10995207304858862067

/-! ## A180409.P2049280071195181649

`A337864(A328447(n+1))`
-/

namespace A180409.P2049280071195181649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (A328447 (n + 1)).toNat

end

end A180409.P2049280071195181649

/-! ## A180409.P11760159300815174983

`A180410(n+1)+n+1-A004151(n+1)`
-/

namespace A180409.P11760159300815174983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (n + 1) + ((n + 1 : ℤ) - A004151 (n + 1))

end

end A180409.P11760159300815174983

/-! ## A180409.P17730968571964293494

`A227362(n+1)-A151949(A004086(n+1))`
-/

namespace A180409.P17730968571964293494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (n + 1) - A151949 (A004086 (n + 1)).toNat

end

end A180409.P17730968571964293494

/-! ## A180409.P10289699312393784589

`A227362(n+1)-A151949(A004185(n+1))`
-/

namespace A180409.P10289699312393784589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (n + 1) - A151949 (A004185 (n + 1)).toNat

end

end A180409.P10289699312393784589

/-!
# A180410: Unique digits used in n in numerical order.

The programs for A180410, there is no canonical definition to state claims against.
-/

/-! ## A180410.P2273711528439362663

`A137564(A004185(n+1))`
-/

namespace A180410.P2273711528439362663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A004185 (n + 1)).toNat

end

end A180410.P2273711528439362663

/-! ## A180410.P18302808314367521574

`A004086(A227362(n+1))`
-/

namespace A180410.P18302808314367521574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A227362 (n + 1)).toNat

end

end A180410.P18302808314367521574

/-! ## A180410.P7379673888080565986

`A004185(A227362(2*n+1-n))`
-/

namespace A180410.P7379673888080565986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A227362 (2 * n + 1 - n)).toNat

end

end A180410.P7379673888080565986

/-! ## A180410.P14086505710565501820

`A193581(A004185(n))+A004185(A227362(n+1))`
-/

namespace A180410.P14086505710565501820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A004185 n).toNat + A004185 (A227362 (n + 1)).toNat

end

end A180410.P14086505710565501820

/-! ## A180410.P848308453846110401

`A004185(5*(A227362(n+1)+A227362(n+1)))`
-/

namespace A180410.P848308453846110401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (5 * (A227362 (n + 1) + A227362 (n + 1))).toNat

end

end A180410.P848308453846110401

/-! ## A180410.P17068861733856722265

`A180409(A004151(n+1))`
-/

namespace A180410.P17068861733856722265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A004151 (n + 1)).toNat

end

end A180410.P17068861733856722265

/-! ## A180410.P6275503652324032093

`A004185(A180409(n+1))`
-/

namespace A180410.P6275503652324032093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A180409 (n + 1)).toNat

end

end A180410.P6275503652324032093

/-! ## A180410.P422989375743005621

`A180409(A004719(n+1))`
-/

namespace A180410.P422989375743005621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A004719 (n + 1)).toNat

end

end A180410.P422989375743005621

/-! ## A180410.P17464092094669718833

`A180409(A068636(n+1))`
-/

namespace A180410.P17464092094669718833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A068636 (n + 1)).toNat

end

end A180410.P17464092094669718833

/-! ## A180410.P8421843466652432511

`A180409(A004186(n+1)-A151949(n+1))`
-/

namespace A180410.P8421843466652432511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A004186 (n + 1) - A151949 (n + 1)).toNat

end

end A180410.P8421843466652432511

/-!
# A180411: Sum of the semiprime divisors (with repetition) of the n-th number with two or more distinct semiprime divisors.

The programs for A180411, there is no canonical definition to state claims against.
-/

/-! ## A180411.P17944888598162939030

`A163407(A102467(n+2))`
-/

namespace A180411.P17944888598162939030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (A102467 (n + 2)).toNat

end

end A180411.P17944888598162939030

/-! ## A180411.P8181117167991960254

`A163407(lt[2, A284463(n)])`
-/

namespace A180411.P8181117167991960254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180411.P8181117167991960254

/-!
# A180412: Lexicographically earliest increasing sequence of numbers with all odd digits alternating with numbers with all even digits.

The programs for A180412, there is no canonical definition to state claims against.
-/

/-! ## A180412.P6475379510900895622

`record[A059707(A014261(n+1)-A059708(n+1))]`
-/

namespace A180412.P6475379510900895622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A014261 (n + 1) - A059708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180412.P6475379510900895622

/-! ## A180412.P3065769698242575284

`record[A059717(A014261(n+1)-A059708(n+1))]`
-/

namespace A180412.P3065769698242575284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A014261 (n + 1) - A059708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180412.P3065769698242575284

/-! ## A180412.P15543855112374449149

`A391869(A137667(n+1))`
-/

namespace A180412.P15543855112374449149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391869 (A137667 (n + 1)).toNat

end

end A180412.P15543855112374449149

/-! ## A180412.P2154710934125668720

`lt[A106747(A047842(n)), A031298(n)]`
-/

namespace A180412.P2154710934125668720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A047842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180412.P2154710934125668720

/-! ## A180412.P12589344548024036334

`A138471(A068861(n+1))+A051885(A187829(n+1))`
-/

namespace A180412.P12589344548024036334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A068861 (n + 1)).toNat + A051885 (A187829 (n + 1)).toNat

end

end A180412.P12589344548024036334

/-!
# A180413: Total number of possible knight moves on an n X n X n chessboard, if the knight is placed anywhere.

The programs for A180413, the canonical program `A180413.P13314836888053146618` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180413 has offset 1).

The definition of A180413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180413.P13314836888053146618

`∑[∑[12*12*n]]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180413

/-- `∑[∑[12*12*n]]` -/
def P13314836888053146618.Spec : Prop :=
  ∀ n, (P13314836888053146618.a n : ℤ) = A180413 (n + 1)

theorem P13314836888053146618.correct : P13314836888053146618.Spec := by
  intro n
  simp only [A180413, Nat.add_sub_cancel]

end A180413

/-! ## A180413.P4245754173323133882

`12*12*C(n+2, 3)`
-/

namespace A180413.P4245754173323133882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (12 * Nat.choose (n + 2) 3)

end

end A180413.P4245754173323133882

namespace A180413

/-- `12*12*C(n+2, 3)` -/
def P4245754173323133882.Spec : Prop :=
  ∀ n, (P4245754173323133882.a n : ℤ) = A180413 (n + 1)

end A180413

/-! ## A180413.P17626107485535548752

`24*lcm(n+1, n*(n+2))`
-/

namespace A180413.P17626107485535548752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.lcm (n + 1) (n * (n + 2))

end

end A180413.P17626107485535548752

namespace A180413

/-- `24*lcm(n+1, n*(n+2))` -/
def P17626107485535548752.Spec : Prop :=
  ∀ n, (P17626107485535548752.a n : ℤ) = A180413 (n + 1)

end A180413

/-! ## A180413.P17736295003678963859

`4*∑[A162940(n)]`
-/

namespace A180413.P17736295003678963859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180413.P17736295003678963859

namespace A180413

/-- `4*∑[A162940(n)]` -/
def P17736295003678963859.Spec : Prop :=
  ∀ n, P17736295003678963859.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P17604645736148124098

`9*∑[A035008(n)]`
-/

namespace A180413.P17604645736148124098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180413.P17604645736148124098

namespace A180413

/-- `9*∑[A035008(n)]` -/
def P17604645736148124098.Spec : Prop :=
  ∀ n, P17604645736148124098.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P17285877192397523785

`12*∑[A049598(n)]`
-/

namespace A180413.P17285877192397523785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180413.P17285877192397523785

namespace A180413

/-- `12*∑[A049598(n)]` -/
def P17285877192397523785.Spec : Prop :=
  ∀ n, P17285877192397523785.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P1516174189614773051

`9*A102860(n+2)`
-/

namespace A180413.P1516174189614773051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A102860 (n + 2)

end

end A180413.P1516174189614773051

namespace A180413

/-- `9*A102860(n+2)` -/
def P1516174189614773051.Spec : Prop :=
  ∀ n, P1516174189614773051.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P16439649454732496347

`12*n*A046092(n+1)`
-/

namespace A180413.P16439649454732496347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) * A046092 (n + 1)

end

end A180413.P16439649454732496347

namespace A180413

/-- `12*n*A046092(n+1)` -/
def P16439649454732496347.Spec : Prop :=
  ∀ n, P16439649454732496347.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P4239954752466182397

`12*(n+1)*A054000(n+1)`
-/

namespace A180413.P4239954752466182397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) * A054000 (n + 1)

end

end A180413.P4239954752466182397

namespace A180413

/-- `12*(n+1)*A054000(n+1)` -/
def P4239954752466182397.Spec : Prop :=
  ∀ n, P4239954752466182397.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P17973451161696730514

`12*A300758(n)-a(n-1)` with `a(0)=0`
-/

namespace A180413.P17973451161696730514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  12 * A300758 n - a (n - 1)

end

end A180413.P17973451161696730514

namespace A180413

/-- `12*A300758(n)-a(n-1)` -/
def P17973451161696730514.Spec : Prop :=
  ∀ n, P17973451161696730514.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P12047340396452158832

`(n+1)*(n+2)*A008606(n)`
-/

namespace A180413.P12047340396452158832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 2 : ℤ) * A008606 n)

end

end A180413.P12047340396452158832

namespace A180413

/-- `(n+1)*(n+2)*A008606(n)` -/
def P12047340396452158832.Spec : Prop :=
  ∀ n, P12047340396452158832.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P7578980899491102607

`A027480(n)*A040552(n)`
-/

namespace A180413.P7578980899491102607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n * A040552 n

end

end A180413.P7578980899491102607

namespace A180413

/-- `A027480(n)*A040552(n)` -/
def P7578980899491102607.Spec : Prop :=
  ∀ n, P7578980899491102607.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P2783127760851569484

`A040306(n)*A210440(n)`
-/

namespace A180413.P2783127760851569484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n * A210440 n

end

end A180413.P2783127760851569484

namespace A180413

/-- `A040306(n)*A210440(n)` -/
def P2783127760851569484.Spec : Prop :=
  ∀ n, P2783127760851569484.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P4126710036108925331

`A049598(n)*A192544(n+1)`
-/

namespace A180413.P4126710036108925331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n * A192544 (n + 1)

end

end A180413.P4126710036108925331

namespace A180413

/-- `A049598(n)*A192544(n+1)` -/
def P4126710036108925331.Spec : Prop :=
  ∀ n, P4126710036108925331.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P12692857122026296839

`A134582(n+1)*A230628(n+1)`
-/

namespace A180413.P12692857122026296839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134582 (n + 1) * A230628 (n + 1)

end

end A180413.P12692857122026296839

namespace A180413

/-- `A134582(n+1)*A230628(n+1)` -/
def P12692857122026296839.Spec : Prop :=
  ∀ n, P12692857122026296839.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P7096166553958949604

`6*A272871(n+1)`
-/

namespace A180413.P7096166553958949604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A272871 (n + 1)

end

end A180413.P7096166553958949604

namespace A180413

/-- `6*A272871(n+1)` -/
def P7096166553958949604.Spec : Prop :=
  ∀ n, P7096166553958949604.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P5309017427107676944

`3*n*A035008(n+1)`
-/

namespace A180413.P5309017427107676944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A035008 (n + 1))

end

end A180413.P5309017427107676944

namespace A180413

/-- `3*n*A035008(n+1)` -/
def P5309017427107676944.Spec : Prop :=
  ∀ n, P5309017427107676944.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P11554372212180262826

`4*n*A049598(n+1)`
-/

namespace A180413.P11554372212180262826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A049598 (n + 1)

end

end A180413.P11554372212180262826

namespace A180413

/-- `4*n*A049598(n+1)` -/
def P11554372212180262826.Spec : Prop :=
  ∀ n, P11554372212180262826.a n = A180413 (n + 1)

end A180413

/-! ## A180413.P7175973431030184351

`6*n*A033996(n+1)`
-/

namespace A180413.P7175973431030184351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) * A033996 (n + 1)

end

end A180413.P7175973431030184351

namespace A180413

/-- `6*n*A033996(n+1)` -/
def P7175973431030184351.Spec : Prop :=
  ∀ n, P7175973431030184351.a n = A180413 (n + 1)

end A180413

/-!
# A180414: Number of different resistances that can be obtained by combining n one-ohm resistors.

The programs for A180414, there is no canonical definition to state claims against.
-/

/-! ## A180414.P1414506756074287976

`A338197(n)+a(n-1)` with `a(0)=1`
-/

namespace A180414.P1414506756074287976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338197 n + a (n - 1)

end

end A180414.P1414506756074287976

/-! ## A180414.P14193359428579310985

`∑[A338197(round(sqrt(n²+1)))]`
-/

namespace A180414.P14193359428579310985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338197 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180414.P14193359428579310985

/-! ## A180414.P14815668178469016489

`∑[A338197(A028310(n))]-char[23]`
-/

namespace A180414.P14815668178469016489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338197 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180414.P14815668178469016489

/-! ## A180414.P12773972154206572486

`∑[A338197(A123108(2*n))]-char[23]`
-/

namespace A180414.P12773972154206572486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338197 (A123108 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180414.P12773972154206572486

/-! ## A180414.P15219612918257968556

`∑[A338197(A000007(n)+n)]-char[23]`
-/

namespace A180414.P15219612918257968556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338197 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180414.P15219612918257968556

/-!
# A180415: a(n) = (n^3 - 3n^2 + 14n - 6)/6.

The programs for A180415, the canonical program `A180415.P14238505771520257623` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180415 has offset 1).

The definition of A180415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180415.P14238505771520257623

`∑[C(n, 2)+2]-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180415

/-- `∑[C(n, 2)+2]-1` -/
def P14238505771520257623.Spec : Prop :=
  ∀ n, P14238505771520257623.a n = A180415 (n + 1)

theorem P14238505771520257623.correct : P14238505771520257623.Spec := by
  intro n
  simp only [A180415, Nat.add_sub_cancel]

end A180415

/-! ## A180415.P16486081952933200476

`C(n+3, 3)-n²`
-/

namespace A180415.P16486081952933200476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (n ^ 2 : ℤ)

end

end A180415.P16486081952933200476

namespace A180415

/-- `C(n+3, 3)-n²` -/
def P16486081952933200476.Spec : Prop :=
  ∀ n, P16486081952933200476.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P17049993993824679516

`∑[n+1]+C(n, 3)`
-/

namespace A180415.P17049993993824679516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A180415.P17049993993824679516

namespace A180415

/-- `∑[n+1]+C(n, 3)` -/
def P17049993993824679516.Spec : Prop :=
  ∀ n, (P17049993993824679516.a n : ℤ) = A180415 (n + 1)

end A180415

/-! ## A180415.P15558691267119758078

`∑[∑[abs(1-n)]]+n`
-/

namespace A180415.P15558691267119758078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A180415.P15558691267119758078

namespace A180415

/-- `∑[∑[abs(1-n)]]+n` -/
def P15558691267119758078.Spec : Prop :=
  ∀ n, P15558691267119758078.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P5613286673275889338

`Δ[C(n+1, 4)+n²]`
-/

namespace A180415.P5613286673275889338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A180415.P5613286673275889338

namespace A180415

/-- `Δ[C(n+1, 4)+n²]` -/
def P5613286673275889338.Spec : Prop :=
  ∀ n, P5613286673275889338.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P13142435945878220742

`∑[∑[floor(n+1-atan(n))]]`
-/

namespace A180415.P13142435945878220742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - Real.arctan (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P13142435945878220742

namespace A180415

/-- `∑[∑[floor(n+1-atan(n))]]` -/
def P13142435945878220742.Spec : Prop :=
  ∀ n, P13142435945878220742.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P12307966902314337409

`∑[∑[n+1-ceil(atan(n))]]`
-/

namespace A180415.P12307966902314337409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈Real.arctan (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P12307966902314337409

namespace A180415

/-- `∑[∑[n+1-ceil(atan(n))]]` -/
def P12307966902314337409.Spec : Prop :=
  ∀ n, P12307966902314337409.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P4335790917960626302

`∑[∑[n-a(2%n)]]` with `a(0)=1, a(1)=1`
-/

namespace A180415.P4335790917960626302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) - f2 (2 % n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P4335790917960626302

namespace A180415

/-- `∑[∑[n-a(2%n)]]` -/
def P4335790917960626302.Spec : Prop :=
  ∀ n, P4335790917960626302.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P4339156725126992244

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A180415.P4339156725126992244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P4339156725126992244

namespace A180415

/-- `∑[∑[a(n-1)+1]]` -/
def P4339156725126992244.Spec : Prop :=
  ∀ n, (P4339156725126992244.a n : ℤ) = A180415 (n + 1)

end A180415

/-! ## A180415.P2810050124771387431

`∑[n-(1-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A180415.P2810050124771387431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P2810050124771387431

namespace A180415

/-- `∑[n-(1-a(n-1))]` -/
def P2810050124771387431.Spec : Prop :=
  ∀ n, P2810050124771387431.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P6294935660989597990

`floor(a(n-1)+C(n, 2)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A180415.P6294935660989597990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose n 2 + 2)

end

end A180415.P6294935660989597990

namespace A180415

/-- `floor(a(n-1)+C(n, 2)+2)` -/
def P6294935660989597990.Spec : Prop :=
  ∀ n, (P6294935660989597990.a n : ℤ) = A180415 (n + 1)

end A180415

/-! ## A180415.P12146473362451205703

`floor(2*n+C(n+1, 3)+ϕ)`
-/

namespace A180415.P12146473362451205703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) + ((Nat.choose (n + 1) 3 : ℝ) + Real.goldenRatio)⌋

end

end A180415.P12146473362451205703

namespace A180415

/-- `floor(2*n+C(n+1, 3)+ϕ)` -/
def P12146473362451205703.Spec : Prop :=
  ∀ n, P12146473362451205703.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P8463165518248345704

`∑[∑[n+1]-comp[lcm(2, n+1)]]`
-/

namespace A180415.P8463165518248345704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P8463165518248345704

namespace A180415

/-- `∑[∑[n+1]-comp[lcm(2, n+1)]]` -/
def P8463165518248345704.Spec : Prop :=
  ∀ n, P8463165518248345704.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P15559967103932867653

`∑[∑[n]-C(n, 2*n)-(n-2)]`
-/

namespace A180415.P15559967103932867653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose n (2 * n) : ℤ) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P15559967103932867653

namespace A180415

/-- `∑[∑[n]-C(n, 2*n)-(n-2)]` -/
def P15559967103932867653.Spec : Prop :=
  ∀ n, P15559967103932867653.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P4499962649505293263

`∑[(n²+2)%∑[n+1]+n+1]`
-/

namespace A180415.P4499962649505293263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2) % (∑ j ∈ Finset.range (n + 1), f2 j) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P4499962649505293263

namespace A180415

/-- `∑[(n²+2)%∑[n+1]+n+1]` -/
def P4499962649505293263.Spec : Prop :=
  ∀ n, (P4499962649505293263.a n : ℤ) = A180415 (n + 1)

end A180415

/-! ## A180415.P2175538390264853735

`floor(a(n-1)-((n-n²)/2-2))` with `a(0)=1`
-/

namespace A180415.P2175538390264853735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (((n : ℤ) - (n ^ 2 : ℤ) : ℚ) / 2 - 2)⌋

end

end A180415.P2175538390264853735

namespace A180415

/-- `floor(a(n-1)-((n-n²)/2-2))` -/
def P2175538390264853735.Spec : Prop :=
  ∀ n, P2175538390264853735.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P2068973214420066962

`floor(∑[lcm(n, n-1)/2]+2*n+1)`
-/

namespace A180415.P2068973214420066962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℚ)⌋

end

end A180415.P2068973214420066962

namespace A180415

/-- `floor(∑[lcm(n, n-1)/2]+2*n+1)` -/
def P2068973214420066962.Spec : Prop :=
  ∀ n, P2068973214420066962.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P17401241979403634048

`floor((n-1)*n/2+a(n-1)+2)` with `a(0)=1`
-/

namespace A180415.P17401241979403634048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) * ((n : ℚ) / 2) + (a (n - 1) + 2 : ℚ)⌋

end

end A180415.P17401241979403634048

namespace A180415

/-- `floor((n-1)*n/2+a(n-1)+2)` -/
def P17401241979403634048.Spec : Prop :=
  ∀ n, P17401241979403634048.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P11748967041794659366

`∑[A089071(n+1)]`
-/

namespace A180415.P11748967041794659366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P11748967041794659366

namespace A180415

/-- `∑[A089071(n+1)]` -/
def P11748967041794659366.Spec : Prop :=
  ∀ n, P11748967041794659366.a n = A180415 (n + 1)

end A180415

/-! ## A180415.P11412969028034842814

`∑[A133263(n)-n]`
-/

namespace A180415.P11412969028034842814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180415.P11412969028034842814

namespace A180415

/-- `∑[A133263(n)-n]` -/
def P11412969028034842814.Spec : Prop :=
  ∀ n, P11412969028034842814.a n = A180415 (n + 1)

end A180415

/-!
# A180416: Number of positive integers below 10^n, excluding perfect squares, which have a representation as a sum of 2 positive squares.

The programs for A180416, there is no canonical definition to state claims against.
-/

/-! ## A180416.P13856327320301037595

`∑[A180426(n+1)]`
-/

namespace A180416.P13856327320301037595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180416.P13856327320301037595

/-! ## A180416.P11302816510340434463

`∑[record[A180426(A000119(n))]]`
-/

namespace A180416.P11302816510340434463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180416.P11302816510340434463

/-! ## A180416.P3023339871965110142

`∑[record[A180426(A020986(n))]]`
-/

namespace A180416.P3023339871965110142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180416.P3023339871965110142

/-! ## A180416.P7663994488575235610

`∑[record[A180426(A028920(n))]]`
-/

namespace A180416.P7663994488575235610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180416.P7663994488575235610

/-! ## A180416.P11627633862782730440

`∑[record[A180426(A037162(n))]]`
-/

namespace A180416.P11627633862782730440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (A037162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180416.P11627633862782730440

/-!
# A180417: a(n) = (A000111(2^n) - 1) / 2^n.

The programs for A180417, there is no canonical definition to state claims against.
-/

/-! ## A180417.P12094245977999536176

`(A000111(2^n)-1)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180417.P12094245977999536176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (2 ^ n) - 1 : ℚ) / (2 ^ n : ℚ)

end

end A180417.P12094245977999536176

/-!
# A180418: a(n) = ( A000111(p) -(-1)^((p-1)/2) )/p, where p = prime(n).

The programs for A180418, there is no canonical definition to state claims against.
-/

/-! ## A180418.P4767219757393212380

`A137590(p?[2*n+1])`
-/

namespace A180418.P4767219757393212380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137590 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A180418.P4767219757393212380

/-! ## A180418.P17844891854694230950

`A137590(A065091(n+1))`
-/

namespace A180418.P17844891854694230950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137590 (A065091 (n + 1)).toNat

end

end A180418.P17844891854694230950

/-! ## A180418.P5355980838571446182

`A137590(A000040(n+2))`
-/

namespace A180418.P5355980838571446182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137590 (A000040 (n + 2)).toNat

end

end A180418.P5355980838571446182

/-! ## A180418.P16854919288308006823

`record[A137590(A006530(n+1))]`
-/

namespace A180418.P16854919288308006823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137590 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180418.P16854919288308006823

/-!
# A180419: a(n) = (A000111(2*p) - 1)/(2*p), where p = A000040(n) = prime(n).

The programs for A180419, there is no canonical definition to state claims against.
-/

/-! ## A180419.P8039457525756530116

`A137590(2*A000040(n+1))`
-/

namespace A180419.P8039457525756530116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137590 (2 * A000040 (n + 1)).toNat

end

end A180419.P8039457525756530116

/-! ## A180419.P14463140803568711690

`A137590(record[2*A006530(n+2)])`
-/

namespace A180419.P14463140803568711690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180419.P14463140803568711690

/-!
# A180420: G.f. A(x) satisfies A(A(x)) = x + A(2*x)^2.

The programs for A180420, there is no canonical definition to state claims against.
-/

/-! ## A180420.P3245152943840514457

`A029935(A076766(∑[n]))`
-/

namespace A180420.P3245152943840514457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A076766 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A180420.P3245152943840514457

/-!
# A180421: Members p of A091366 such that digit-reverse(p) is also in A091366.

The programs for A180421, there is no canonical definition to state claims against.
-/

/-! ## A180421.P13558218845186801433

`∩[A007500(n+1), A225534(n+1)]`
-/

namespace A180421.P13558218845186801433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180421.P13558218845186801433

/-! ## A180421.P12071322409701803785

`∩[A007500(n+1), A091366(n+1)]`
-/

namespace A180421.P12071322409701803785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180421.P12071322409701803785

/-! ## A180421.P12077938009904498352

`p?[A151764(A091366(n+1))]`
-/

namespace A180421.P12077938009904498352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (A091366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180421.P12077938009904498352

/-! ## A180421.P10284605292071723481

`p?[A151765(p?[A091366(n+1)])]`
-/

namespace A180421.P10284605292071723481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091366 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151765 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180421.P10284605292071723481

/-! ## A180421.P6815394230809265019

`p?[A151765(p?[A225534(n+1)])]`
-/

namespace A180421.P6815394230809265019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151765 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180421.P6815394230809265019

/-! ## A180421.P16627792449263855793

`∩[A074895(n+1), A091366(n+1)]`
-/

namespace A180421.P16627792449263855793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180421.P16627792449263855793

/-! ## A180421.P6784546284057968919

`∩[A091366(n+1), A095179(n+1)]`
-/

namespace A180421.P6784546284057968919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180421.P6784546284057968919

/-!
# A180424: "ARE(n,k)" triangle read by rows. ARE(n,k) is the number of aperiodic k-reverses of n up to cyclic equivalence.

The programs for A180424, there is no canonical definition to state claims against.
-/

/-! ## A180424.P7992139789889442022

`A181169(n+1)+char[∑[n]]`
-/

namespace A180424.P7992139789889442022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181169 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180424.P7992139789889442022

/-! ## A180424.P15679541605154969637

`A180279(n+1)/A128227(n)`
-/

namespace A180424.P15679541605154969637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A180424.P15679541605154969637

/-! ## A180424.P18426059441087501647

`A180279(n+1)/A193738(n)`
-/

namespace A180424.P18426059441087501647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A180424.P18426059441087501647

/-! ## A180424.P11737963553300762532

`gcd(A106459(n), A181169(n+1))`
-/

namespace A180424.P11737963553300762532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A181169 (n + 1))

end

end A180424.P11737963553300762532

/-! ## A180424.P15570110472596962834

`or(A010054(n), A181169(n+1))`
-/

namespace A180424.P15570110472596962834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A181169 (n + 1))

end

end A180424.P15570110472596962834

/-! ## A180424.P2974933166613853907

`A180279(n+1)/A002260(n+1)`
-/

namespace A180424.P2974933166613853907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A180424.P2974933166613853907

/-! ## A180424.P7102081776482987251

`A180279(n+1)/A080511(n+1)`
-/

namespace A180424.P7102081776482987251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A180424.P7102081776482987251

/-! ## A180424.P1539418218287016234

`A180279(n+1)/A080818(n+1)`
-/

namespace A180424.P1539418218287016234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A080818 (n + 1) : ℚ)

end

end A180424.P1539418218287016234

/-! ## A180424.P10003263877932164281

`A180279(n+1)/A081517(n+1)`
-/

namespace A180424.P10003263877932164281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A081517 (n + 1) : ℚ)

end

end A180424.P10003263877932164281

/-! ## A180424.P17649863428967001783

`A180279(n+1)/A128077(n+1)`
-/

namespace A180424.P17649863428967001783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A128077 (n + 1) : ℚ)

end

end A180424.P17649863428967001783

/-! ## A180424.P16402463927014798655

`A180279(n+1)/A080508(n+1)`
-/

namespace A180424.P16402463927014798655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180279 (n + 1) : ℚ) / (A080508 (n + 1) : ℚ)

end

end A180424.P16402463927014798655

/-!
# A180425: Number of positive integers below 10^n requiring 3 positive squares in their representation as sum of squares.

The programs for A180425, there is no canonical definition to state claims against.
-/

/-! ## A180425.P5203613352918798237

`∑[A180429(n+1)]`
-/

namespace A180425.P5203613352918798237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180425.P5203613352918798237

/-! ## A180425.P805792080954878832

`∑[record[A180429(A000119(n))]]`
-/

namespace A180425.P805792080954878832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180429 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180425.P805792080954878832

/-! ## A180425.P7338840485186714102

`∑[record[A180429(A020986(n))]]`
-/

namespace A180425.P7338840485186714102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180429 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180425.P7338840485186714102

/-! ## A180425.P15369855982341459446

`∑[record[A180429(A028920(n))]]`
-/

namespace A180425.P15369855982341459446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180429 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180425.P15369855982341459446

/-! ## A180425.P13993944421522560913

`∑[record[A180429(A037162(n))]]`
-/

namespace A180425.P13993944421522560913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180429 (A037162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180425.P13993944421522560913

/-!
# A180426: The number of n-digit numbers requiring 2 nonzero squares in their representation as sum of squares.

The programs for A180426, there is no canonical definition to state claims against.
-/

/-! ## A180426.P1856525487509310330

`Δ[A180416(A028310(n))%A180416(n+1)]`
-/

namespace A180426.P1856525487509310330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180416 (A028310 n).toNat) (A180416 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180426.P1856525487509310330

/-!
# A180428: Inverse permutation of A180427. Also the absolute values of the first differences of A180427.

The programs for A180428, there is no canonical definition to state claims against.
-/

/-! ## A180428.P5523141614434376957

`abs(Δ[A180427(n+1)])`
-/

namespace A180428.P5523141614434376957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A180428.P5523141614434376957

/-! ## A180428.P12538406837903132610

`A056926(Δ[A180427(n+1)]²)`
-/

namespace A180428.P12538406837903132610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A180428.P12538406837903132610

/-! ## A180428.P9409895265726704542

`gcd(Δ[A180427(n+1)], A000038(n))`
-/

namespace A180428.P9409895265726704542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A180428.P9409895265726704542

/-! ## A180428.P9746325731682471040

`lcm(Δ[A180427(n+1)], A020985(n))`
-/

namespace A180428.P9746325731682471040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A180428.P9746325731682471040

/-! ## A180428.P9245905155575441895

`∑{d}[Δ[A180427(n+1)], A000010(#)]`
-/

namespace A180428.P9245905155575441895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A180428.P9245905155575441895

/-! ## A180428.P9948357537449022670

`∏{d}[Δ[A180427(n+1)], A014963(#)]`
-/

namespace A180428.P9948357537449022670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A180428.P9948357537449022670

/-! ## A180428.P6921575970196181079

`root((A180427(n+2)-A180427(n+1))², 2)`
-/

namespace A180428.P6921575970196181079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A180427 (n + 2) - A180427 (n + 1)) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A180428.P6921575970196181079

/-!
# A180430: Triangle T(n,k) defined by the recurrence in the formula.

The programs for A180430, there is no canonical definition to state claims against.
-/

/-! ## A180430.P12854185777255250859

`A184334(A058843(n+1)-A266493(n+1))`
-/

namespace A180430.P12854185777255250859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184334 (A058843 (n + 1) - A266493 (n + 1)).toNat

end

end A180430.P12854185777255250859

/-! ## A180430.P13339186422426317476

`A000002(A223255(n+5))*A112468(n)`
-/

namespace A180430.P13339186422426317476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A223255 (n + 5)).toNat * A112468 n

end

end A180430.P13339186422426317476

/-!
# A180432: Start with 3. If a, b in sequence, so is ab+1.

The programs for A180432, there is no canonical definition to state claims against.
-/

/-! ## A180432.P11163974607195186059

`A192518(n+1)+1`
-/

namespace A180432.P11163974607195186059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192518 (n + 1) + 1

end

end A180432.P11163974607195186059

/-! ## A180432.P5670832085424045220

`A020725(A192518(n+1))`
-/

namespace A180432.P5670832085424045220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A192518 (n + 1)).toNat

end

end A180432.P5670832085424045220

/-!
# A180433: Binary string formed from the binary expansion of Pi by exchanging 0's and 1's.

The programs for A180433, there is no canonical definition to state claims against.
-/

/-! ## A180433.P11899954239670062289

`1-∑[A155482(n)]`
-/

namespace A180433.P11899954239670062289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180433.P11899954239670062289

/-! ## A180433.P4322623967759859363

`1-A004601(n+2)`
-/

namespace A180433.P4322623967759859363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004601 (n + 2)

end

end A180433.P4322623967759859363

/-! ## A180433.P7386384564977713373

`and(1, A159959(n)+1)`
-/

namespace A180433.P7386384564977713373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A159959 n + 1)

end

end A180433.P7386384564977713373

/-! ## A180433.P16828953715353084180

`1-char[A004711(n+1)-1]`
-/

namespace A180433.P16828953715353084180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A180433.P16828953715353084180

/-! ## A180433.P4851311111898055968

`xor(1, A004601(C(n+2, n+1)))`
-/

namespace A180433.P4851311111898055968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004601 (Nat.choose (n + 2) (n + 1)))

end

end A180433.P4851311111898055968

/-! ## A180433.P3760727981654353365

`A000007(∑[A155482(n)])`
-/

namespace A180433.P3760727981654353365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180433.P3760727981654353365

/-! ## A180433.P12398320316116802137

`A003783(∑[A155482(n)])`
-/

namespace A180433.P12398320316116802137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003783 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180433.P12398320316116802137

/-! ## A180433.P4716792851878369337

`A046765(∑[A155482(n)])`
-/

namespace A180433.P4716792851878369337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180433.P4716792851878369337

/-! ## A180433.P12575830066247849955

`A155482(∑[A155482(n)])`
-/

namespace A180433.P12575830066247849955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180433.P12575830066247849955

/-! ## A180433.P17970459008928667316

`and(1, A158388(n)-A159959(n))`
-/

namespace A180433.P17970459008928667316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A158388 n - A159959 n)

end

end A180433.P17970459008928667316

/-! ## A180433.P3922734311347174764

`char[eq[A000038(n), A004601(n+2)]]`
-/

namespace A180433.P3922734311347174764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A180433.P3922734311347174764

/-! ## A180433.P4245720813394309283

`xor(A000041(gcd(n, n+1)), A004601(n+2))`
-/

namespace A180433.P4245720813394309283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.gcd n (n + 1))) (A004601 (n + 2))

end

end A180433.P4245720813394309283

/-! ## A180433.P5297264066084332586

`xor(A001222(A151800(n)), A004601(n+2))`
-/

namespace A180433.P5297264066084332586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A151800 n).toNat) (A004601 (n + 2))

end

end A180433.P5297264066084332586

/-! ## A180433.P16303271712712237456

`and(A004601(n+2)+1, A000045(A020639(2*(n+1))))`
-/

namespace A180433.P16303271712712237456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004601 (n + 2) + 1) (A000045 (A020639 (2 * (n + 1))).toNat)

end

end A180433.P16303271712712237456

/-! ## A180433.P13107227025166804837

`A000007((n+1)*A004601(n+2))`
-/

namespace A180433.P13107227025166804837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A004601 (n + 2)).toNat

end

end A180433.P13107227025166804837

/-! ## A180433.P17753516587301255323

`A059841(A159959(n))`
-/

namespace A180433.P17753516587301255323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159959 n).toNat

end

end A180433.P17753516587301255323

/-! ## A180433.P18009390184225155272

`A000035(A159959(n)+1)`
-/

namespace A180433.P18009390184225155272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159959 n + 1).toNat

end

end A180433.P18009390184225155272

/-! ## A180433.P13745156050021309380

`xor(A001221(A040976(n+1)+2), A004601(n+2))`
-/

namespace A180433.P13745156050021309380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A040976 (n + 1) + 2).toNat) (A004601 (n + 2))

end

end A180433.P13745156050021309380

/-! ## A180433.P5420743158574345290

`xor(A001222(A040976(n+1)+2), A004601(n+2))`
-/

namespace A180433.P5420743158574345290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A040976 (n + 1) + 2).toNat) (A004601 (n + 2))

end

end A180433.P5420743158574345290

/-! ## A180433.P11928844316822800891

`xor(A000010(A014963(2*(n+1))), A004601(n+2))`
-/

namespace A180433.P11928844316822800891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000010 (A014963 (2 * (n + 1))).toNat) (A004601 (n + 2))

end

end A180433.P11928844316822800891

/-!
# A180434: Decimal expansion of constant 2 - Pi/2.

The programs for A180434, there is no canonical definition to state claims against.
-/

/-! ## A180434.P2082422577170756567

`9-A019669(n+1)`
-/

namespace A180434.P2082422577170756567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019669 (n + 1 + 1)

end

end A180434.P2082422577170756567

/-! ## A180434.P17774078920269387929

`a(n-1)-Δ[A019669(n)]` with `a(0)=4`
-/

namespace A180434.P17774078920269387929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A180434.P17774078920269387929

/-!
# A180435: a(n) = a(n-1)*2^n+n, a(0)=1.

The programs for A180435, the canonical program `A180435.P2476178535805557328` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180435 has offset 0).

The definition of A180435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2^n+n` (program `A180435.P2476178535805557328`, by `A180435.P2476178535805557328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180435.P2476178535805557328

`a(n-1)*2^n+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180435

/-- `a(n-1)*2^n+n` -/
def P2476178535805557328.Spec : Prop :=
  ∀ n, (P2476178535805557328.a n : ℤ) = A180435 n

theorem P2476178535805557328.correct : P2476178535805557328.Spec := by
  intro n
  simp only [A180435]

end A180435

/-! ## A180435.P475853814589525737

`or(n, 2^n*a(n-1))` with `a(0)=1`
-/

namespace A180435.P475853814589525737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor n (2 ^ n * a (n - 1))

end

end A180435.P475853814589525737

namespace A180435

/-- `or(n, 2^n*a(n-1))` -/
def P475853814589525737.Spec : Prop :=
  ∀ n, (P475853814589525737.a n : ℤ) = A180435 n

end A180435

/-! ## A180435.P12342063482105017256

`xor(n, 2^n*a(n-1))` with `a(0)=1`
-/

namespace A180435.P12342063482105017256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor n (2 ^ n * a (n - 1))

end

end A180435.P12342063482105017256

namespace A180435

/-- `xor(n, 2^n*a(n-1))` -/
def P12342063482105017256.Spec : Prop :=
  ∀ n, (P12342063482105017256.a n : ℤ) = A180435 n

end A180435

/-! ## A180435.P6149809332593442467

`a(n-1)/(1/2)^n+n` with `a(0)=1`
-/

namespace A180435.P6149809332593442467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ n + (n : ℚ)

end

end A180435.P6149809332593442467

namespace A180435

/-- `a(n-1)/(1/2)^n+n` -/
def P6149809332593442467.Spec : Prop :=
  ∀ n, P6149809332593442467.a n = (A180435 n : ℚ)

end A180435

/-! ## A180435.P1173022364963118783

`(A000079(n)+n/a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A180435.P1173022364963118783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A000079 n : ℚ) + (n : ℚ) / a (n - 1)) * a (n - 1)

end

end A180435.P1173022364963118783

namespace A180435

/-- `(A000079(n)+n/a(n-1))*a(n-1)` -/
def P1173022364963118783.Spec : Prop :=
  ∀ n, P1173022364963118783.a n = (A180435 n : ℚ)

end A180435

/-!
# A180436: Palindromic numbers which are sum of consecutive squares.

The programs for A180436, there is no canonical definition to state claims against.
-/

/-! ## A180436.P4019168868673390053

`∩[A002113(n+1), A034705(n+2)]`
-/

namespace A180436.P4019168868673390053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180436.P4019168868673390053

/-! ## A180436.P15828449763685658033

`filter[A034705(n+2), A136522(#)]`
-/

namespace A180436.P15828449763685658033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A180436.P15828449763685658033

/-! ## A180436.P5549954750286354422

`lt[A060568(n+1), A296338(n+1)]+1`
-/

namespace A180436.P5549954750286354422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A180436.P5549954750286354422

/-!
# A180437: a(n) counts the distinct cubical (on alphabet of 3 symbols) billiard words with length n, acting as prefix to just k = 1 such word of length n+1 (that is, not "special").

The programs for A180437, there is no canonical definition to state claims against.
-/

/-! ## A180437.P17189409948678490263

`6*A022307(n!)`
-/

namespace A180437.P17189409948678490263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022307 (Nat.factorial n)

end

end A180437.P17189409948678490263

/-! ## A180437.P4773721000611703640

`6*A022307(∏[round(1/acot(n))])`
-/

namespace A180437.P4773721000611703640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022307 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180437.P4773721000611703640

/-! ## A180437.P14912735932054707597

`6*A022307(A061602(n))`
-/

namespace A180437.P14912735932054707597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022307 (A061602 n).toNat

end

end A180437.P14912735932054707597

/-!
# A180438: a(n) counts the distinct cubical (on alphabet of 3 symbols) billiard words with length n, acting as prefix to just k = 2 such words of length n+1 (that is, a subset of "special").

The programs for A180438, there is no canonical definition to state claims against.
-/

/-! ## A180438.P18321591109321774803

`6*A123068(A238859(n))`
-/

namespace A180438.P18321591109321774803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A123068 (A238859 n).toNat

end

end A180438.P18321591109321774803

/-! ## A180438.P6978391017349474586

`6*A259361(A272687(n))`
-/

namespace A180438.P6978391017349474586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A259361 (A272687 n).toNat

end

end A180438.P6978391017349474586

/-! ## A180438.P13091258009590136040

`6*A334966(A218576(n))`
-/

namespace A180438.P13091258009590136040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A334966 (A218576 n).toNat

end

end A180438.P13091258009590136040

/-!
# A180441: First term of four consecutive primes whose average is a prime.

The programs for A180441, there is no canonical definition to state claims against.
-/

/-! ## A180441.P1308526739693667734

`A000040(A000720(A126096(n+1)-7))`
-/

namespace A180441.P1308526739693667734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A126096 (n + 1) - 7).toNat).toNat

end

end A180441.P1308526739693667734

/-!
# A180442: Numbers k such that a sum of two or more consecutive squares beginning with k^2 is a square.

The programs for A180442, there is no canonical definition to state claims against.
-/

/-! ## A180442.P8144340494076170241

`lt[0, A075404(n+1)]+1`
-/

namespace A180442.P8144340494076170241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180442.P8144340494076170241

/-! ## A180442.P1266244270452948880

`lt[0, A075405(n+1)]+1`
-/

namespace A180442.P1266244270452948880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180442.P1266244270452948880

/-! ## A180442.P9599044119641265197

`lt[0, A075406(n+1)]+1`
-/

namespace A180442.P9599044119641265197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180442.P9599044119641265197

/-! ## A180442.P13117878914001523281

`eq[1, gcd(A075406(n+1), A358743(n+1))]+1`
-/

namespace A180442.P13117878914001523281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075406 (n + 1)) (A358743 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180442.P13117878914001523281

/-! ## A180442.P16244362248110412393

`lt[0, A184762(n+1)]+1`
-/

namespace A180442.P16244362248110412393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180442.P16244362248110412393

/-!
# A180444: a(n) equals the number of bispecial Sturmian words of length n, that is words which are prefix to two words of length n+1, and likewise suffix. Note that prefix and suffix are not independent, unless the word is also palindromic: see A000010.

The programs for A180444, the canonical program `A180444.P10879276139773560671` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180444 has offset 0).

The definition of A180444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180444.P10879276139773560671

`A053158(n+2)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180444

/-- `A053158(n+2)-2` -/
def P10879276139773560671.Spec : Prop :=
  ∀ n, P10879276139773560671.a n = A180444 n

theorem P10879276139773560671.correct : P10879276139773560671.Spec := by
  intro n
  simp only [A180444]

end A180444

/-! ## A180444.P13963690095615599525

`∑[2-A057000(n+1)]-1`
-/

namespace A180444.P13963690095615599525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A057000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180444.P13963690095615599525

namespace A180444

/-- `∑[2-A057000(n+1)]-1` -/
def P13963690095615599525.Spec : Prop :=
  ∀ n, P13963690095615599525.a n = A180444 n

end A180444

/-! ## A180444.P789406692991955832

`2*(n+1)-A000010(n+2)`
-/

namespace A180444.P789406692991955832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (n + 2)

end

end A180444.P789406692991955832

namespace A180444

/-- `2*(n+1)-A000010(n+2)` -/
def P789406692991955832.Spec : Prop :=
  ∀ n, P789406692991955832.a n = A180444 n

end A180444

/-! ## A180444.P17215464663384434276

`∑[2-Δ[A000010(n+1)]]-1`
-/

namespace A180444.P17215464663384434276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180444.P17215464663384434276

namespace A180444

/-- `∑[2-Δ[A000010(n+1)]]-1` -/
def P17215464663384434276.Spec : Prop :=
  ∀ n, P17215464663384434276.a n = A180444 n

end A180444

/-! ## A180444.P2804783017952751425

`n-A000010(lcm(2, n+2))+n+2`
-/

namespace A180444.P2804783017952751425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (Nat.lcm 2 (n + 2)) + (n + 2 : ℤ)

end

end A180444.P2804783017952751425

namespace A180444

/-- `n-A000010(lcm(2, n+2))+n+2` -/
def P2804783017952751425.Spec : Prop :=
  ∀ n, P2804783017952751425.a n = A180444 n

end A180444

/-! ## A180444.P11777623243293916008

`2-(A000010(2*n-(n-2))-2*n)`
-/

namespace A180444.P11777623243293916008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat - (2 * n : ℤ))

end

end A180444.P11777623243293916008

namespace A180444

/-- `2-(A000010(2*n-(n-2))-2*n)` -/
def P11777623243293916008.Spec : Prop :=
  ∀ n, P11777623243293916008.a n = A180444 n

end A180444

/-! ## A180444.P10117873831868152405

`n+2-A000010(C(n+2, n+1))+n`
-/

namespace A180444.P10117873831868152405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000010 (Nat.choose (n + 2) (n + 1)) + (n : ℤ)

end

end A180444.P10117873831868152405

namespace A180444

/-- `n+2-A000010(C(n+2, n+1))+n` -/
def P10117873831868152405.Spec : Prop :=
  ∀ n, P10117873831868152405.a n = A180444 n

end A180444

/-! ## A180444.P9956773795279672576

`A344372(n+1)+A106475(n)-A000010(n+2)`
-/

namespace A180444.P9956773795279672576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344372 (n + 1) + (A106475 n - A000010 (n + 2))

end

end A180444.P9956773795279672576

namespace A180444

/-- `A344372(n+1)+A106475(n)-A000010(n+2)` -/
def P9956773795279672576.Spec : Prop :=
  ∀ n, P9956773795279672576.a n = A180444 n

end A180444

/-! ## A180444.P6317183165284636197

`A000203(n+1)-(A033880(n+1)+A000010(n+2))`
-/

namespace A180444.P6317183165284636197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A033880 (n + 1) + A000010 (n + 2))

end

end A180444.P6317183165284636197

namespace A180444

/-- `A000203(n+1)-(A033880(n+1)+A000010(n+2))` -/
def P6317183165284636197.Spec : Prop :=
  ∀ n, P6317183165284636197.a n = A180444 n

end A180444

/-! ## A180444.P1853732052068748303

`A000265(n+1)+A129527(n+1)-A000010(n+2)`
-/

namespace A180444.P1853732052068748303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + (A129527 (n + 1) - A000010 (n + 2))

end

end A180444.P1853732052068748303

namespace A180444

/-- `A000265(n+1)+A129527(n+1)-A000010(n+2)` -/
def P1853732052068748303.Spec : Prop :=
  ∀ n, P1853732052068748303.a n = A180444 n

end A180444

/-! ## A180444.P239575166812548127

`A155085(n+1)-(A001065(n+1)+A000010(n+2))`
-/

namespace A180444.P239575166812548127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (A001065 (n + 1) + A000010 (n + 2))

end

end A180444.P239575166812548127

namespace A180444

/-- `A155085(n+1)-(A001065(n+1)+A000010(n+2))` -/
def P239575166812548127.Spec : Prop :=
  ∀ n, P239575166812548127.a n = A180444 n

end A180444

/-! ## A180444.P17212411499219326113

`A051953(n+1)+A121048(n+1)-A000010(n+2)`
-/

namespace A180444.P17212411499219326113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A121048 (n + 1) - A000010 (n + 2))

end

end A180444.P17212411499219326113

namespace A180444

/-- `A051953(n+1)+A121048(n+1)-A000010(n+2)` -/
def P17212411499219326113.Spec : Prop :=
  ∀ n, P17212411499219326113.a n = A180444 n

end A180444

/-! ## A180444.P10168316211658825804

`A003972(n+1)+A377985(n+1)-A000010(n+2)`
-/

namespace A180444.P10168316211658825804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) + (A377985 (n + 1) - A000010 (n + 2))

end

end A180444.P10168316211658825804

namespace A180444

/-- `A003972(n+1)+A377985(n+1)-A000010(n+2)` -/
def P10168316211658825804.Spec : Prop :=
  ∀ n, P10168316211658825804.a n = A180444 n

end A180444

/-! ## A180444.P7924035672917928280

`A000203(n+2)-(A153011(n+2)+A000005(n+2))`
-/

namespace A180444.P7924035672917928280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A153011 (n + 2) + A000005 (n + 2))

end

end A180444.P7924035672917928280

namespace A180444

/-- `A000203(n+2)-(A153011(n+2)+A000005(n+2))` -/
def P7924035672917928280.Spec : Prop :=
  ∀ n, P7924035672917928280.a n = A180444 n

end A180444

/-! ## A180444.P11316884304913313518

`A051953(n+2)+n`
-/

namespace A180444.P11316884304913313518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 2) + (n : ℤ)

end

end A180444.P11316884304913313518

namespace A180444

/-- `A051953(n+2)+n` -/
def P11316884304913313518.Spec : Prop :=
  ∀ n, P11316884304913313518.a n = A180444 n

end A180444

/-! ## A180444.P2612503089625298942

`Δ[A063985(n+1)]+n`
-/

namespace A180444.P2612503089625298942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A180444.P2612503089625298942

namespace A180444

/-- `Δ[A063985(n+1)]+n` -/
def P2612503089625298942.Spec : Prop :=
  ∀ n, P2612503089625298942.a n = A180444 n

end A180444

/-! ## A180444.P5827042132603018464

`A016035(n+2)+1+n`
-/

namespace A180444.P5827042132603018464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 2) + 1 + (n : ℤ)

end

end A180444.P5827042132603018464

namespace A180444

/-- `A016035(n+2)+1+n` -/
def P5827042132603018464.Spec : Prop :=
  ∀ n, P5827042132603018464.a n = A180444 n

end A180444

/-! ## A180444.P13071256097844695298

`A219428(n+2)+1+n`
-/

namespace A180444.P13071256097844695298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 2) + 1 + (n : ℤ)

end

end A180444.P13071256097844695298

namespace A180444

/-- `A219428(n+2)+1+n` -/
def P13071256097844695298.Spec : Prop :=
  ∀ n, P13071256097844695298.a n = A180444 n

end A180444

/-! ## A180444.P11565146432701675560

`A062830(n+2)-1+n`
-/

namespace A180444.P11565146432701675560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 2) - 1 + (n : ℤ)

end

end A180444.P11565146432701675560

namespace A180444

/-- `A062830(n+2)-1+n` -/
def P11565146432701675560.Spec : Prop :=
  ∀ n, P11565146432701675560.a n = A180444 n

end A180444

/-! ## A180444.P530042860905478149

`Δ[n²-A015613(n+1)]`
-/

namespace A180444.P530042860905478149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A015613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180444.P530042860905478149

namespace A180444

/-- `Δ[n²-A015613(n+1)]` -/
def P530042860905478149.Spec : Prop :=
  ∀ n, P530042860905478149.a n = A180444 n

end A180444

/-!
# A180446: Number of non-pentagonal numbers <= n.

The programs for A180446, the canonical program `A180446.P2414477586245918451` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180446 has offset 0).

The definition of A180446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180446.P2414477586245918451

`n-floor((sqrt(24*n+1)+1)/6)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180446

/-- `n-floor((sqrt(24*n+1)+1)/6)` -/
def P2414477586245918451.Spec : Prop :=
  ∀ n, P2414477586245918451.a n = A180446 n

theorem P2414477586245918451.correct : P2414477586245918451.Spec := by
  intro n
  simp only [A180446]

end A180446

/-! ## A180446.P14899779064195185599

`floor(∪[3*n, ∑[n]]/3)`
-/

namespace A180446.P14899779064195185599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 3⌋

end

end A180446.P14899779064195185599

namespace A180446

/-- `floor(∪[3*n, ∑[n]]/3)` -/
def P14899779064195185599.Spec : Prop :=
  ∀ n, P14899779064195185599.a n = A180446 n

end A180446

/-! ## A180446.P7420634313893905679

`round(∪[3*n, ∑[n]]/3)`
-/

namespace A180446.P7420634313893905679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 3)

end

end A180446.P7420634313893905679

namespace A180446

/-- `round(∪[3*n, ∑[n]]/3)` -/
def P7420634313893905679.Spec : Prop :=
  ∀ n, P7420634313893905679.a n = A180446 n

end A180446

/-! ## A180446.P6867286818214908233

`∑[char[comp[C(n, 2)+n²]]]`
-/

namespace A180446.P6867286818214908233
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P6867286818214908233

namespace A180446

/-- `∑[char[comp[C(n, 2)+n²]]]` -/
def P6867286818214908233.Spec : Prop :=
  ∀ n, (P6867286818214908233.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P6935869253239544202

`∑[char[comp[∑[comp[∑[gcd(2, n)]]]]]]`
-/

namespace A180446.P6935869253239544202
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P6935869253239544202

namespace A180446

/-- `∑[char[comp[∑[comp[∑[gcd(2, n)]]]]]]` -/
def P6935869253239544202.Spec : Prop :=
  ∀ n, (P6935869253239544202.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P3919948062635589975

`∑[1-char[C(n, 2)+n²]]`
-/

namespace A180446.P3919948062635589975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P3919948062635589975

namespace A180446

/-- `∑[1-char[C(n, 2)+n²]]` -/
def P3919948062635589975.Spec : Prop :=
  ∀ n, P3919948062635589975.a n = A180446 n

end A180446

/-! ## A180446.P3267714780510228867

`∑[xor(1, char[C(n, 2)+n²])]`
-/

namespace A180446.P3267714780510228867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P3267714780510228867

namespace A180446

/-- `∑[xor(1, char[C(n, 2)+n²])]` -/
def P3267714780510228867.Spec : Prop :=
  ∀ n, (P3267714780510228867.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P18235970419374589186

`∑[char[comp[3*C(n, 2)+n]]]`
-/

namespace A180446.P18235970419374589186
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P18235970419374589186

namespace A180446

/-- `∑[char[comp[3*C(n, 2)+n]]]` -/
def P18235970419374589186.Spec : Prop :=
  ∀ n, (P18235970419374589186.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P12175434560613222570

`Δ[n²]%comp[∑[n]+n²]`
-/

namespace A180446.P12175434560613222570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A180446.P12175434560613222570

namespace A180446

/-- `Δ[n²]%comp[∑[n]+n²]` -/
def P12175434560613222570.Spec : Prop :=
  ∀ n, P12175434560613222570.a n = A180446 n

end A180446

/-! ## A180446.P10121707118686504967

`∑[val(char[C(n, 2)+n²]+3, 3)]`
-/

namespace A180446.P10121707118686504967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f2 j = n then 1 else 0) + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P10121707118686504967

namespace A180446

/-- `∑[val(char[C(n, 2)+n²]+3, 3)]` -/
def P10121707118686504967.Spec : Prop :=
  ∀ n, (P10121707118686504967.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P6323622488231782823

`∑[1-char[∑[eq[n, n*n%3]]]]`
-/

namespace A180446.P6323622488231782823
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f4 j = f5 j) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P6323622488231782823

namespace A180446

/-- `∑[1-char[∑[eq[n, n*n%3]]]]` -/
def P6323622488231782823.Spec : Prop :=
  ∀ n, P6323622488231782823.a n = A180446 n

end A180446

/-! ## A180446.P6060315483472512825

`∑[char[comp[(n^4)%(1-∑[4*n])]]]`
-/

namespace A180446.P6060315483472512825
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 4 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P6060315483472512825

namespace A180446

/-- `∑[char[comp[(n^4)%(1-∑[4*n])]]]` -/
def P6060315483472512825.Spec : Prop :=
  ∀ n, (P6060315483472512825.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P10724644681194963473

`∑[1-A255849(n)]`
-/

namespace A180446.P10724644681194963473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A255849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P10724644681194963473

namespace A180446

/-- `∑[1-A255849(n)]` -/
def P10724644681194963473.Spec : Prop :=
  ∀ n, P10724644681194963473.a n = A180446 n

end A180446

/-! ## A180446.P4863980872296745550

`∑[char[comp[A000326(n)]]]`
-/

namespace A180446.P4863980872296745550
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P4863980872296745550

namespace A180446

/-- `∑[char[comp[A000326(n)]]]` -/
def P4863980872296745550.Spec : Prop :=
  ∀ n, (P4863980872296745550.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P8052351558809822824

`∑[char[A183217(n+1)]]`
-/

namespace A180446.P8052351558809822824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P8052351558809822824

namespace A180446

/-- `∑[char[A183217(n+1)]]` -/
def P8052351558809822824.Spec : Prop :=
  ∀ n, (P8052351558809822824.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P17366786744125246525

`floor(A122798(n+1)/4)`
-/

namespace A180446.P17366786744125246525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122798 (n + 1) : ℚ) / 4⌋

end

end A180446.P17366786744125246525

namespace A180446

/-- `floor(A122798(n+1)/4)` -/
def P17366786744125246525.Spec : Prop :=
  ∀ n, P17366786744125246525.a n = A180446 n

end A180446

/-! ## A180446.P2971658155167515540

`∑[char[A183295(n+1)+1]]`
-/

namespace A180446.P2971658155167515540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183295 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180446.P2971658155167515540

namespace A180446

/-- `∑[char[A183295(n+1)+1]]` -/
def P2971658155167515540.Spec : Prop :=
  ∀ n, (P2971658155167515540.a n : ℤ) = A180446 n

end A180446

/-! ## A180446.P4781243237360752105

`(A045929(n+1)-(n+1))/4`
-/

namespace A180446.P4781243237360752105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045929 (n + 1) - (n + 1 : ℤ) : ℚ) / 4

end

end A180446.P4781243237360752105

namespace A180446

/-- `(A045929(n+1)-(n+1))/4` -/
def P4781243237360752105.Spec : Prop :=
  ∀ n, P4781243237360752105.a n = (A180446 n : ℚ)

end A180446

/-!
# A180447: n appears 3n+1 times.

The programs for A180447, the canonical program `A180447.P3440103669525281536` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180447 has offset 0).

The definition of A180447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180447.P3440103669525281536

`floor((sqrt(24*n+1)+1)/6)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180447

/-- `floor((sqrt(24*n+1)+1)/6)` -/
def P3440103669525281536.Spec : Prop :=
  ∀ n, P3440103669525281536.a n = A180447 n

theorem P3440103669525281536.correct : P3440103669525281536.Spec := by
  intro n
  simp only [A180447]

end A180447

/-! ## A180447.P11755883298762824549

`∑[char[C(n, 2)+n²]]-1`
-/

namespace A180447.P11755883298762824549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180447.P11755883298762824549

namespace A180447

/-- `∑[char[C(n, 2)+n²]]-1` -/
def P11755883298762824549.Spec : Prop :=
  ∀ n, P11755883298762824549.a n = A180447 n

end A180447

/-! ## A180447.P8144976160754925826

`comp[∑[n]+n²]%(n+1)`
-/

namespace A180447.P8144976160754925826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A180447.P8144976160754925826

namespace A180447

/-- `comp[∑[n]+n²]%(n+1)` -/
def P8144976160754925826.Spec : Prop :=
  ∀ n, (P8144976160754925826.a n : ℤ) = A180447 n

end A180447

/-! ## A180447.P158099567225605384

`n-A180446(n)`
-/

namespace A180447.P158099567225605384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A180446 n

end

end A180447.P158099567225605384

namespace A180447

/-- `n-A180446(n)` -/
def P158099567225605384.Spec : Prop :=
  ∀ n, P158099567225605384.a n = A180447 n

end A180447

/-! ## A180447.P1717092002497562359

`ceil(A073188(n)/3)`
-/

namespace A180447.P1717092002497562359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073188 n : ℚ) / 3⌉

end

end A180447.P1717092002497562359

namespace A180447

/-- `ceil(A073188(n)/3)` -/
def P1717092002497562359.Spec : Prop :=
  ∀ n, P1717092002497562359.a n = A180447 n

end A180447

/-! ## A180447.P9446684355844125976

`round(A235963(n)/2)`
-/

namespace A180447.P9446684355844125976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A235963 n : ℚ) / 2)

end

end A180447.P9446684355844125976

namespace A180447

/-- `round(A235963(n)/2)` -/
def P9446684355844125976.Spec : Prop :=
  ∀ n, P9446684355844125976.a n = A180447 n

end A180447

/-! ## A180447.P8566300609411603032

`∑[A255849(n)]-1`
-/

namespace A180447.P8566300609411603032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180447.P8566300609411603032

namespace A180447

/-- `∑[A255849(n)]-1` -/
def P8566300609411603032.Spec : Prop :=
  ∀ n, P8566300609411603032.a n = A180447 n

end A180447

/-! ## A180447.P12402224562840095090

`A083277(n+1)-1`
-/

namespace A180447.P12402224562840095090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (n + 1) - 1

end

end A180447.P12402224562840095090

namespace A180447

/-- `A083277(n+1)-1` -/
def P12402224562840095090.Spec : Prop :=
  ∀ n, P12402224562840095090.a n = A180447 n

end A180447

/-! ## A180447.P10262890985085275648

`∑[char[A000326(n+1)]]`
-/

namespace A180447.P10262890985085275648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180447.P10262890985085275648

namespace A180447

/-- `∑[char[A000326(n+1)]]` -/
def P10262890985085275648.Spec : Prop :=
  ∀ n, (P10262890985085275648.a n : ℤ) = A180447 n

end A180447

/-! ## A180447.P3104496276052671831

`∑[char[A104572(n+1)]]`
-/

namespace A180447.P3104496276052671831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180447.P3104496276052671831

namespace A180447

/-- `∑[char[A104572(n+1)]]` -/
def P3104496276052671831.Spec : Prop :=
  ∀ n, (P3104496276052671831.a n : ℤ) = A180447 n

end A180447

/-! ## A180447.P2009419876667911030

`∑[char[A205141(n+1)]]`
-/

namespace A180447.P2009419876667911030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205141 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180447.P2009419876667911030

namespace A180447

/-- `∑[char[A205141(n+1)]]` -/
def P2009419876667911030.Spec : Prop :=
  ∀ n, (P2009419876667911030.a n : ℤ) = A180447 n

end A180447

/-! ## A180447.P1422023291747502925

`∑[char[A000326(n)]]-1`
-/

namespace A180447.P1422023291747502925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180447.P1422023291747502925

namespace A180447

/-- `∑[char[A000326(n)]]-1` -/
def P1422023291747502925.Spec : Prop :=
  ∀ n, P1422023291747502925.a n = A180447 n

end A180447

/-! ## A180447.P9489043979589146588

`comp[A095794(n+1)]-n`
-/

namespace A180447.P9489043979589146588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095794 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A180447.P9489043979589146588

namespace A180447

/-- `comp[A095794(n+1)]-n` -/
def P9489043979589146588.Spec : Prop :=
  ∀ n, P9489043979589146588.a n = A180447 n

end A180447

/-! ## A180447.P11739480391441478464

`A183294(n+1)-(n+1)`
-/

namespace A180447.P11739480391441478464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183294 (n + 1) - (n + 1 : ℤ)

end

end A180447.P11739480391441478464

namespace A180447

/-- `A183294(n+1)-(n+1)` -/
def P11739480391441478464.Spec : Prop :=
  ∀ n, P11739480391441478464.a n = A180447 n

end A180447

/-! ## A180447.P876446014871567604

`n-∑[char[A183217(n+1)]]`
-/

namespace A180447.P876446014871567604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180447.P876446014871567604

namespace A180447

/-- `n-∑[char[A183217(n+1)]]` -/
def P876446014871567604.Spec : Prop :=
  ∀ n, P876446014871567604.a n = A180447 n

end A180447

/-! ## A180447.P5105491200633429078

`A110654(A235963(n))`
-/

namespace A180447.P5105491200633429078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A235963 n).toNat

end

end A180447.P5105491200633429078

namespace A180447

/-- `A110654(A235963(n))` -/
def P5105491200633429078.Spec : Prop :=
  ∀ n, P5105491200633429078.a n = A180447 n

end A180447

/-! ## A180447.P395770733625021925

`A123108(A235963(n)+1)`
-/

namespace A180447.P395770733625021925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A235963 n + 1).toNat

end

end A180447.P395770733625021925

namespace A180447

/-- `A123108(A235963(n)+1)` -/
def P395770733625021925.Spec : Prop :=
  ∀ n, P395770733625021925.a n = A180447 n

end A180447

/-! ## A180447.P2902864213768918137

`A002264(A000703(n))-1`
-/

namespace A180447.P2902864213768918137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000703 n).toNat - 1

end

end A180447.P2902864213768918137

namespace A180447

/-- `A002264(A000703(n))-1` -/
def P2902864213768918137.Spec : Prop :=
  ∀ n, P2902864213768918137.a n = A180447 n

end A180447

/-! ## A180447.P15030547173165933381

`A002264(A073188(n)+2)`
-/

namespace A180447.P15030547173165933381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A073188 n + 2).toNat

end

end A180447.P15030547173165933381

namespace A180447

/-- `A002264(A073188(n)+2)` -/
def P15030547173165933381.Spec : Prop :=
  ∀ n, P15030547173165933381.a n = A180447 n

end A180447

/-!
# A180448: Primes of the form floor(k^sqrt(2)).

The programs for A180448, the canonical program `A180448.P11241451972246449609` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180448 has offset 1).

The definition of A180448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180448.P11241451972246449609

`p?[floor(n^sqrt(2))]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180448

/-- `p?[floor(n^sqrt(2))]` -/
def P11241451972246449609.Spec : Prop :=
  ∀ n, P11241451972246449609.a n = A180448 (n + 1)

theorem P11241451972246449609.correct : P11241451972246449609.Spec := by
  intro n
  simp only [A180448, Nat.add_sub_cancel]

end A180448

/-! ## A180448.P8385052288186458084

`or(p?[A134886(n+1)], char[2])`
-/

namespace A180448.P8385052288186458084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A180448.P8385052288186458084

namespace A180448

/-- `or(p?[A134886(n+1)], char[2])` -/
def P8385052288186458084.Spec : Prop :=
  ∀ n, P8385052288186458084.a n = A180448 (n + 1)

end A180448

/-! ## A180448.P17497372696551245035

`gcd(p?[A134886(n+1)], A000038(n))`
-/

namespace A180448.P17497372696551245035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A180448.P17497372696551245035

namespace A180448

/-- `gcd(p?[A134886(n+1)], A000038(n))` -/
def P17497372696551245035.Spec : Prop :=
  ∀ n, (P17497372696551245035.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P18411112137750847184

`p?[A134886(n+1)]%A195321(n+1)`
-/

namespace A180448.P18411112137750847184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A195321 (n + 1))

end

end A180448.P18411112137750847184

namespace A180448

/-- `p?[A134886(n+1)]%A195321(n+1)` -/
def P18411112137750847184.Spec : Prop :=
  ∀ n, P18411112137750847184.a n = A180448 (n + 1)

end A180448

/-! ## A180448.P608454493178455412

`∩[A049585(n+1), A134886(n+1)]`
-/

namespace A180448.P608454493178455412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P608454493178455412

namespace A180448

/-- `∩[A049585(n+1), A134886(n+1)]` -/
def P608454493178455412.Spec : Prop :=
  ∀ n, (P608454493178455412.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P17134881251974985157

`∩[A000040(n+1), A134886(n+1)]`
-/

namespace A180448.P17134881251974985157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P17134881251974985157

namespace A180448

/-- `∩[A000040(n+1), A134886(n+1)]` -/
def P17134881251974985157.Spec : Prop :=
  ∀ n, (P17134881251974985157.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P7264869883699820316

`∩[A045319(n+1), A134886(n+1)]`
-/

namespace A180448.P7264869883699820316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P7264869883699820316

namespace A180448

/-- `∩[A045319(n+1), A134886(n+1)]` -/
def P7264869883699820316.Spec : Prop :=
  ∀ n, (P7264869883699820316.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P3582612041779818663

`∩[A045344(n+1), A134886(n+1)]`
-/

namespace A180448.P3582612041779818663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P3582612041779818663

namespace A180448

/-- `∩[A045344(n+1), A134886(n+1)]` -/
def P3582612041779818663.Spec : Prop :=
  ∀ n, (P3582612041779818663.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P15050771689879849100

`∩[A053813(n+1), A134886(n+1)]`
-/

namespace A180448.P15050771689879849100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P15050771689879849100

namespace A180448

/-- `∩[A053813(n+1), A134886(n+1)]` -/
def P15050771689879849100.Spec : Prop :=
  ∀ n, (P15050771689879849100.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P10205068576943828472

`∩[A106118(n+1), A134886(n+1)]`
-/

namespace A180448.P10205068576943828472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P10205068576943828472

namespace A180448

/-- `∩[A106118(n+1), A134886(n+1)]` -/
def P10205068576943828472.Spec : Prop :=
  ∀ n, (P10205068576943828472.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P8410726299864938534

`∩[A116974(n+1), A134886(n+1)]`
-/

namespace A180448.P8410726299864938534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P8410726299864938534

namespace A180448

/-- `∩[A116974(n+1), A134886(n+1)]` -/
def P8410726299864938534.Spec : Prop :=
  ∀ n, (P8410726299864938534.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P2290121390521544370

`∩[A134886(n+1), A182986(n+1)]`
-/

namespace A180448.P2290121390521544370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P2290121390521544370

namespace A180448

/-- `∩[A134886(n+1), A182986(n+1)]` -/
def P2290121390521544370.Spec : Prop :=
  ∀ n, (P2290121390521544370.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P15407876207451111997

`∩[A134886(n+1), A197636(n+1)]`
-/

namespace A180448.P15407876207451111997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P15407876207451111997

namespace A180448

/-- `∩[A134886(n+1), A197636(n+1)]` -/
def P15407876207451111997.Spec : Prop :=
  ∀ n, (P15407876207451111997.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P8681265266019281128

`∩[A134886(n+1), A261123(n+1)]`
-/

namespace A180448.P8681265266019281128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180448.P8681265266019281128

namespace A180448

/-- `∩[A134886(n+1), A261123(n+1)]` -/
def P8681265266019281128.Spec : Prop :=
  ∀ n, (P8681265266019281128.a n : ℤ) = A180448 (n + 1)

end A180448

/-! ## A180448.P16181361038681977571

`record[A020639(floor((n+2)^sqrt(2)))]`
-/

namespace A180448.P16181361038681977571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(n + 2 : ℝ) ^ (Real.sqrt (2 : ℝ))⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180448.P16181361038681977571

namespace A180448

/-- `record[A020639(floor((n+2)^sqrt(2)))]` -/
def P16181361038681977571.Spec : Prop :=
  ∀ n, P16181361038681977571.a n = A180448 (n + 1)

end A180448

/-! ## A180448.P14691662981339805159

`A007947(p?[A134886(n+1)])`
-/

namespace A180448.P14691662981339805159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180448.P14691662981339805159

namespace A180448

/-- `A007947(p?[A134886(n+1)])` -/
def P14691662981339805159.Spec : Prop :=
  ∀ n, P14691662981339805159.a n = A180448 (n + 1)

end A180448

/-! ## A180448.P830422241756985773

`filter[A134886(n+1), A010051(#)]`
-/

namespace A180448.P830422241756985773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A180448.P830422241756985773

namespace A180448

/-- `filter[A134886(n+1), A010051(#)]` -/
def P830422241756985773.Spec : Prop :=
  ∀ n, P830422241756985773.a n = A180448 (n + 1)

end A180448

/-! ## A180448.P3348512416387282487

`filter[A134886(n+1), A323153(#)]`
-/

namespace A180448.P3348512416387282487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A180448.P3348512416387282487

namespace A180448

/-- `filter[A134886(n+1), A323153(#)]` -/
def P3348512416387282487.Spec : Prop :=
  ∀ n, P3348512416387282487.a n = A180448 (n + 1)

end A180448

/-! ## A180448.P10588780039565213983

`filter[A134886(n+2), A323152(#)]`
-/

namespace A180448.P10588780039565213983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A180448.P10588780039565213983

namespace A180448

/-- `filter[A134886(n+2), A323152(#)]` -/
def P10588780039565213983.Spec : Prop :=
  ∀ n, P10588780039565213983.a n = A180448 (n + 1)

end A180448

/-!
# A180451: Primes of the form floor(2*k^sqrt(2) - k).

The programs for A180451, the canonical program `A180451.P5903350613157107514` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180451 has offset 1).

The definition of A180451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180451.P5903350613157107514

`p?[abs(floor(2*n^sqrt(2))-n)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180451

/-- `p?[abs(floor(2*n^sqrt(2))-n)]` -/
def P5903350613157107514.Spec : Prop :=
  ∀ n, P5903350613157107514.a n = A180451 (n + 1)

theorem P5903350613157107514.correct : P5903350613157107514.Spec := by
  intro n
  simp only [A180451, Nat.add_sub_cancel]

end A180451

/-! ## A180451.P13610446463663474624

`∩[A061771(n+1), A156624(n+2)]`
-/

namespace A180451.P13610446463663474624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156624 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180451.P13610446463663474624

namespace A180451

/-- `∩[A061771(n+1), A156624(n+2)]` -/
def P13610446463663474624.Spec : Prop :=
  ∀ n, (P13610446463663474624.a n : ℤ) = A180451 (n + 1)

end A180451

/-! ## A180451.P945702790461767004

`∩[A124589(n+1), A156624(n+2)]`
-/

namespace A180451.P945702790461767004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156624 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180451.P945702790461767004

namespace A180451

/-- `∩[A124589(n+1), A156624(n+2)]` -/
def P945702790461767004.Spec : Prop :=
  ∀ n, (P945702790461767004.a n : ℤ) = A180451 (n + 1)

end A180451

/-!
# A180452: Primes of the form floor(k^sqrt(Pi)).

The programs for A180452, the canonical program `A180452.P15696806717676616471` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180452 has offset 1).

The definition of A180452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180452.P8314986266341179251

`p?[floor(n^sqrt(π))]`
-/

namespace A180452.P8314986266341179251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.sqrt Real.pi)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P8314986266341179251

namespace A180452

/-- `p?[floor(n^sqrt(π))]` -/
def P8314986266341179251.Spec : Prop :=
  ∀ n, P8314986266341179251.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P15696806717676616471

`or(1, p?[A134707(n+1)])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180452

/-- `or(1, p?[A134707(n+1)])` -/
def P15696806717676616471.Spec : Prop :=
  ∀ n, P15696806717676616471.a n = A180452 (n + 1)

theorem P15696806717676616471.correct : P15696806717676616471.Spec := by
  intro n
  simp only [A180452, Nat.add_sub_cancel]

end A180452

/-! ## A180452.P3788460325279588414

`∏{d}[p?[A134707(n+2)], #]`
-/

namespace A180452.P3788460325279588414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180452.P3788460325279588414

namespace A180452

/-- `∏{d}[p?[A134707(n+2)], #]` -/
def P3788460325279588414.Spec : Prop :=
  ∀ n, (P3788460325279588414.a n : ℤ) = A180452 (n + 1)

end A180452

/-! ## A180452.P3377337477784635387

`p?[A134707(n+1)]%A017234(n)`
-/

namespace A180452.P3377337477784635387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017234 n)

end

end A180452.P3377337477784635387

namespace A180452

/-- `p?[A134707(n+1)]%A017234(n)` -/
def P3377337477784635387.Spec : Prop :=
  ∀ n, P3377337477784635387.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P11793237128221143761

`p?[A134707(n+2)]%A269100(n)²`
-/

namespace A180452.P11793237128221143761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A269100 n ^ 2)

end

end A180452.P11793237128221143761

namespace A180452

/-- `p?[A134707(n+2)]%A269100(n)²` -/
def P11793237128221143761.Spec : Prop :=
  ∀ n, P11793237128221143761.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P10212771496536057183

`p?[A134707(n+1)]*char[A004488(n)]`
-/

namespace A180452.P10212771496536057183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A180452.P10212771496536057183

namespace A180452

/-- `p?[A134707(n+1)]*char[A004488(n)]` -/
def P10212771496536057183.Spec : Prop :=
  ∀ n, P10212771496536057183.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P18397911122157856753

`A000007(n+1)+p?[A134707(n+1)]`
-/

namespace A180452.P18397911122157856753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P18397911122157856753

namespace A180452

/-- `A000007(n+1)+p?[A134707(n+1)]` -/
def P18397911122157856753.Spec : Prop :=
  ∀ n, P18397911122157856753.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P10886251247748474899

`A000038(n+1)+p?[A134707(n+1)]`
-/

namespace A180452.P10886251247748474899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P10886251247748474899

namespace A180452

/-- `A000038(n+1)+p?[A134707(n+1)]` -/
def P10886251247748474899.Spec : Prop :=
  ∀ n, P10886251247748474899.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P4413546230714294246

`A008437(2*n)+p?[A134707(n+1)]`
-/

namespace A180452.P4413546230714294246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P4413546230714294246

namespace A180452

/-- `A008437(2*n)+p?[A134707(n+1)]` -/
def P4413546230714294246.Spec : Prop :=
  ∀ n, P4413546230714294246.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P322850969458976510

`p?[A134707(n+1)]*A000034(2*n)`
-/

namespace A180452.P322850969458976510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A180452.P322850969458976510

namespace A180452

/-- `p?[A134707(n+1)]*A000034(2*n)` -/
def P322850969458976510.Spec : Prop :=
  ∀ n, P322850969458976510.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P1494026234571581465

`A007318(C(2, n))*p?[A134707(n+1)]`
-/

namespace A180452.P1494026234571581465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P1494026234571581465

namespace A180452

/-- `A007318(C(2, n))*p?[A134707(n+1)]` -/
def P1494026234571581465.Spec : Prop :=
  ∀ n, P1494026234571581465.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P14708037564480173458

`p?[A134707(n+1)]+A008683(4*(n+1))`
-/

namespace A180452.P14708037564480173458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A180452.P14708037564480173458

namespace A180452

/-- `p?[A134707(n+1)]+A008683(4*(n+1))` -/
def P14708037564480173458.Spec : Prop :=
  ∀ n, P14708037564480173458.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P17079902576452952911

`A014963(6*(n+3))*p?[A134707(n+1)]`
-/

namespace A180452.P17079902576452952911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 3)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P17079902576452952911

namespace A180452

/-- `A014963(6*(n+3))*p?[A134707(n+1)]` -/
def P17079902576452952911.Spec : Prop :=
  ∀ n, P17079902576452952911.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P17024236763255159366

`A000040(n+2)%2*p?[A134707(n+1)]`
-/

namespace A180452.P17024236763255159366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P17024236763255159366

namespace A180452

/-- `A000040(n+2)%2*p?[A134707(n+1)]` -/
def P17024236763255159366.Spec : Prop :=
  ∀ n, P17024236763255159366.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P1589207988767402385

`p?[A134707(n+1)]+8%A003643(n+1)`
-/

namespace A180452.P1589207988767402385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 8 (A003643 (n + 1))

end

end A180452.P1589207988767402385

namespace A180452

/-- `p?[A134707(n+1)]+8%A003643(n+1)` -/
def P1589207988767402385.Spec : Prop :=
  ∀ n, P1589207988767402385.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P11310950767056689487

`A000041(C(2, n+2))*p?[A134707(n+1)]`
-/

namespace A180452.P11310950767056689487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P11310950767056689487

namespace A180452

/-- `A000041(C(2, n+2))*p?[A134707(n+1)]` -/
def P11310950767056689487.Spec : Prop :=
  ∀ n, P11310950767056689487.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P1301966175515117120

`A007814(A000040(n+2))+p?[A134707(n+1)]`
-/

namespace A180452.P1301966175515117120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P1301966175515117120

namespace A180452

/-- `A007814(A000040(n+2))+p?[A134707(n+1)]` -/
def P1301966175515117120.Spec : Prop :=
  ∀ n, P1301966175515117120.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P8606780906111339026

`p?[A134707(n+1)]*A000188(A000040(n+1))`
-/

namespace A180452.P8606780906111339026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000188 (A000040 (n + 1)).toNat

end

end A180452.P8606780906111339026

namespace A180452

/-- `p?[A134707(n+1)]*A000188(A000040(n+1))` -/
def P8606780906111339026.Spec : Prop :=
  ∀ n, P8606780906111339026.a n = A180452 (n + 1)

end A180452

/-! ## A180452.P11480597166849463283

`A001222(A006567(n+1))*p?[A134707(n+1)]`
-/

namespace A180452.P11480597166849463283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006567 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180452.P11480597166849463283

namespace A180452

/-- `A001222(A006567(n+1))*p?[A134707(n+1)]` -/
def P11480597166849463283.Spec : Prop :=
  ∀ n, P11480597166849463283.a n = A180452 (n + 1)

end A180452

/-!
# A180455: Central term of five successive prime numbers whose average is a prime.

The programs for A180455, there is no canonical definition to state claims against.
-/

/-! ## A180455.P9310431626349925424

`A219478(n+1)-A184955(A026136(n+1))`
-/

namespace A180455.P9310431626349925424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219478 (n + 1) - A184955 (A026136 (n + 1)).toNat

end

end A180455.P9310431626349925424

/-! ## A180455.P4553362441059661427

`p?[A219505(n+1)]-A184955(A026136(n+1))`
-/

namespace A180455.P4553362441059661427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A184955 (A026136 (n + 1)).toNat

end

end A180455.P4553362441059661427

/-! ## A180455.P1817376334122625142

`p?[A298102(n+1)+2]-A184955(A026136(n+1))`
-/

namespace A180455.P1817376334122625142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298102 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A184955 (A026136 (n + 1)).toNat

end

end A180455.P1817376334122625142

/-! ## A180455.P1485063857413810305

`p?[xor(A184955(n), A219505(n+1))]`
-/

namespace A180455.P1485063857413810305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184955 n) (A219505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180455.P1485063857413810305

/-!
# A180456: Central term of seven successive primes whose average is a prime.

The programs for A180456, there is no canonical definition to state claims against.
-/

/-! ## A180456.P15697938314700691355

`A266965(record[Δ[A309990(n)]])`
-/

namespace A180456.P15697938314700691355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180456.P15697938314700691355

/-! ## A180456.P9920216027532667461

`A266965(record[A309990(2*n+1)-A309990(2*n)])`
-/

namespace A180456.P9920216027532667461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309990 (2 * n + 1) - A309990 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180456.P9920216027532667461

/-!
# A180458: Largest palindromic number <= n-th-prime.

The programs for A180458, there is no canonical definition to state claims against.
-/

/-! ## A180458.P5153168385696143441

`A002113(A136687(A000040(n+1)))`
-/

namespace A180458.P5153168385696143441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A136687 (A000040 (n + 1)).toNat).toNat

end

end A180458.P5153168385696143441

/-! ## A180458.P12189010229863507546

`A261914(A008864(n+1))`
-/

namespace A180458.P12189010229863507546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A008864 (n + 1)).toNat

end

end A180458.P12189010229863507546

/-! ## A180458.P209175571852898026

`A261914(A028815(n+1))`
-/

namespace A180458.P209175571852898026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A028815 (n + 1)).toNat

end

end A180458.P209175571852898026

/-! ## A180458.P9440048408203015172

`A261914(A299763(n+2))`
-/

namespace A180458.P9440048408203015172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A299763 (n + 2)).toNat

end

end A180458.P9440048408203015172

/-! ## A180458.P5348006599785642629

`A261914(A000040(n+1)+1)`
-/

namespace A180458.P5348006599785642629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A000040 (n + 1) + 1).toNat

end

end A180458.P5348006599785642629

/-! ## A180458.P1936846750332911168

`A261914(A008578(n+2)+1)`
-/

namespace A180458.P1936846750332911168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A008578 (n + 2) + 1).toNat

end

end A180458.P1936846750332911168

/-! ## A180458.P15170898178851039738

`A261914(A186700(n+1))`
-/

namespace A180458.P15170898178851039738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A186700 (n + 1)).toNat

end

end A180458.P15170898178851039738

/-! ## A180458.P3350400361460883175

`A261423(A000040(n+1))`
-/

namespace A180458.P3350400361460883175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A000040 (n + 1)).toNat

end

end A180458.P3350400361460883175

/-! ## A180458.P12173538621583316309

`A261423(A008578(n+2))`
-/

namespace A180458.P12173538621583316309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A008578 (n + 2)).toNat

end

end A180458.P12173538621583316309

/-! ## A180458.P11972517160926670096

`A261423(A182986(n+2))`
-/

namespace A180458.P11972517160926670096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A182986 (n + 2)).toNat

end

end A180458.P11972517160926670096

/-! ## A180458.P5561835417137881124

`A261423(record[A006530(n+2)])`
-/

namespace A180458.P5561835417137881124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180458.P5561835417137881124

/-! ## A180458.P11539702881551434411

`A261423(record[A014963(n+2)])`
-/

namespace A180458.P11539702881551434411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180458.P11539702881551434411

/-! ## A180458.P4025398849944748045

`A261423(record[A020639(n+2)])`
-/

namespace A180458.P4025398849944748045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180458.P4025398849944748045

/-! ## A180458.P10526978889204680961

`A261423(A040976(n+1)+2)`
-/

namespace A180458.P10526978889204680961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A040976 (n + 1) + 2).toNat

end

end A180458.P10526978889204680961

/-!
# A180459: Sampling n numbers between 1 and a(n)-1, you are guaranteed to always find two subsets whose sums are equal.

The programs for A180459, there is no canonical definition to state claims against.
-/

/-! ## A180459.P5709315101461848168

`A126024(n+3)+A051903(A140122(n+1))`
-/

namespace A180459.P5709315101461848168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126024 (n + 3) + A051903 (A140122 (n + 1)).toNat

end

end A180459.P5709315101461848168

/-! ## A180459.P16267825337789749349

`A121857(∑[∑[A052855(n)]])`
-/

namespace A180459.P16267825337789749349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180459.P16267825337789749349

/-! ## A180459.P6021056669800846224

`A000267(A173380(n)+A149944(n))`
-/

namespace A180459.P6021056669800846224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A173380 n + A149944 n).toNat

end

end A180459.P6021056669800846224

/-! ## A180459.P9549578395620211058

`A008578(n+1)+A000267(A084601(n)+n)`
-/

namespace A180459.P9549578395620211058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A000267 (A084601 n + (n : ℤ)).toNat

end

end A180459.P9549578395620211058

/-!
# A180466: The number of representations of n as a minimal number of squares, A002828(n).

The programs for A180466, there is no canonical definition to state claims against.
-/

/-! ## A180466.P18092942108156063898

`gcd(A036225(A005843(n+2)), A182617(n+1))`
-/

namespace A180466.P18092942108156063898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036225 (A005843 (n + 2)).toNat) (A182617 (n + 1))

end

end A180466.P18092942108156063898

/-! ## A180466.P14743307261762029500

`A240473(A034498(n+1)+1)`
-/

namespace A180466.P14743307261762029500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (A034498 (n + 1) + 1).toNat

end

end A180466.P14743307261762029500

/-! ## A180466.P17402491875162735783

`A337565(A010784(n+4)*A194923(n+1))`
-/

namespace A180466.P17402491875162735783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (A010784 (n + 4) * A194923 (n + 1)).toNat

end

end A180466.P17402491875162735783

/-! ## A180466.P17808724068037520173

`gcd(A043288(A114009(2*n+1)), A195829(2*n+3))`
-/

namespace A180466.P17808724068037520173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043288 (A114009 (2 * n + 1)).toNat) (A195829 (2 * n + 3))

end

end A180466.P17808724068037520173

/-! ## A180466.P8775382165695233288

`A327407(A125950(n)+9)`
-/

namespace A180466.P8775382165695233288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (A125950 n + 9).toNat

end

end A180466.P8775382165695233288

/-!
# A180468: Numbers m such that m/k is an integer. m=(x_1 x_2 ... x_r) where x_i are digits of m, k = x_1^r + x_2^(r-1) + ... + x_r^1.

The programs for A180468, there is no canonical definition to state claims against.
-/

/-! ## A180468.P6000666401043335460

`lt[A124755(n)!, A062391(n+1)]`
-/

namespace A180468.P6000666401043335460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124755 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A180468.P6000666401043335460

/-! ## A180468.P14814152339687472074

`lt[A308990(n), A175936(A277822(n))]`
-/

namespace A180468.P14814152339687472074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175936 (A277822 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180468.P14814152339687472074

/-! ## A180468.P8093366343682397084

`lt[A104743(A124755(n)), A053028(n+1)]`
-/

namespace A180468.P8093366343682397084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 (A124755 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180468.P8093366343682397084

/-! ## A180468.P9830207743403584194

`lt[A291733(A124755(n)), A257410(n+1)]`
-/

namespace A180468.P9830207743403584194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291733 (A124755 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180468.P9830207743403584194

/-! ## A180468.P16809568800558228453

`lt[A005178(A124755(n)), A020482(n+2)]`
-/

namespace A180468.P16809568800558228453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (A124755 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180468.P16809568800558228453

/-!
# A180469: Primes of the form 100p + 1, where p is prime.

The programs for A180469, the canonical program `A180469.P16617430781801320686` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180469 has offset 1).

The definition of A180469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180469.P16617430781801320686

`p?[A158128(p?[2*n+1])]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180469

/-- `p?[A158128(p?[2*n+1])]` -/
def P16617430781801320686.Spec : Prop :=
  ∀ n, P16617430781801320686.a n = A180469 (n + 1)

theorem P16617430781801320686.correct : P16617430781801320686.Spec := by
  intro n
  simp only [A180469, Nat.add_sub_cancel]

end A180469

/-! ## A180469.P18145295723792988347

`p?[20*A001750(n+1)+1]`
-/

namespace A180469.P18145295723792988347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A001750 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P18145295723792988347

namespace A180469

/-- `p?[20*A001750(n+1)+1]` -/
def P18145295723792988347.Spec : Prop :=
  ∀ n, P18145295723792988347.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P5933582713246505046

`p?[10*10*A000040(n+1)+1]`
-/

namespace A180469.P5933582713246505046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * A000040 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P5933582713246505046

namespace A180469

/-- `p?[10*10*A000040(n+1)+1]` -/
def P5933582713246505046.Spec : Prop :=
  ∀ n, P5933582713246505046.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P3907610224978152838

`p?[10*10*record[A014963(n+2)]+1]`
-/

namespace A180469.P3907610224978152838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P3907610224978152838

namespace A180469

/-- `p?[10*10*record[A014963(n+2)]+1]` -/
def P3907610224978152838.Spec : Prop :=
  ∀ n, P3907610224978152838.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P18121301032313168704

`p?[A158128(A000040(n+1))]`
-/

namespace A180469.P18121301032313168704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P18121301032313168704

namespace A180469

/-- `p?[A158128(A000040(n+1))]` -/
def P18121301032313168704.Spec : Prop :=
  ∀ n, P18121301032313168704.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P14150762549752203150

`p?[A158128(A002476(n+1))]`
-/

namespace A180469.P14150762549752203150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A002476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P14150762549752203150

namespace A180469

/-- `p?[A158128(A002476(n+1))]` -/
def P14150762549752203150.Spec : Prop :=
  ∀ n, P14150762549752203150.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P13829198441050965725

`p?[A158128(A004139(n+1))]`
-/

namespace A180469.P13829198441050965725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A004139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P13829198441050965725

namespace A180469

/-- `p?[A158128(A004139(n+1))]` -/
def P13829198441050965725.Spec : Prop :=
  ∀ n, P13829198441050965725.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P14185423187562054202

`p?[A158128(A007645(n+1))]`
-/

namespace A180469.P14185423187562054202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A007645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P14185423187562054202

namespace A180469

/-- `p?[A158128(A007645(n+1))]` -/
def P14185423187562054202.Spec : Prop :=
  ∀ n, P14185423187562054202.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P14492485828806820437

`p?[A158128(A065091(n+1))]`
-/

namespace A180469.P14492485828806820437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P14492485828806820437

namespace A180469

/-- `p?[A158128(A065091(n+1))]` -/
def P14492485828806820437.Spec : Prop :=
  ∀ n, P14492485828806820437.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P2734892203252372834

`A158128(p?[A166457(n+1)])`
-/

namespace A180469.P2734892203252372834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180469.P2734892203252372834

namespace A180469

/-- `A158128(p?[A166457(n+1)])` -/
def P2734892203252372834.Spec : Prop :=
  ∀ n, P2734892203252372834.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P15246358177357198878

`p?[A158128(A325143(n+1))]`
-/

namespace A180469.P15246358177357198878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A325143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P15246358177357198878

namespace A180469

/-- `p?[A158128(A325143(n+1))]` -/
def P15246358177357198878.Spec : Prop :=
  ∀ n, P15246358177357198878.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P14212639588835993983

`p?[A158128(A008578(n+2))]`
-/

namespace A180469.P14212639588835993983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P14212639588835993983

namespace A180469

/-- `p?[A158128(A008578(n+2))]` -/
def P14212639588835993983.Spec : Prop :=
  ∀ n, P14212639588835993983.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P12227637537998438532

`p?[A158128(sqrt(A001248(n+1)))]`
-/

namespace A180469.P12227637537998438532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P12227637537998438532

namespace A180469

/-- `p?[A158128(sqrt(A001248(n+1)))]` -/
def P12227637537998438532.Spec : Prop :=
  ∀ n, P12227637537998438532.a n = A180469 (n + 1)

end A180469

/-! ## A180469.P11106377074076852486

`p?[A158128(A134735(A005408(n)))]`
-/

namespace A180469.P11106377074076852486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A134735 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180469.P11106377074076852486

namespace A180469

/-- `p?[A158128(A134735(A005408(n)))]` -/
def P11106377074076852486.Spec : Prop :=
  ∀ n, P11106377074076852486.a n = A180469 (n + 1)

end A180469

/-!
# A180470: a(n) = -prime(n) + prime(n + prime(n)) - 1.

The programs for A180470, there is no canonical definition to state claims against.
-/

/-! ## A180470.P2474495911484694414

`A065995(n+1)-A008864(n+1)`
-/

namespace A180470.P2474495911484694414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065995 (n + 1) - A008864 (n + 1)

end

end A180470.P2474495911484694414

/-! ## A180470.P8623272619816028369

`A084747(Δ[A007504(n)])-1`
-/

namespace A180470.P8623272619816028369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (f1 (n + 1) - f1 n).toNat - 1

end

end A180470.P8623272619816028369

/-! ## A180470.P8066187352211463547

`A084747(A000040(n+1))-1`
-/

namespace A180470.P8066187352211463547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (A000040 (n + 1)).toNat - 1

end

end A180470.P8066187352211463547

/-! ## A180470.P9825492086274833236

`A084747(A008578(n+2))-1`
-/

namespace A180470.P9825492086274833236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (A008578 (n + 2)).toNat - 1

end

end A180470.P9825492086274833236

/-! ## A180470.P12270010006096592650

`A084747(A158611(n+3))-1`
-/

namespace A180470.P12270010006096592650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (A158611 (n + 3)).toNat - 1

end

end A180470.P12270010006096592650

/-! ## A180470.P17522375199465130849

`A084747(record[A006530(n+2)])-1`
-/

namespace A180470.P17522375199465130849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A180470.P17522375199465130849

/-! ## A180470.P14419703038316860643

`A084747(A006093(n+1)+1)-1`
-/

namespace A180470.P14419703038316860643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084747 (A006093 (n + 1) + 1).toNat - 1

end

end A180470.P14419703038316860643

/-! ## A180470.P9163349797338309137

`A014689(p?[comp[n²]]+1+n)+n`
-/

namespace A180470.P9163349797338309137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 + n) + (n : ℤ)

end

end A180470.P9163349797338309137

/-! ## A180470.P11146429700195154563

`A014689(A014688(n+1))+n`
-/

namespace A180470.P11146429700195154563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A014688 (n + 1)).toNat + (n : ℤ)

end

end A180470.P11146429700195154563

/-! ## A180470.P6369931614924906921

`A014689(A167136(n+2))+n`
-/

namespace A180470.P6369931614924906921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A167136 (n + 2)).toNat + (n : ℤ)

end

end A180470.P6369931614924906921

/-! ## A180470.P2173300795734386274

`A014689(∑[A230847(n+1)])+n`
-/

namespace A180470.P2173300795734386274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A180470.P2173300795734386274

/-! ## A180470.P13972679585875237082

`A014689(A095116(n+1)+1)+n`
-/

namespace A180470.P13972679585875237082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A095116 (n + 1) + 1).toNat + (n : ℤ)

end

end A180470.P13972679585875237082

/-! ## A180470.P2965000741870075325

`A006093(A014688(n+1))-A000040(n+1)`
-/

namespace A180470.P2965000741870075325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A014688 (n + 1)).toNat - A000040 (n + 1)

end

end A180470.P2965000741870075325

/-!
# A180472: Triangle T(n, k) = OC(n, k; not -1), read by rows, where OC(n, k; not -1) is the number of k-subsets of Z_n without -1 as a multiplier, up to congruency.

The programs for A180472, there is no canonical definition to state claims against.
-/

/-! ## A180472.P8229749291551555525

`A047996(n)-A052307(n)`
-/

namespace A180472.P8229749291551555525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n - A052307 n

end

end A180472.P8229749291551555525

/-! ## A180472.P15400058180143159348

`A052307(n)-A119963(n)`
-/

namespace A180472.P15400058180143159348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n - A119963 n

end

end A180472.P15400058180143159348

/-! ## A180472.P1345151253704651813

`(A047996(n)-A119963(n))/2`
-/

namespace A180472.P1345151253704651813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047996 n - A119963 n : ℚ) / 2

end

end A180472.P1345151253704651813

/-! ## A180472.P16646117968396183983

`A047996(n)%A052307(n%(n+1))`
-/

namespace A180472.P16646117968396183983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047996 n) (A052307 (n % (n + 1)))

end

end A180472.P16646117968396183983

/-! ## A180472.P10092620399615579864

`A047996(A028310(n))%A052307(n)`
-/

namespace A180472.P10092620399615579864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047996 (A028310 n).toNat) (A052307 n)

end

end A180472.P10092620399615579864

/-! ## A180472.P147958472821180456

`A047996(n)%A052307(A061579(n))`
-/

namespace A180472.P147958472821180456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047996 n) (A052307 (A061579 n).toNat)

end

end A180472.P147958472821180456

/-! ## A180472.P12410177711407312710

`A273943(A047996(n)-A119963(n))`
-/

namespace A180472.P12410177711407312710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A047996 n - A119963 n).toNat

end

end A180472.P12410177711407312710

/-! ## A180472.P17463844891841023819

`A014682(A047996(n)-A119963(n))`
-/

namespace A180472.P17463844891841023819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047996 n - A119963 n).toNat

end

end A180472.P17463844891841023819

/-! ## A180472.P18445309670757670674

`A004525(A047996(n)-A119963(n))`
-/

namespace A180472.P18445309670757670674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047996 n - A119963 n).toNat

end

end A180472.P18445309670757670674

/-! ## A180472.P6899712791310761741

`A004526(A047996(n)-A119963(n))`
-/

namespace A180472.P6899712791310761741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047996 n - A119963 n).toNat

end

end A180472.P6899712791310761741

/-! ## A180472.P5260479715473168300

`A025480(A047996(n)-A119963(n))`
-/

namespace A180472.P5260479715473168300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A047996 n - A119963 n).toNat

end

end A180472.P5260479715473168300

/-! ## A180472.P1257646673207590529

`A026741(A047996(n)-A119963(n))`
-/

namespace A180472.P1257646673207590529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A047996 n - A119963 n).toNat

end

end A180472.P1257646673207590529

/-! ## A180472.P9548504351838679581

`A110654(A047996(n)-A119963(n))`
-/

namespace A180472.P9548504351838679581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A047996 n - A119963 n).toNat

end

end A180472.P9548504351838679581

/-! ## A180472.P5788863972779688252

`A047996(n)-A065033(A119963(n)+A047996(n))`
-/

namespace A180472.P5788863972779688252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n - A065033 (A119963 n + A047996 n).toNat

end

end A180472.P5788863972779688252

/-!
# A180473: Expansion of o.g.f. x*s(x)/(1-x*s(x)-x^2*s(x)^2), where s(x) is the o.g.f. of the little Schroeder numbers (A001003).

The programs for A180473, there is no canonical definition to state claims against.
-/

/-! ## A180473.P11801512886152823076

`A004396(A238111(n)-A007598(n))`
-/

namespace A180473.P11801512886152823076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A238111 n - A007598 n).toNat

end

end A180473.P11801512886152823076

/-! ## A180473.P4382719873852552952

`or(A008619(A151179(n)), A194856(n+1))`
-/

namespace A180473.P4382719873852552952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A151179 n).toNat) (A194856 (n + 1))

end

end A180473.P4382719873852552952

/-! ## A180473.P13154412800955569199

`or(A008619(A151179(n)), A283987(n+1))`
-/

namespace A180473.P13154412800955569199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A151179 n).toNat) (A283987 (n + 1))

end

end A180473.P13154412800955569199

/-!
# A180474: Primes p such that p^5 + p^3 + 1 is a prime.

The programs for A180474, there is no canonical definition to state claims against.
-/

/-! ## A180474.P4362642552018599259

`p?[A124253(n+1)]`
-/

namespace A180474.P4362642552018599259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180474.P4362642552018599259

/-! ## A180474.P8348075471094419647

`floor(root(A180475(n+1), 5))`
-/

namespace A180474.P8348075471094419647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180475 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A180474.P8348075471094419647

/-! ## A180474.P1259823742573369036

`record[A006530(A124253(n+2))]`
-/

namespace A180474.P1259823742573369036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124253 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180474.P1259823742573369036

/-! ## A180474.P2200664739011462456

`filter[A124253(n+1), A010051(#)]`
-/

namespace A180474.P2200664739011462456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A180474.P2200664739011462456

/-! ## A180474.P12670671480877642451

`filter[A124253(n+2), A080339(#)]`
-/

namespace A180474.P12670671480877642451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A180474.P12670671480877642451

/-!
# A180476: Smallest k>0 such that q=p+6k, 6kp+q, 6kp-q, 6kq+p and 6kq-p are simultaneously prime, or 0 if no such k exists, where p=A000040(n) is the n-th prime.

The programs for A180476, there is no canonical definition to state claims against.
-/

/-! ## A180476.P4192382580732338207

`A367221(C(∑[n], 2)+1)`
-/

namespace A180476.P4192382580732338207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A180476.P4192382580732338207

/-!
# A180477: Numbers m such that r*m/k is an integer. m=(x_1 x_2 ... x_r) where x_i are digits of m, k = x_1 + x_2 + ... + x_r.

The programs for A180477, there is no canonical definition to state claims against.
-/

/-! ## A180477.P16151686878651938604

`∪[A005349(n+1), A118759(A271239(n+1))]`
-/

namespace A180477.P16151686878651938604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A271239 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180477.P16151686878651938604

/-! ## A180477.P9650864790110459468

`∪[A005349(n+1), A000188(A271239(n+1)²)]`
-/

namespace A180477.P9650864790110459468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A271239 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180477.P9650864790110459468

/-! ## A180477.P11334613370612155675

`∪[A005349(n+1), A000194(A271239(n+1)²)]`
-/

namespace A180477.P11334613370612155675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A271239 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180477.P11334613370612155675

/-! ## A180477.P870248638450294658

`∪[A005349(n+1), A000196(A271239(n+1)²)]`
-/

namespace A180477.P870248638450294658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A271239 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180477.P870248638450294658

/-! ## A180477.P10611385451771424715

`A118759(A271239(n+1))`
-/

namespace A180477.P10611385451771424715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A271239 (n + 1)).toNat

end

end A180477.P10611385451771424715

/-!
# A180480: Numbers m such that m*m/k is an integer. m=(x_1 x_2 ... x_r) where x_i are digits of m, k = x_1^2 + x_2^2 + ... + x_r^2.

The programs for A180480, there is no canonical definition to state claims against.
-/

/-! ## A180480.P14942255142629023880

`∑[A139699(A278492(n-∏{digits}[n, #]))]`
-/

namespace A180480.P14942255142629023880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139699 (A278492 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180480.P14942255142629023880

/-! ## A180480.P14400162116165383908

`∑[A091306(∏[A117462(n+1)])]`
-/

namespace A180480.P14400162116165383908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180480.P14400162116165383908

/-! ## A180480.P15607506756282062043

`∩[A342262(n+1), A107062(n)]`
-/

namespace A180480.P15607506756282062043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180480.P15607506756282062043

/-! ## A180480.P984067190468223929

`∩[A342650(n+1), A107062(n)]`
-/

namespace A180480.P984067190468223929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180480.P984067190468223929

/-! ## A180480.P12896374345767089418

`∩[A007603(n+1), A113586(n+1)]`
-/

namespace A180480.P12896374345767089418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180480.P12896374345767089418

/-!
# A180482: Numbers n such that r*n*n/k is an integer. n=(x_1 x_2 ... x_r) where x_i are digits of n, k = x_1^2 + x_2^2 + ... + x_r^2.

The programs for A180482, there is no canonical definition to state claims against.
-/

/-! ## A180482.P13542983200592531981

`lt[A347470(n), A052500(n)]`
-/

namespace A180482.P13542983200592531981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180482.P13542983200592531981

/-! ## A180482.P11594854922767257242

`∩[A096105(n+1), A113586(n+1)]`
-/

namespace A180482.P11594854922767257242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180482.P11594854922767257242

/-! ## A180482.P14316172938193542176

`∩[A113586(n+1), A180477(n+1)]`
-/

namespace A180482.P14316172938193542176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180482.P14316172938193542176

/-! ## A180482.P11248360827329918869

`∩[A096105(n+1), A325152(n+1)]`
-/

namespace A180482.P11248360827329918869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180482.P11248360827329918869

/-! ## A180482.P1398337906819972094

`∩[A325152(n+1), A395850(n+1)]`
-/

namespace A180482.P1398337906819972094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180482.P1398337906819972094

/-!
# A180483: Expansion of (3+3*x-25*x^2-3*x^3+2*x^4)/((1-x)*(1-10*x^2+x^4)).

The programs for A180483, the canonical program `A180483.P7911081340318047389` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180483 has offset 0).

The definition of A180483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180483.P7911081340318047389

`11*a(n-2)-11*a(n-4)+a(n-6)` with `a(0)=3, a(1)=6, a(2)=11, a(3)=38, a(4)=87, a(5)=354`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180483

/-- `11*a(n-2)-11*a(n-4)+a(n-6)` -/
def P7911081340318047389.Spec : Prop :=
  ∀ n, P7911081340318047389.a n = A180483 n

theorem P7911081340318047389.correct : P7911081340318047389.Spec := by
  intro n
  simp only [A180483]

end A180483

/-! ## A180483.P6705400337679120789

`∑[lcm(6, a(n-1))-a(n-2)]` with `a(0)=3, a(1)=3, a(2)=5`
-/

namespace A180483.P6705400337679120789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 5] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180483.P6705400337679120789

namespace A180483

/-- `∑[lcm(6, a(n-1))-a(n-2)]` -/
def P6705400337679120789.Spec : Prop :=
  ∀ n, P6705400337679120789.a n = A180483 n

end A180483

/-! ## A180483.P12687205060427063567

`A077291(n)+3`
-/

namespace A180483.P12687205060427063567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 n + 3

end

end A180483.P12687205060427063567

namespace A180483

/-- `A077291(n)+3` -/
def P12687205060427063567.Spec : Prop :=
  ∀ n, P12687205060427063567.a n = A180483 n

end A180483

/-! ## A180483.P17481536756079093948

`(A216073(n+1)+5)/2`
-/

namespace A180483.P17481536756079093948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216073 (n + 1) + 5 : ℚ) / 2

end

end A180483.P17481536756079093948

namespace A180483

/-- `(A216073(n+1)+5)/2` -/
def P17481536756079093948.Spec : Prop :=
  ∀ n, P17481536756079093948.a n = (A180483 n : ℚ)

end A180483

/-! ## A180483.P4496623180521190736

`3-A057428(n)*A077291(n)`
-/

namespace A180483.P4496623180521190736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A057428 n * A077291 n

end

end A180483.P4496623180521190736

namespace A180483

/-- `3-A057428(n)*A077291(n)` -/
def P4496623180521190736.Spec : Prop :=
  ∀ n, P4496623180521190736.a n = A180483 n

end A180483

/-! ## A180483.P8110302532678730848

`A080806(n+1)+A129444(n+1)+2`
-/

namespace A180483.P8110302532678730848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) + (A129444 (n + 1) + 2)

end

end A180483.P8110302532678730848

namespace A180483

/-- `A080806(n+1)+A129444(n+1)+2` -/
def P8110302532678730848.Spec : Prop :=
  ∀ n, P8110302532678730848.a n = A180483 n

end A180483

/-! ## A180483.P11063783953915317317

`∑[Δ[A041038(n)]%A142239(n)]+3`
-/

namespace A180483.P11063783953915317317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A142239 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A180483.P11063783953915317317

namespace A180483

/-- `∑[Δ[A041038(n)]%A142239(n)]+3` -/
def P11063783953915317317.Spec : Prop :=
  ∀ n, P11063783953915317317.a n = A180483 n

end A180483

/-!
# A180484: Numbers n such that r*(n/k)^2 is an integer, where n=(x_1 x_2 ... x_r) with x_i the decimal digits of n and k = x_1 * x_2 * ... * x_r.

The programs for A180484, there is no canonical definition to state claims against.
-/

/-! ## A180484.P7676286638704983488

`A007602(n+1)-A184946(A238130(n))`
-/

namespace A180484.P7676286638704983488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1) - A184946 (A238130 n).toNat

end

end A180484.P7676286638704983488

/-! ## A180484.P15175823193485363843

`A007602(n+1)-A185284(A247796(n))`
-/

namespace A180484.P15175823193485363843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1) - A185284 (A247796 n).toNat

end

end A180484.P15175823193485363843

/-!
# A180485: Lucas multiplication table as a triangle read by rows T(n, k) = L(n)L(k), with L(n) being a Lucas number (A000032).

The programs for A180485, there is no canonical definition to state claims against.
-/

/-! ## A180485.P3023643151762592

`A284115(A245300(n)+1)`
-/

namespace A180485.P3023643151762592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A245300 n + 1).toNat

end

end A180485.P3023643151762592

/-! ## A180485.P13577486222867712405

`A272909(A272908(n+1))`
-/

namespace A180485.P13577486222867712405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (A272908 (n + 1)).toNat

end

end A180485.P13577486222867712405

/-! ## A180485.P17098352736094643268

`A000032(round(sqrt(2*(n+1))))*A104765(n+1)`
-/

namespace A180485.P17098352736094643268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat * A104765 (n + 1)

end

end A180485.P17098352736094643268

/-! ## A180485.P321306016540308578

`A000204(round(sqrt(2*(n+1))))*A104765(n+1)`
-/

namespace A180485.P321306016540308578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat * A104765 (n + 1)

end

end A180485.P321306016540308578

/-! ## A180485.P17122595479074125864

`A067979(A057944(n))*A104765(n+1)`
-/

namespace A180485.P17122595479074125864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A057944 n).toNat * A104765 (n + 1)

end

end A180485.P17122595479074125864

/-! ## A180485.P18025436204549090837

`A104765(n+1)*A104765(A127739(n+1))`
-/

namespace A180485.P18025436204549090837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (n + 1) * A104765 (A127739 (n + 1)).toNat

end

end A180485.P18025436204549090837

/-! ## A180485.P4652362343856510402

`A000032(A002260(n+1))*A067979(A057944(n))`
-/

namespace A180485.P4652362343856510402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat * A067979 (A057944 n).toNat

end

end A180485.P4652362343856510402

/-! ## A180485.P6524853169108528973

`A000032(A002024(n+1))*A000032(A002260(n+1))`
-/

namespace A180485.P6524853169108528973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002024 (n + 1)).toNat * A000032 (A002260 (n + 1)).toNat

end

end A180485.P6524853169108528973

/-! ## A180485.P12305309275728892689

`A000032(A057555(2*n+1))*A000032(A002024(n+1))`
-/

namespace A180485.P12305309275728892689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A057555 (2 * n + 1)).toNat * A000032 (A002024 (n + 1)).toNat

end

end A180485.P12305309275728892689

/-! ## A180485.P7827068714953942476

`A000032(A349520(2*n+1))*A000032(A349520(2*(n+1)))`
-/

namespace A180485.P7827068714953942476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A349520 (2 * n + 1)).toNat * A000032 (A349520 (2 * (n + 1))).toNat

end

end A180485.P7827068714953942476

/-!
# A180486: Numbers of the form ceiling(A179896(j)/A018252(j)) where A179896(j) mod A018252(j) <> 0.

The programs for A180486, the canonical program `A180486.P6737945906718232899` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180486 has offset 1).

The definition of A180486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180486.P6737945906718232899

`2*a(n-1)-a(n-2)` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180486

/-- `2*a(n-1)-a(n-2)` -/
def P6737945906718232899.Spec : Prop :=
  ∀ n, P6737945906718232899.a n = A180486 (n + 1)

theorem P6737945906718232899.correct : P6737945906718232899.Spec := by
  intro n
  simp only [A180486, Nat.add_sub_cancel]

end A180486

/-!
# A180487: a(n) is the number of non-isomorphic geometric realizations (rectilinear drawings) of K_{2,n}.

The programs for A180487, there is no canonical definition to state claims against.
-/

/-! ## A180487.P11142985595086390747

`A350969(∑[n*a(n-1)])` with `a(0)=2`
-/

namespace A180487.P11142985595086390747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180487.P11142985595086390747

/-! ## A180487.P6109697928071930573

`A350969(∑[∏[abs(1-n)+1]])`
-/

namespace A180487.P6109697928071930573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180487.P6109697928071930573

/-!
# A180488: Partial sums of A006864.

The programs for A180488, the canonical program `A180488.P11107604137872892131` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180488 has offset 1).

The definition of A180488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180488.P11107604137872892131

`3*a(n-1)-4*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=23`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A180488

/-- `3*a(n-1)-4*a(n-3)+3*a(n-4)-a(n-5)` -/
def P11107604137872892131.Spec : Prop :=
  ∀ n, P11107604137872892131.a n = A180488 (n + 1)

theorem P11107604137872892131.correct : P11107604137872892131.Spec := by
  intro n
  simp only [A180488, Nat.add_sub_cancel]

end A180488

/-! ## A180488.P6066113461578289333

`∑[A006864(n+1)]`
-/

namespace A180488.P6066113461578289333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180488.P6066113461578289333

namespace A180488

/-- `∑[A006864(n+1)]` -/
def P6066113461578289333.Spec : Prop :=
  ∀ n, P6066113461578289333.a n = A180488 (n + 1)

end A180488

/-! ## A180488.P17922558157068587331

`∑[record[A006864(A267806(n))]]`
-/

namespace A180488.P17922558157068587331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A267806 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180488.P17922558157068587331

namespace A180488

/-- `∑[record[A006864(A267806(n))]]` -/
def P17922558157068587331.Spec : Prop :=
  ∀ n, P17922558157068587331.a n = A180488 (n + 1)

end A180488

/-! ## A180488.P6499265383825305131

`∑[∑[A181688(A028310(n))]-1]`
-/

namespace A180488.P6499265383825305131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181688 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180488.P6499265383825305131

namespace A180488

/-- `∑[∑[A181688(A028310(n))]-1]` -/
def P6499265383825305131.Spec : Prop :=
  ∀ n, P6499265383825305131.a n = A180488 (n + 1)

end A180488

/-! ## A180488.P5688802183875932764

`∑[∑[A181688(n+1)]-A181688(n+1)]`
-/

namespace A180488.P5688802183875932764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181688 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A181688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180488.P5688802183875932764

namespace A180488

/-- `∑[∑[A181688(n+1)]-A181688(n+1)]` -/
def P5688802183875932764.Spec : Prop :=
  ∀ n, P5688802183875932764.a n = A180488 (n + 1)

end A180488

/-! ## A180488.P15512289546014582424

`∑[record[A006864(A193739(n))]]`
-/

namespace A180488.P15512289546014582424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180488.P15512289546014582424

namespace A180488

/-- `∑[record[A006864(A193739(n))]]` -/
def P15512289546014582424.Spec : Prop :=
  ∀ n, P15512289546014582424.a n = A180488 (n + 1)

end A180488

/-!
# A180489: Smallest pandigital number (A171102) divisible by the n-th prime A000040(n).

The programs for A180489, there is no canonical definition to state claims against.
-/

/-! ## A180489.P666124736152699594

`A061604(Δ[A007504(n)])`
-/

namespace A180489.P666124736152699594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (f1 (n + 1) - f1 n).toNat

end

end A180489.P666124736152699594

/-! ## A180489.P8515261568474846861

`A061604(record[A051698(n)])`
-/

namespace A180489.P8515261568474846861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180489.P8515261568474846861

/-! ## A180489.P12447465845125616602

`A061604(A000040(n+1))`
-/

namespace A180489.P12447465845125616602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (A000040 (n + 1)).toNat

end

end A180489.P12447465845125616602

/-! ## A180489.P13695807088926932544

`A061604(A008578(n+2))`
-/

namespace A180489.P13695807088926932544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (A008578 (n + 2)).toNat

end

end A180489.P13695807088926932544

/-! ## A180489.P4548173700395211809

`A061604(A182986(n+2))`
-/

namespace A180489.P4548173700395211809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (A182986 (n + 2)).toNat

end

end A180489.P4548173700395211809

/-! ## A180489.P640928523371590754

`A061604(eq[0, A007920(n)])`
-/

namespace A180489.P640928523371590754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180489.P640928523371590754

/-! ## A180489.P15457100764206906069

`A061604(eq[1, A003415(n)])`
-/

namespace A180489.P15457100764206906069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180489.P15457100764206906069

/-! ## A180489.P10812761022120138784

`A061604(record[A006530(n+2)])`
-/

namespace A180489.P10812761022120138784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180489.P10812761022120138784

/-! ## A180489.P17799002099224235366

`A061604(record[A014963(n+2)])`
-/

namespace A180489.P17799002099224235366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180489.P17799002099224235366

/-! ## A180489.P12485841396381786533

`A061604(record[A020639(n+2)])`
-/

namespace A180489.P12485841396381786533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180489.P12485841396381786533

/-! ## A180489.P17327552528588345949

`A061604(A007504(n+1)-A007504(n))`
-/

namespace A180489.P17327552528588345949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (A007504 (n + 1) - A007504 n).toNat

end

end A180489.P17327552528588345949

/-! ## A180489.P9466883505141259788

`A000040(n+1)*A218770(Δ[A007504(n)])`
-/

namespace A180489.P9466883505141259788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A218770 (f1 (n + 1) - f1 n).toNat

end

end A180489.P9466883505141259788

/-! ## A180489.P9003166916685204452

`A000040(n+1)*A218770(p?[A064429(n)])`
-/

namespace A180489.P9003166916685204452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A218770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180489.P9003166916685204452

/-! ## A180489.P6324639242370985559

`A000040(n+1)*A218770(p?[A000040(n+1)])`
-/

namespace A180489.P6324639242370985559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A218770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180489.P6324639242370985559

/-! ## A180489.P10886416882538455986

`A000040(n+1)*A218770(p?[A213714(n)])`
-/

namespace A180489.P10886416882538455986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A218770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180489.P10886416882538455986

/-! ## A180489.P16263845878554373441

`A061604(A001748(n+1))`
-/

namespace A180489.P16263845878554373441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (A001748 (n + 1)).toNat

end

end A180489.P16263845878554373441

/-! ## A180489.P1361335346183656201

`A061604(A112773(n+2))`
-/

namespace A180489.P1361335346183656201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061604 (A112773 (n + 2)).toNat

end

end A180489.P1361335346183656201

/-!
# A180490: Numbers k such that (A000120(k))^2 divides k.

The programs for A180490, the canonical program `A180490.P12221106932613284276` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180490 has offset 1).

The definition of A180490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180490.P12221106932613284276

`eq[0, (n+1)%A000120(n+1)²]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180490

/-- `eq[0, (n+1)%A000120(n+1)²]+1` -/
def P12221106932613284276.Spec : Prop :=
  ∀ n, (P12221106932613284276.a n : ℤ) = A180490 (n + 1)

theorem P12221106932613284276.correct : P12221106932613284276.Spec := by
  intro n
  simp only [A180490, Nat.add_sub_cancel]

end A180490

/-!
# A180491: Product of remainders of n mod k, for k = 2,3,4,...,n-1.

The programs for A180491, there is no canonical definition to state claims against.
-/

/-! ## A180491.P15604042240296332794

`A080339(n+1)*A173392(n+1)`
-/

namespace A180491.P15604042240296332794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) * A173392 (n + 1)

end

end A180491.P15604042240296332794

/-! ## A180491.P6311872908631915244

`lcm(A173392(n+1), A267133(n+1))`
-/

namespace A180491.P6311872908631915244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173392 (n + 1)) (A267133 (n + 1))

end

end A180491.P6311872908631915244

/-! ## A180491.P8869877177472324609

`and(A069158(n+1), A173392(n+1))`
-/

namespace A180491.P8869877177472324609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069158 (n + 1)) (A173392 (n + 1))

end

end A180491.P8869877177472324609

/-! ## A180491.P10489117059597548266

`and(A079532(n+1), A173392(n+1))`
-/

namespace A180491.P10489117059597548266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079532 (n + 1)) (A173392 (n + 1))

end

end A180491.P10489117059597548266

/-! ## A180491.P9258477098699179269

`and(A080323(n+1), A173392(n+1))`
-/

namespace A180491.P9258477098699179269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080323 (n + 1)) (A173392 (n + 1))

end

end A180491.P9258477098699179269

/-! ## A180491.P7792061125919370410

`and(A173392(n+1), A220114(n+1))`
-/

namespace A180491.P7792061125919370410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173392 (n + 1)) (A220114 (n + 1))

end

end A180491.P7792061125919370410

/-!
# A180492: Product of remainders of prime(n) mod k, for k = 2,3,4,...,prime(n)-1.

The programs for A180492, there is no canonical definition to state claims against.
-/

/-! ## A180492.P2478257857932632974

`A173392(A138980(n))`
-/

namespace A180492.P2478257857932632974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173392 (A138980 n).toNat

end

end A180492.P2478257857932632974

/-! ## A180492.P3737789741254914212

`A173392(A390240(n))`
-/

namespace A180492.P3737789741254914212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173392 (A390240 n).toNat

end

end A180492.P3737789741254914212

/-! ## A180492.P2163442430661343104

`A173392(A000040(n+1))`
-/

namespace A180492.P2163442430661343104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173392 (A000040 (n + 1)).toNat

end

end A180492.P2163442430661343104

/-! ## A180492.P8600212406454272369

`A173392(A006005(n+1))`
-/

namespace A180492.P8600212406454272369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173392 (A006005 (n + 1)).toNat

end

end A180492.P8600212406454272369

/-! ## A180492.P16684844707806620522

`A173392(A030291(n+1))`
-/

namespace A180492.P16684844707806620522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173392 (A030291 (n + 1)).toNat

end

end A180492.P16684844707806620522

/-!
# A180493: Numbers n such that prime(n)! is divisible by A180491(prime(n)).

The programs for A180493, there is no canonical definition to state claims against.
-/

/-! ## A180493.P8630433729933350454

`lt[A024165(n+1), A317698(A250120(2*(n+2)))]`
-/

namespace A180493.P8630433729933350454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317698 (A250120 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180493.P8630433729933350454

/-! ## A180493.P6824696057697207694

`lt[A256913(A360250(n)), n]`
-/

namespace A180493.P6824696057697207694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256913 (A360250 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A180493.P6824696057697207694

/-! ## A180493.P7954496058340968739

`eq[1, A305193(A350555(n+5))]`
-/

namespace A180493.P7954496058340968739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (A350555 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180493.P7954496058340968739

/-! ## A180493.P610079508106302724

`lt[A064414(n+1), A063580(n)]`
-/

namespace A180493.P610079508106302724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180493.P610079508106302724

/-! ## A180493.P7172801144314138279

`∪[A342191(n+3), record[A347777(n)]]`
-/

namespace A180493.P7172801144314138279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180493.P7172801144314138279

/-!
# A180494: Bear's Paw (from a quilt design).

The programs for A180494, there is no canonical definition to state claims against.
-/

/-! ## A180494.P13482005730416387953

`A016350(xor(n, 4*or(3, n)))`
-/

namespace A180494.P13482005730416387953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (Nat.xor n (4 * Nat.lor 3 n))

end

end A180494.P13482005730416387953

/-! ## A180494.P5138461118905509406

`A011652(A059590(n))`
-/

namespace A180494.P5138461118905509406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 (A059590 n).toNat

end

end A180494.P5138461118905509406

/-! ## A180494.P18410053907163620134

`A016350(A276156(n))`
-/

namespace A180494.P18410053907163620134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (A276156 n).toNat

end

end A180494.P18410053907163620134

/-! ## A180494.P13943926581713313331

`A011652(A306556(n+1))`
-/

namespace A180494.P13943926581713313331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 (A306556 (n + 1)).toNat

end

end A180494.P13943926581713313331

/-! ## A180494.P3273765519210625710

`A175629(A125995(n+1)+A008593(3*(n+1)))`
-/

namespace A180494.P3273765519210625710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A125995 (n + 1) + A008593 (3 * (n + 1))).toNat

end

end A180494.P3273765519210625710

/-!
# A180495: Coefficient a(n) of three-term recurrence relation for solutions of the equation in integers x^2-n*floor(x/sqrt(n))^2=1 such that x(i+2)=a(n)*x(i+1)-x(i). n is a nonsquare number.

The programs for A180495, there is no canonical definition to state claims against.
-/

/-! ## A180495.P13260648026142309809

`2*A033313(n+1)`
-/

namespace A180495.P13260648026142309809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033313 (n + 1)

end

end A180495.P13260648026142309809

/-! ## A180495.P6574548224648073004

`2*A002350(comp[n²])`
-/

namespace A180495.P6574548224648073004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A180495.P6574548224648073004

/-! ## A180495.P1828979559509642580

`4*A033313(-xor(n, -1))/2`
-/

namespace A180495.P1828979559509642580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A033313 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A180495.P1828979559509642580

/-! ## A180495.P10449958658753668810

`4*A002350(A000037(n+1))/2`
-/

namespace A180495.P10449958658753668810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A002350 (A000037 (n + 1)).toNat : ℚ) / 2)

end

end A180495.P10449958658753668810

/-! ## A180495.P17139565977810407600

`A033313(n+1)+A002350(comp[n²])`
-/

namespace A180495.P17139565977810407600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033313 (n + 1) + A002350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A180495.P17139565977810407600

/-! ## A180495.P6249635084465892943

`A033313(A000027(n+1))/sinh(log(ϕ))`
-/

namespace A180495.P6249635084465892943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033313 (A000027 (n + 1)).toNat : ℝ) / Real.sinh (Real.log Real.goldenRatio)

end

end A180495.P6249635084465892943

/-! ## A180495.P6311915370043592183

`A033313(n+1)+A033313(-xor(n, -1))`
-/

namespace A180495.P6311915370043592183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033313 (n + 1) + A033313 (-Int.xor (n : ℤ) (-1)).toNat

end

end A180495.P6311915370043592183

/-! ## A180495.P3314488071931215522

`A033313(A000027(n+1))+A033313(n+1)`
-/

namespace A180495.P3314488071931215522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033313 (A000027 (n + 1)).toNat + A033313 (n + 1)

end

end A180495.P3314488071931215522

/-! ## A180495.P12146706030891064691

`A033313(n+1)+A033313(n+1)/A000040(n+2)%2`
-/

namespace A180495.P12146706030891064691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033313 (n + 1) : ℚ) + (A033313 (n + 1) : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A180495.P12146706030891064691

/-! ## A180495.P13297402426512973143

`A033313(n+1)+A033313(n+1)/A007318(∑[n])`
-/

namespace A180495.P13297402426512973143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033313 (n + 1) : ℚ) + (A033313 (n + 1) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A180495.P13297402426512973143

/-!
# A180497: a(n)=n^2-3*floor[n/sqrt(3)]^2.

The programs for A180497, the canonical program `A180497.P5719506775989415877` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180497 has offset 1).

The definition of A180497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180497.P5719506775989415877

`(n+1)²-A033428(A097337(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180497

/-- `(n+1)²-A033428(A097337(n+1))` -/
def P5719506775989415877.Spec : Prop :=
  ∀ n, P5719506775989415877.a n = A180497 (n + 1)

theorem P5719506775989415877.correct : P5719506775989415877.Spec := by
  intro n
  simp only [A180497, Nat.add_sub_cancel]

end A180497

/-! ## A180497.P18241909166472457862

`A120865(A188085(n+1))`
-/

namespace A180497.P18241909166472457862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (A188085 (n + 1)).toNat

end

end A180497.P18241909166472457862

namespace A180497

/-- `A120865(A188085(n+1))` -/
def P18241909166472457862.Spec : Prop :=
  ∀ n, P18241909166472457862.a n = A180497 (n + 1)

end A180497

/-! ## A180497.P15165402368013460384

`A120865(A188073(n+1)-2)`
-/

namespace A180497.P15165402368013460384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (A188073 (n + 1) - 2).toNat

end

end A180497.P15165402368013460384

namespace A180497

/-- `A120865(A188073(n+1)-2)` -/
def P15165402368013460384.Spec : Prop :=
  ∀ n, P15165402368013460384.a n = A180497 (n + 1)

end A180497

/-! ## A180497.P10358150448639184003

`A120865(A186539(n+1)+A097337(n+1))`
-/

namespace A180497.P10358150448639184003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (A186539 (n + 1) + A097337 (n + 1)).toNat

end

end A180497.P10358150448639184003

namespace A180497

/-- `A120865(A186539(n+1)+A097337(n+1))` -/
def P10358150448639184003.Spec : Prop :=
  ∀ n, P10358150448639184003.a n = A180497 (n + 1)

end A180497

/-! ## A180497.P260464210972465332

`A186539(n+1)²%A004277(A188085(n+1))`
-/

namespace A180497.P260464210972465332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186539 (n + 1) ^ 2) (A004277 (A188085 (n + 1)).toNat)

end

end A180497.P260464210972465332

namespace A180497

/-- `A186539(n+1)²%A004277(A188085(n+1))` -/
def P260464210972465332.Spec : Prop :=
  ∀ n, P260464210972465332.a n = A180497 (n + 1)

end A180497

/-!
# A180498: a(n) = n^2 - 5*floor(n/sqrt(5))^2.

The programs for A180498, the canonical program `A180498.P10268372993952059879` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180498 has offset 1).

The definition of A180498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180498.P10268372993952059879

`A120866(2*floor((n+1)/sqrt(5))+n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A180498

/-- `A120866(2*floor((n+1)/sqrt(5))+n+1)` -/
def P10268372993952059879.Spec : Prop :=
  ∀ n, P10268372993952059879.a n = A180498 (n + 1)

theorem P10268372993952059879.correct : P10268372993952059879.Spec := by
  intro n
  simp only [A180498, Nat.add_sub_cancel]

end A180498

/-! ## A180498.P9370373685450300144

`A053186(A008706(A188258(n+1)²))`
-/

namespace A180498.P9370373685450300144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A008706 (A188258 (n + 1) ^ 2).toNat).toNat

end

end A180498.P9370373685450300144

namespace A180498

/-- `A053186(A008706(A188258(n+1)²))` -/
def P9370373685450300144.Spec : Prop :=
  ∀ n, P9370373685450300144.a n = A180498 (n + 1)

end A180498

/-!
# A180499: n^3 + n-th cubefree number.

The programs for A180499, the canonical program `A180499.P3987114873125485963` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180499 has offset 1).

The definition of A180499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180499.P5234371576951768062

`A004709(n+1)+(n+1)^3`
-/

namespace A180499.P5234371576951768062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A180499.P5234371576951768062

namespace A180499

/-- `A004709(n+1)+(n+1)^3` -/
def P5234371576951768062.Spec : Prop :=
  ∀ n, P5234371576951768062.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P3987114873125485963

`A000578(n+1)+eq[1, A113061(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180499

/-- `A000578(n+1)+eq[1, A113061(n+1)]+1` -/
def P3987114873125485963.Spec : Prop :=
  ∀ n, P3987114873125485963.a n = A180499 (n + 1)

theorem P3987114873125485963.correct : P3987114873125485963.Spec := by
  intro n
  simp only [A180499, Nat.add_sub_cancel]

end A180499

/-! ## A180499.P10617642387363766345

`A000578(n+1)+eq[1, A212793(n+1)]+1`
-/

namespace A180499.P10617642387363766345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A180499.P10617642387363766345

namespace A180499

/-- `A000578(n+1)+eq[1, A212793(n+1)]+1` -/
def P10617642387363766345.Spec : Prop :=
  ∀ n, P10617642387363766345.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P1036054962120707758

`A000578(n+1)+eq[1, A295657(n+1)]+1`
-/

namespace A180499.P1036054962120707758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A180499.P1036054962120707758

namespace A180499

/-- `A000578(n+1)+eq[1, A295657(n+1)]+1` -/
def P1036054962120707758.Spec : Prop :=
  ∀ n, P1036054962120707758.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P17554969464142133329

`A000537(n+1)+A004709(n+1)-A000537(n)`
-/

namespace A180499.P17554969464142133329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A004709 (n + 1) - A000537 n)

end

end A180499.P17554969464142133329

namespace A180499

/-- `A000537(n+1)+A004709(n+1)-A000537(n)` -/
def P17554969464142133329.Spec : Prop :=
  ∀ n, P17554969464142133329.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P17500835957774517708

`record[A066990(n+1)]+(n+1)^3`
-/

namespace A180499.P17500835957774517708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 3 : ℤ)

end

end A180499.P17500835957774517708

namespace A180499

/-- `record[A066990(n+1)]+(n+1)^3` -/
def P17500835957774517708.Spec : Prop :=
  ∀ n, P17500835957774517708.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P12160826234585439567

`record[A007948(n+1)]+(n+1)*(n+1)²`
-/

namespace A180499.P12160826234585439567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) * (n + 1) ^ 2 : ℤ)

end

end A180499.P12160826234585439567

namespace A180499

/-- `record[A007948(n+1)]+(n+1)*(n+1)²` -/
def P12160826234585439567.Spec : Prop :=
  ∀ n, P12160826234585439567.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P9534439457457269335

`record[A050985(n+1)]+(n+1)*(n+1)²`
-/

namespace A180499.P9534439457457269335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) * (n + 1) ^ 2 : ℤ)

end

end A180499.P9534439457457269335

namespace A180499

/-- `record[A050985(n+1)]+(n+1)*(n+1)²` -/
def P9534439457457269335.Spec : Prop :=
  ∀ n, P9534439457457269335.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P15406992423795962573

`A000578(n+1)+eq[1, A008834(n+1)]+1`
-/

namespace A180499.P15406992423795962573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A180499.P15406992423795962573

namespace A180499

/-- `A000578(n+1)+eq[1, A008834(n+1)]+1` -/
def P15406992423795962573.Spec : Prop :=
  ∀ n, P15406992423795962573.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P5691361282821029009

`A000578(n+1)+eq[1, A061704(n+1)]+1`
-/

namespace A180499.P5691361282821029009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A180499.P5691361282821029009

namespace A180499

/-- `A000578(n+1)+eq[1, A061704(n+1)]+1` -/
def P5691361282821029009.Spec : Prop :=
  ∀ n, P5691361282821029009.a n = A180499 (n + 1)

end A180499

/-! ## A180499.P16407418560450028811

`A000578(n+1)+eq[1, A190867(n+1)]+1`
-/

namespace A180499.P16407418560450028811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A180499.P16407418560450028811

namespace A180499

/-- `A000578(n+1)+eq[1, A190867(n+1)]+1` -/
def P16407418560450028811.Spec : Prop :=
  ∀ n, P16407418560450028811.a n = A180499 (n + 1)

end A180499

