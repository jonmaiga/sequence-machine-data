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
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A036000: Number of partitions in parts not of the form 25k, 25k+1 or 25k-1. Also number of partitions with no part of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036000, there is no canonical definition to state claims against.
-/

/-! ## A036000.P1683410898379707814

`A284321(A016885(n+3))`
-/

namespace A036000.P1683410898379707814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A016885 (n + 3)).toNat

end

end A036000.P1683410898379707814

/-! ## A036000.P3585136283953139088

`A284321(A016861(n)+17)`
-/

namespace A036000.P3585136283953139088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A016861 n + 17).toNat

end

end A036000.P3585136283953139088

/-! ## A036000.P13728007191859853911

`A284321(A008587(n)+18)`
-/

namespace A036000.P13728007191859853911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A008587 n + 18).toNat

end

end A036000.P13728007191859853911

/-! ## A036000.P10444638098364130877

`A284321(Δ[A005891(n)]+13)`
-/

namespace A036000.P10444638098364130877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (f1 (n + 1) - f1 n + 13).toNat

end

end A036000.P10444638098364130877

/-! ## A036000.P4479160500704779479

`A284321(A016897(n+3)-1)`
-/

namespace A036000.P4479160500704779479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A016897 (n + 3) - 1).toNat

end

end A036000.P4479160500704779479

/-! ## A036000.P3714583634273370722

`A284321(A017341(n+3)/2)`
-/

namespace A036000.P3714583634273370722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (SequenceMachineLib.roundAway ((A017341 (n + 3) : ℚ) / 2)).toNat

end

end A036000.P3714583634273370722

/-! ## A036000.P11884344431421923894

`A284321(A008458(n+3)-n)`
-/

namespace A036000.P11884344431421923894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A008458 (n + 3) - (n : ℤ)).toNat

end

end A036000.P11884344431421923894

/-! ## A036000.P9123507112676079942

`A284321(A016825(n+4)+n)`
-/

namespace A036000.P9123507112676079942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A016825 (n + 4) + (n : ℤ)).toNat

end

end A036000.P9123507112676079942

/-! ## A036000.P6820141901496068647

`A284321(A111284(n+6)+n)`
-/

namespace A036000.P6820141901496068647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A111284 (n + 6) + (n : ℤ)).toNat

end

end A036000.P6820141901496068647

/-!
# A036001: Number of partitions of n into parts not of the form 25k, 25k+2 or 25k-2. Also number of partitions with 1 part of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036001, there is no canonical definition to state claims against.
-/

/-! ## A036001.P11528231541798095071

`A284322(A016861(n+3))`
-/

namespace A036001.P11528231541798095071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016861 (n + 3)).toNat

end

end A036001.P11528231541798095071

/-! ## A036001.P10148358284503222398

`A284322(A016897(n)+12)`
-/

namespace A036001.P10148358284503222398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016897 n + 12).toNat

end

end A036001.P10148358284503222398

/-! ## A036001.P1569341259239696915

`A284322(A016885(n)+13)`
-/

namespace A036001.P1569341259239696915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016885 n + 13).toNat

end

end A036001.P1569341259239696915

/-! ## A036001.P15708837813108557782

`A284322(A016873(n)+14)`
-/

namespace A036001.P15708837813108557782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016873 n + 14).toNat

end

end A036001.P15708837813108557782

/-! ## A036001.P1610588245310235155

`A284322(A008587(n)+16)`
-/

namespace A036001.P1610588245310235155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A008587 n + 16).toNat

end

end A036001.P1610588245310235155

/-!
# A036002: Number of partitions in parts not of the form 25k, 25k+3 or 25k-3. Also number of partitions with at most 2 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036002, there is no canonical definition to state claims against.
-/

/-! ## A036002.P12776846099718439645

`A284322(A016897(n+2))`
-/

namespace A036002.P12776846099718439645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016897 (n + 2)).toNat

end

end A036002.P12776846099718439645

/-! ## A036002.P5165737609042980127

`A284322(A016885(n)+11)`
-/

namespace A036002.P5165737609042980127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016885 n + 11).toNat

end

end A036002.P5165737609042980127

/-! ## A036002.P898866356465992689

`A284322(A016873(n)+12)`
-/

namespace A036002.P898866356465992689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016873 n + 12).toNat

end

end A036002.P898866356465992689

/-! ## A036002.P6741393199352961597

`A284322(A016861(n)+13)`
-/

namespace A036002.P6741393199352961597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A016861 n + 13).toNat

end

end A036002.P6741393199352961597

/-! ## A036002.P16895386440497496550

`A284322(A008587(n)+14)`
-/

namespace A036002.P16895386440497496550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A008587 n + 14).toNat

end

end A036002.P16895386440497496550

/-!
# A036003: Number of partitions of n into parts not of the form 25k, 25k+4 or 25k-4. Also number of partitions with at most 3 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036003, there is no canonical definition to state claims against.
-/

/-! ## A036003.P17697282236638211233

`A284321(5*(n+2)+2)`
-/

namespace A036003.P17697282236638211233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (5 * (n + 2) + 2)

end

end A036003.P17697282236638211233

/-! ## A036003.P1926097680010766073

`record[A284321(A091703(n))]`
-/

namespace A036003.P1926097680010766073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (A091703 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036003.P1926097680010766073

/-! ## A036003.P11658635930405053934

`record[A284321(n)/A060904(A004277(n))]`
-/

namespace A036003.P11658635930405053934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284321 n : ℚ) / (A060904 (A004277 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036003.P11658635930405053934

/-! ## A036003.P15526445437879863238

`A027338(C(A250245(n+1), n))`
-/

namespace A036003.P15526445437879863238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (Nat.choose (A250245 (n + 1)).toNat n)

end

end A036003.P15526445437879863238

/-! ## A036003.P3997651499795466096

`A027338(n+1)%A319065(n+2)`
-/

namespace A036003.P3997651499795466096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027338 (n + 1)) (A319065 (n + 2))

end

end A036003.P3997651499795466096

/-!
# A036004: Number of partitions of n into parts not of the form 25k, 25k+5 or 25k-5. Also number of partitions with at most 4 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036004, there is no canonical definition to state claims against.
-/

/-! ## A036004.P8265912339869011209

`record[A262364(n)]-A241312(A184945(n))`
-/

namespace A036004.P8265912339869011209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A241312 (A184945 n).toNat

end

end A036004.P8265912339869011209

/-! ## A036004.P13102942449949854865

`A027339(n+1)-A241312(A184945(n))`
-/

namespace A036004.P13102942449949854865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) - A241312 (A184945 n).toNat

end

end A036004.P13102942449949854865

/-! ## A036004.P8002131313889548690

`record[A262364(n)]-A178798(A087153(n))`
-/

namespace A036004.P8002131313889548690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A178798 (A087153 n).toNat

end

end A036004.P8002131313889548690

/-! ## A036004.P97058893151143689

`A027339(n+1)-A178798(A087153(n))`
-/

namespace A036004.P97058893151143689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 (n + 1) - A178798 (A087153 n).toNat

end

end A036004.P97058893151143689

/-! ## A036004.P4834022220740482800

`record[A262364(n)]-A185246(A000009(n))`
-/

namespace A036004.P4834022220740482800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185246 (A000009 n).toNat

end

end A036004.P4834022220740482800

/-!
# A036005: Number of partitions of n into parts not of the form 25k, 25k+6 or 25k-6. Also number of partitions with at most 5 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036005, there is no canonical definition to state claims against.
-/

/-! ## A036005.P18129603324574741533

`abs(A284321(5*n+9))`
-/

namespace A036005.P18129603324574741533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284321 (5 * n + 9)|

end

end A036005.P18129603324574741533

/-! ## A036005.P5265698209794304771

`-A284321(A016897(n+1))`
-/

namespace A036005.P5265698209794304771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284321 (A016897 (n + 1)).toNat

end

end A036005.P5265698209794304771

/-! ## A036005.P1796567097526463791

`record[gcd(A138532(n), A284321(n))]`
-/

namespace A036005.P1796567097526463791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138532 n) (A284321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036005.P1796567097526463791

/-! ## A036005.P6788743119524540397

`-A284321(5*n+9)%A000051(n)`
-/

namespace A036005.P6788743119524540397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A284321 (5 * n + 9)) (A000051 n)

end

end A036005.P6788743119524540397

/-! ## A036005.P13105276548656732448

`-or(A000079(n), A284321(5*n+9))`
-/

namespace A036005.P13105276548656732448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A000079 n) (A284321 (5 * n + 9))

end

end A036005.P13105276548656732448

/-!
# A036006: Number of partitions of n into parts not of the form 25k, 25k+7 or 25k-7. Also number of partitions with at most 6 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036006, there is no canonical definition to state claims against.
-/

/-! ## A036006.P8795407546570197102

`abs(A284322(A016885(n+1)))`
-/

namespace A036006.P8795407546570197102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A016885 (n + 1)).toNat|

end

end A036006.P8795407546570197102

/-! ## A036006.P7113506017745849572

`abs(A284322(A016861(n)+7))`
-/

namespace A036006.P7113506017745849572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A016861 n + 7).toNat|

end

end A036006.P7113506017745849572

/-! ## A036006.P11964178560820164701

`abs(A284322(A008587(n)+8))`
-/

namespace A036006.P11964178560820164701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A008587 n + 8).toNat|

end

end A036006.P11964178560820164701

/-! ## A036006.P4857805623964743996

`abs(A284322(A008706(n)+8))`
-/

namespace A036006.P4857805623964743996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A008706 n + 8).toNat|

end

end A036006.P4857805623964743996

/-! ## A036006.P13612932417664087169

`record[gcd(A147699(n), A284322(n))]`
-/

namespace A036006.P13612932417664087169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147699 n) (A284322 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036006.P13612932417664087169

/-!
# A036007: Number of partitions of n into parts not of the form 25k, 25k+8 or 25k-8. Also number of partitions with at most 7 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036007, there is no canonical definition to state claims against.
-/

/-! ## A036007.P11378531245258653362

`record[-A284322(n+2)]`
-/

namespace A036007.P11378531245258653362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284322 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P11378531245258653362

/-! ## A036007.P520414121509499471

`record[abs(record[-A284322(n)])]`
-/

namespace A036007.P520414121509499471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284322 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P520414121509499471

/-! ## A036007.P755704933150893653

`abs(A284322(5*n+7))`
-/

namespace A036007.P755704933150893653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (5 * n + 7)|

end

end A036007.P755704933150893653

/-! ## A036007.P12987693034589851412

`record[abs(A284322(A091703(n)))]`
-/

namespace A036007.P12987693034589851412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A091703 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P12987693034589851412

/-! ## A036007.P541570746837965954

`record[A000038(n)-A284322(n)]`
-/

namespace A036007.P541570746837965954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A284322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P541570746837965954

/-! ## A036007.P10886697449732949981

`record[A000007(n)-A284322(n+1)]`
-/

namespace A036007.P10886697449732949981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A284322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P10886697449732949981

/-! ## A036007.P9923148921477069022

`record[2*A000007(n)-A284322(n)]`
-/

namespace A036007.P9923148921477069022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A284322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P9923148921477069022

/-! ## A036007.P7364957012235329121

`record[gcd(A147699(n+1), A284322(n))]`
-/

namespace A036007.P7364957012235329121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147699 (n + 1)) (A284322 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036007.P7364957012235329121

/-!
# A036008: Number of partitions of n into parts not of the form 25k, 25k+9 or 25k-9. Also number of partitions with at most 8 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036008, there is no canonical definition to state claims against.
-/

/-! ## A036008.P2393608128209514024

`abs(record[-A284321(n)])`
-/

namespace A036008.P2393608128209514024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A036008.P2393608128209514024

/-! ## A036008.P10462188983877738015

`abs(A284321(5*n+1))`
-/

namespace A036008.P10462188983877738015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284321 (5 * n + 1)|

end

end A036008.P10462188983877738015

/-! ## A036008.P12832047900249453246

`-A284321(A016861(n))`
-/

namespace A036008.P12832047900249453246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284321 (A016861 n).toNat

end

end A036008.P12832047900249453246

/-! ## A036008.P12857362888716111870

`record[-A284321(n)]^A019425(2*n)`
-/

namespace A036008.P12857362888716111870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A284321 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A019425 (2 * n) : ℤ)

end

end A036008.P12857362888716111870

/-! ## A036008.P6022445271421298947

`lcm(A008836(n+1), A284321(A016861(n)))`
-/

namespace A036008.P6022445271421298947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A284321 (A016861 n).toNat)

end

end A036008.P6022445271421298947

/-! ## A036008.P17275029112154100739

`and(1, A005843(n))-A284321(A016861(n))`
-/

namespace A036008.P17275029112154100739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005843 n) - A284321 (A016861 n).toNat

end

end A036008.P17275029112154100739

/-! ## A036008.P11631594078414393476

`abs(A284321(A016861(n)))*A020985(n)²`
-/

namespace A036008.P11631594078414393476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284321 (A016861 n).toNat| * A020985 n ^ 2

end

end A036008.P11631594078414393476

/-! ## A036008.P9913735818864944969

`and(2, A001248(n+1))-A284321(A016861(n))`
-/

namespace A036008.P9913735818864944969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001248 (n + 1)) - A284321 (A016861 n).toNat

end

end A036008.P9913735818864944969

/-! ## A036008.P593829304116880822

`A284321(5*n+1)*A332814(A332812(n+1))`
-/

namespace A036008.P593829304116880822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (5 * n + 1) * A332814 (A332812 (n + 1)).toNat

end

end A036008.P593829304116880822

/-! ## A036008.P12185916093455615744

`and(n, A000079(n))-A284321(A016861(n))`
-/

namespace A036008.P12185916093455615744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A000079 n) - A284321 (A016861 n).toNat

end

end A036008.P12185916093455615744

/-!
# A036009: Number of partitions of n into parts not of the form 25k, 25k+10 or 25k-10. Also number of partitions with at most 9 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036009, there is no canonical definition to state claims against.
-/

/-! ## A036009.P7744403922618542075

`A178798(A087153(n))+A039905(n+1)`
-/

namespace A036009.P7744403922618542075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A087153 n).toNat + A039905 (n + 1)

end

end A036009.P7744403922618542075

/-! ## A036009.P13568949338068564174

`A185284(A004273(n))+A039905(n+1)`
-/

namespace A036009.P13568949338068564174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004273 n).toNat + A039905 (n + 1)

end

end A036009.P13568949338068564174

/-! ## A036009.P16391981612767037307

`A185284(A005044(2*n+1))+A039905(n+1)`
-/

namespace A036009.P16391981612767037307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A005044 (2 * n + 1)).toNat + A039905 (n + 1)

end

end A036009.P16391981612767037307

/-! ## A036009.P463378182933255603

`A039905(A077342(n+1))`
-/

namespace A036009.P463378182933255603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039905 (A077342 (n + 1)).toNat

end

end A036009.P463378182933255603

/-!
# A036010: Number of partitions of n into parts not of the form 25k, 25k+11 or 25k-11. Also number of partitions with at most 10 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036010, there is no canonical definition to state claims against.
-/

/-! ## A036010.P18117312371730455151

`record[A284321(n)]`
-/

namespace A036010.P18117312371730455151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036010.P18117312371730455151

/-! ## A036010.P9666709235829977491

`A284321(5*(n+1))`
-/

namespace A036010.P9666709235829977491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284321 (5 * (n + 1))

end

end A036010.P9666709235829977491

/-! ## A036010.P15989957061940461159

`abs(A284321(A008706(n+1)))`
-/

namespace A036010.P15989957061940461159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284321 (A008706 (n + 1)).toNat|

end

end A036010.P15989957061940461159

/-! ## A036010.P8206025157177096311

`abs(A284321(A016897(n)+1))`
-/

namespace A036010.P8206025157177096311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284321 (A016897 n + 1).toNat|

end

end A036010.P8206025157177096311

/-! ## A036010.P11090062669338653748

`abs(A284321(A016861(n)+4))`
-/

namespace A036010.P11090062669338653748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284321 (A016861 n + 4).toNat|

end

end A036010.P11090062669338653748

/-!
# A036011: Number of partitions of n into parts not of the form 25k, 25k+12 or 25k-12. Also number of partitions with at most 11 parts of size 1 and differences between parts at distance 11 are greater than 1.

The programs for A036011, there is no canonical definition to state claims against.
-/

/-! ## A036011.P18232133649505285571

`A284322(5*n)`
-/

namespace A036011.P18232133649505285571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (5 * n)

end

end A036011.P18232133649505285571

/-! ## A036011.P1065615640260877435

`abs(A284322(lcm(5, A008706(n))))`
-/

namespace A036011.P1065615640260877435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (Int.lcm 5 (A008706 n))|

end

end A036011.P1065615640260877435

/-! ## A036011.P7958513325896249956

`abs(A284322(A008586(n)+n))`
-/

namespace A036011.P7958513325896249956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A008586 n + (n : ℤ)).toNat|

end

end A036011.P7958513325896249956

/-! ## A036011.P3285631100182915935

`A000007(n)+record[A284322(n+1)]`
-/

namespace A036011.P3285631100182915935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036011.P3285631100182915935

/-! ## A036011.P16189092392717078930

`A284322(A008706(n))+A000007(n)`
-/

namespace A036011.P16189092392717078930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A008706 n).toNat + A000007 n

end

end A036011.P16189092392717078930

/-! ## A036011.P2026399430579099936

`abs(record[A284322(A165754(n))])`
-/

namespace A036011.P2026399430579099936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284322 (A165754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A036011.P2026399430579099936

/-! ## A036011.P4197792451611750683

`abs(A284322(A004526(A017281(n))))`
-/

namespace A036011.P4197792451611750683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A004526 (A017281 n).toNat).toNat|

end

end A036011.P4197792451611750683

/-!
# A036012: a(n) = smallest number > 1 such that a(1)a(2)...a(n) + 1 is prime.

The programs for A036012, there is no canonical definition to state claims against.
-/

/-! ## A036012.P147594418676046666

`A084401(n+2)`
-/

namespace A036012.P147594418676046666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084401 (n + 2)

end

end A036012.P147594418676046666

/-! ## A036012.P11675993326976303481

`ceil(ratio[A057999(n)])`
-/

namespace A036012.P11675993326976303481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A036012.P11675993326976303481

/-! ## A036012.P10330201496748844838

`ratio[A084716(n+1)]`
-/

namespace A036012.P10330201496748844838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084716 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A036012.P10330201496748844838

/-! ## A036012.P4093133549086685076

`A028310(round(ratio[A057999(n)]))`
-/

namespace A036012.P4093133549086685076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A036012.P4093133549086685076

/-! ## A036012.P10256486984888832844

`A028310(ratio[1-A057999(n)])`
-/

namespace A036012.P10256486984888832844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A036012.P10256486984888832844

/-! ## A036012.P7105532387926794721

`ratio[abs(A033999(n))-A057999(n)]`
-/

namespace A036012.P7105532387926794721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| - A057999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A036012.P7105532387926794721

/-! ## A036012.P9135043365168346834

`ceil(A057999(n+1)/A057999(n))`
-/

namespace A036012.P9135043365168346834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057999 (n + 1) : ℚ) / (A057999 n : ℚ)⌉

end

end A036012.P9135043365168346834

/-! ## A036012.P12990667619804216502

`ratio[A033999(2*n)-A057999(n)]`
-/

namespace A036012.P12990667619804216502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - A057999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A036012.P12990667619804216502

/-! ## A036012.P10202245762505032192

`A084716(n+2)/A084716(n+1)`
-/

namespace A036012.P10202245762505032192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084716 (n + 2) : ℚ) / (A084716 (n + 1) : ℚ)

end

end A036012.P10202245762505032192

/-! ## A036012.P2490515617561040946

`round(ratio[A057999(n)])%A000040(n+2)`
-/

namespace A036012.P2490515617561040946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A000040 (n + 2))

end

end A036012.P2490515617561040946

/-!
# A036013: a(n) = smallest number > 1 such that a(1)a(2)...a(n) - 1 is prime (or 1).

The programs for A036013, there is no canonical definition to state claims against.
-/

/-! ## A036013.P2490932753239133340

`A084402(A178915(n+1))`
-/

namespace A036013.P2490932753239133340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (A178915 (n + 1)).toNat

end

end A036013.P2490932753239133340

/-! ## A036013.P10743663426280716041

`xor(A084402(n+1), A154281(n+1))`
-/

namespace A036013.P10743663426280716041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084402 (n + 1)) (A154281 (n + 1))

end

end A036013.P10743663426280716041

/-! ## A036013.P12804625302105551223

`xor(and(1, A001616(n+1)), A084402(n+1))`
-/

namespace A036013.P12804625302105551223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A001616 (n + 1))) (A084402 (n + 1))

end

end A036013.P12804625302105551223

/-! ## A036013.P13264542607310666505

`xor(A010052(A109853(n)), A084402(n+1))`
-/

namespace A036013.P13264542607310666505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010052 (A109853 n).toNat) (A084402 (n + 1))

end

end A036013.P13264542607310666505

/-! ## A036013.P3076329819901482004

`xor(A036987(A000124(n)), A084402(n+1))`
-/

namespace A036013.P3076329819901482004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (A000124 n).toNat) (A084402 (n + 1))

end

end A036013.P3076329819901482004

/-! ## A036013.P14793498292852373018

`xor(A036987(A055999(n)), A084402(n+1))`
-/

namespace A036013.P14793498292852373018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (A055999 n).toNat) (A084402 (n + 1))

end

end A036013.P14793498292852373018

/-! ## A036013.P17863421164568113120

`xor(A048298(A008795(n)), A084402(n+1))`
-/

namespace A036013.P17863421164568113120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048298 (A008795 n).toNat) (A084402 (n + 1))

end

end A036013.P17863421164568113120

/-! ## A036013.P16703101335578347260

`xor(A084402(n+1), A143259(A027689(n)))`
-/

namespace A036013.P16703101335578347260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084402 (n + 1)) (A143259 (A027689 n).toNat)

end

end A036013.P16703101335578347260

/-!
# A036015: Number of partitions of n into parts not of form 4k+2, 8k, 8k+1 or 8k-1.

The programs for A036015, there is no canonical definition to state claims against.
-/

/-! ## A036015.P3589867557296475242

`abs(A259774(n))`
-/

namespace A036015.P3589867557296475242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259774 n|

end

end A036015.P3589867557296475242

/-! ## A036015.P15175423410892843811

`A033999(n)*A259774(n)`
-/

namespace A036015.P15175423410892843811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A259774 n

end

end A036015.P15175423410892843811

/-! ## A036015.P7353807320540380308

`gcd(A000038(n), A259774(n))`
-/

namespace A036015.P7353807320540380308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259774 n)

end

end A036015.P7353807320540380308

/-! ## A036015.P8980574892782489782

`lcm(A020985(n), A259774(n))`
-/

namespace A036015.P8980574892782489782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A259774 n)

end

end A036015.P8980574892782489782

/-! ## A036015.P10470363718281482879

`A006950(n)/A106507(n)*A259774(n)`
-/

namespace A036015.P10470363718281482879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n : ℚ) / (A106507 n : ℚ) * (A259774 n : ℚ)

end

end A036015.P10470363718281482879

/-! ## A036015.P17965737723482965016

`A036016(n)/A258741(n)*A259774(n)`
-/

namespace A036015.P17965737723482965016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036016 n : ℚ) / (A258741 n : ℚ) * (A259774 n : ℚ)

end

end A036015.P17965737723482965016

/-! ## A036015.P115415294249036375

`A316384(Δ[n²])`
-/

namespace A036015.P115415294249036375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316384 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036015.P115415294249036375

/-! ## A036015.P18370097116686187240

`abs(A029838(Δ[n²]))`
-/

namespace A036015.P18370097116686187240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029838 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A036015.P18370097116686187240

/-! ## A036015.P10596040813661954898

`abs(A082303(2*n+1))`
-/

namespace A036015.P10596040813661954898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082303 (2 * n + 1)|

end

end A036015.P10596040813661954898

/-! ## A036015.P6240091386376350927

`A029838(2*n+1)*A033999(n)`
-/

namespace A036015.P6240091386376350927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n + 1) * A033999 n

end

end A036015.P6240091386376350927

/-! ## A036015.P10698293224334239402

`lcm(A033999(n), A082303(2*n+1))`
-/

namespace A036015.P10698293224334239402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A082303 (2 * n + 1))

end

end A036015.P10698293224334239402

/-! ## A036015.P3651001006378026266

`A033999(n+1)*A082303(2*n+1)`
-/

namespace A036015.P3651001006378026266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A082303 (2 * n + 1)

end

end A036015.P3651001006378026266

/-! ## A036015.P5828646748952234393

`A029838(2*n+1)*A057077(2*n)`
-/

namespace A036015.P5828646748952234393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n + 1) * A057077 (2 * n)

end

end A036015.P5828646748952234393

/-! ## A036015.P8776523071887306748

`gcd(A033322(n+2), A082303(2*n+1))`
-/

namespace A036015.P8776523071887306748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 2)) (A082303 (2 * n + 1))

end

end A036015.P8776523071887306748

/-! ## A036015.P2224180886396785667

`lcm(A008836(n+2), A029838(2*n+1))`
-/

namespace A036015.P2224180886396785667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 2)) (A029838 (2 * n + 1))

end

end A036015.P2224180886396785667

/-! ## A036015.P15071929242047524789

`A082303(2*n+1)*A087960(2*n+1)`
-/

namespace A036015.P15071929242047524789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 (2 * n + 1) * A087960 (2 * n + 1)

end

end A036015.P15071929242047524789

/-! ## A036015.P16558664467130919156

`A082303(2*n+1)/A029839(n+1)*A082304(n+1)`
-/

namespace A036015.P16558664467130919156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082303 (2 * n + 1) : ℚ) / (A029839 (n + 1) : ℚ) * (A082304 (n + 1) : ℚ)

end

end A036015.P16558664467130919156

/-! ## A036015.P8672423721948955104

`A020985(2*n+1)*A029838(2*n+1)*A020985(n)`
-/

namespace A036015.P8672423721948955104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A029838 (2 * n + 1) * A020985 n

end

end A036015.P8672423721948955104

/-! ## A036015.P9290107371825457272

`abs(A208589(A008590(2*n+1)/2))`
-/

namespace A036015.P9290107371825457272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208589 (SequenceMachineLib.roundAway ((A008590 (2 * n + 1) : ℚ) / 2)).toNat|

end

end A036015.P9290107371825457272

/-!
# A036016: Number of partitions of n into parts not of form 4k+2, 8k, 8k+3 or 8k-3.

The programs for A036016, there is no canonical definition to state claims against.
-/

/-! ## A036016.P1026230265223293146

`abs(A258741(n))`
-/

namespace A036016.P1026230265223293146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258741 n|

end

end A036016.P1026230265223293146

/-! ## A036016.P15903936720113190147

`A033999(n)*A258741(n)`
-/

namespace A036016.P15903936720113190147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258741 n

end

end A036016.P15903936720113190147

/-! ## A036016.P17898212697915605358

`gcd(A000038(n), A258741(n))`
-/

namespace A036016.P17898212697915605358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258741 n)

end

end A036016.P17898212697915605358

/-! ## A036016.P8096672998529555112

`lcm(A020985(n), A258741(n))`
-/

namespace A036016.P8096672998529555112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258741 n)

end

end A036016.P8096672998529555112

/-! ## A036016.P15187813194552930716

`A316384(2*n)`
-/

namespace A036016.P15187813194552930716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316384 (2 * n)

end

end A036016.P15187813194552930716

/-! ## A036016.P3706541451699823556

`abs(A029838(2*n))`
-/

namespace A036016.P3706541451699823556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029838 (2 * n)|

end

end A036016.P3706541451699823556

/-! ## A036016.P10564129632535317918

`abs(A082303(2*n))`
-/

namespace A036016.P10564129632535317918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082303 (2 * n)|

end

end A036016.P10564129632535317918

/-! ## A036016.P1100524474330171515

`A029838(2*n)*A033999(n)`
-/

namespace A036016.P1100524474330171515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n) * A033999 n

end

end A036016.P1100524474330171515

/-! ## A036016.P4920070699674335560

`A033999(n)*A082303(2*n)`
-/

namespace A036016.P4920070699674335560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A082303 (2 * n)

end

end A036016.P4920070699674335560

/-! ## A036016.P8622431646342957542

`lcm(A057077(n), A082303(2*n))`
-/

namespace A036016.P8622431646342957542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A082303 (2 * n))

end

end A036016.P8622431646342957542

/-! ## A036016.P13773243473118331822

`gcd(A033322(n+1), A082303(2*n))`
-/

namespace A036016.P13773243473118331822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A082303 (2 * n))

end

end A036016.P13773243473118331822

/-! ## A036016.P3012330817050211902

`A029838(2*n)*A057077(2*n)`
-/

namespace A036016.P3012330817050211902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n) * A057077 (2 * n)

end

end A036016.P3012330817050211902

/-! ## A036016.P7721516057688758864

`A057077(2*n)*A082303(2*n)`
-/

namespace A036016.P7721516057688758864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A082303 (2 * n)

end

end A036016.P7721516057688758864

/-! ## A036016.P7353480482233659402

`A082303(2*n)*A087960(2*n)`
-/

namespace A036016.P7353480482233659402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082303 (2 * n) * A087960 (2 * n)

end

end A036016.P7353480482233659402

/-! ## A036016.P10713335661634743379

`A034947(2*n+1)*A082303(2*n)`
-/

namespace A036016.P10713335661634743379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A082303 (2 * n)

end

end A036016.P10713335661634743379

/-! ## A036016.P17073102818364109501

`A020985(2*n+1)*A020985(n)*A029838(2*n)`
-/

namespace A036016.P17073102818364109501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A029838 (2 * n)

end

end A036016.P17073102818364109501

/-! ## A036016.P15238160527118467842

`abs(A283000(4*n))`
-/

namespace A036016.P15238160527118467842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283000 (4 * n)|

end

end A036016.P15238160527118467842

/-! ## A036016.P2115190398733232792

`abs(A093085(8*n))`
-/

namespace A036016.P2115190398733232792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093085 (8 * n)|

end

end A036016.P2115190398733232792

/-! ## A036016.P5362285102363704719

`abs(A208589(A008590(n)))`
-/

namespace A036016.P5362285102363704719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208589 (A008590 n).toNat|

end

end A036016.P5362285102363704719

/-!
# A036017: Number of partitions of n into parts not of form 4k+2, 12k, 12k+1 or 12k-1.

The programs for A036017, there is no canonical definition to state claims against.
-/

/-! ## A036017.P8085807283355753091

`A073252(n+1)-A036019(n+1)`
-/

namespace A036017.P8085807283355753091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073252 (n + 1) - A036019 (n + 1)

end

end A036017.P8085807283355753091

/-! ## A036017.P12833820173747254428

`(A073252(n+1)-A258327(n+1))/2`
-/

namespace A036017.P12833820173747254428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073252 (n + 1) - A258327 (n + 1) : ℚ) / 2

end

end A036017.P12833820173747254428

/-! ## A036017.P18294611826575808958

`A175126(A073252(n+1)-A258327(n+1))`
-/

namespace A036017.P18294611826575808958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A073252 (n + 1) - A258327 (n + 1)).toNat

end

end A036017.P18294611826575808958

/-! ## A036017.P16489486916330482958

`A004525(A073252(n+1)-A258327(n+1))`
-/

namespace A036017.P16489486916330482958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A073252 (n + 1) - A258327 (n + 1)).toNat

end

end A036017.P16489486916330482958

/-! ## A036017.P11963533978210773059

`A004526(A073252(n+1)-A258327(n+1))`
-/

namespace A036017.P11963533978210773059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073252 (n + 1) - A258327 (n + 1)).toNat

end

end A036017.P11963533978210773059

/-! ## A036017.P6717145083621991427

`A026741(A073252(n+1)-A258327(n+1))`
-/

namespace A036017.P6717145083621991427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A073252 (n + 1) - A258327 (n + 1)).toNat

end

end A036017.P6717145083621991427

/-!
# A036018: Number of partitions of n into parts not of form 4k+2, 12k, 12k+3 or 12k-3.

The programs for A036018, there is no canonical definition to state claims against.
-/

/-! ## A036018.P4963824515321852538

`abs(A101195(n))`
-/

namespace A036018.P4963824515321852538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101195 n|

end

end A036018.P4963824515321852538

/-! ## A036018.P11857969260362498246

`A033999(n)*A101195(n)`
-/

namespace A036018.P11857969260362498246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A101195 n

end

end A036018.P11857969260362498246

/-! ## A036018.P7198088286863546718

`gcd(A000038(n), A101195(n))`
-/

namespace A036018.P7198088286863546718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101195 n)

end

end A036018.P7198088286863546718

/-! ## A036018.P13525218099089717886

`lcm(A020985(n), A101195(n))`
-/

namespace A036018.P13525218099089717886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A101195 n)

end

end A036018.P13525218099089717886

/-! ## A036018.P2412035237340334309

`A101195(Δ[A008619(n)])*A101195(n)`
-/

namespace A036018.P2412035237340334309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101195 (f1 (n + 1) - f1 n).toNat * A101195 n

end

end A036018.P2412035237340334309

/-! ## A036018.P11711314977118556075

`A101195(n)/A101195(Δ[A008619(n)]²)`
-/

namespace A036018.P11711314977118556075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101195 n : ℚ) / (A101195 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A036018.P11711314977118556075

/-! ## A036018.P5886824651224132255

`abs(A271722(Δ[n²]))`
-/

namespace A036018.P5886824651224132255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A271722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A036018.P5886824651224132255

/-! ## A036018.P17798686898783887194

`abs(A271722(n+1+n)+and(2, n²))`
-/

namespace A036018.P17798686898783887194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A271722 (n + 1 + n) + (Nat.land 2 (n ^ 2) : ℤ)|

end

end A036018.P17798686898783887194

/-! ## A036018.P7931571971791683644

`round(sqrt(A001221(n+1)+A101195(n)²))`
-/

namespace A036018.P7931571971791683644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001221 (n + 1) + A101195 n ^ 2 : ℝ))

end

end A036018.P7931571971791683644

/-! ## A036018.P17747905677575420803

`A271722(2*n+1)²/abs(A271722(2*n+1))`
-/

namespace A036018.P17747905677575420803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271722 (2 * n + 1) ^ 2 : ℚ) / (|A271722 (2 * n + 1)| : ℚ)

end

end A036018.P17747905677575420803

/-! ## A036018.P4215594329087476944

`abs(A256626(3*n+1))`
-/

namespace A036018.P4215594329087476944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256626 (3 * n + 1)|

end

end A036018.P4215594329087476944

/-!
# A036019: Number of partitions of n into parts not of form 4k+2, 12k, 12k+5 or 12k-5.

The programs for A036019, there is no canonical definition to state claims against.
-/

/-! ## A036019.P8336564483806056178

`(A258327(n)+A073252(n))/2`
-/

namespace A036019.P8336564483806056178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258327 n + A073252 n : ℚ) / 2

end

end A036019.P8336564483806056178

/-! ## A036019.P10026815667068550806

`A325564(A258327(n)+A073252(n))-1`
-/

namespace A036019.P10026815667068550806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (A258327 n + A073252 n).toNat - 1

end

end A036019.P10026815667068550806

/-! ## A036019.P2703461672536613185

`A258327(n)+A175126(A073252(n)-A258327(n))`
-/

namespace A036019.P2703461672536613185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258327 n + A175126 (A073252 n - A258327 n).toNat

end

end A036019.P2703461672536613185

/-! ## A036019.P9936301506952258217

`A258327(n)+A004525(A073252(n)-A258327(n))`
-/

namespace A036019.P9936301506952258217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258327 n + A004525 (A073252 n - A258327 n).toNat

end

end A036019.P9936301506952258217

/-! ## A036019.P14443904951115179228

`A258327(n)+A026741(A073252(n)-A258327(n))`
-/

namespace A036019.P14443904951115179228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258327 n + A026741 (A073252 n - A258327 n).toNat

end

end A036019.P14443904951115179228

/-! ## A036019.P4742707789298344748

`A073252(n)-A004526(A073252(n)-A258327(n))`
-/

namespace A036019.P4742707789298344748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073252 n - A004526 (A073252 n - A258327 n).toNat

end

end A036019.P4742707789298344748

/-! ## A036019.P2137933612996472755

`A246425(A073252(n)+A258327(n)-1)`
-/

namespace A036019.P2137933612996472755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A073252 n + (A258327 n - 1)).toNat

end

end A036019.P2137933612996472755

/-! ## A036019.P14670719229244356665

`A246425(A073252(n)-(1-A258327(n)))`
-/

namespace A036019.P14670719229244356665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A073252 n - (1 - A258327 n)).toNat

end

end A036019.P14670719229244356665

/-! ## A036019.P17391669914244514409

`A175126(A258327(n)+A073252(n))`
-/

namespace A036019.P17391669914244514409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A258327 n + A073252 n).toNat

end

end A036019.P17391669914244514409

/-! ## A036019.P2526937581767849908

`A325563(A258327(n)+A073252(n))`
-/

namespace A036019.P2526937581767849908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A258327 n + A073252 n).toNat

end

end A036019.P2526937581767849908

/-!
# A036021: Number of partitions of n into parts not of form 4k+2, 16k, 16k+3 or 16k-3.

The programs for A036021, there is no canonical definition to state claims against.
-/

/-! ## A036021.P19052756178956755

`A000009(n)-A010059(A023105(n))`
-/

namespace A036021.P19052756178956755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A010059 (A023105 n).toNat

end

end A036021.P19052756178956755

/-! ## A036021.P10978014607020691893

`A000009(n)-A165263(A029038(n))`
-/

namespace A036021.P10978014607020691893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A165263 (A029038 n).toNat

end

end A036021.P10978014607020691893

/-! ## A036021.P13941274178458826567

`A000009(n)-A025426(A307531(A166444(n)))`
-/

namespace A036021.P13941274178458826567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A025426 (A307531 (A166444 n).toNat).toNat

end

end A036021.P13941274178458826567

/-!
# A036023: Number of partitions of n into parts not of form 4k+2, 16k, 16k+7 or 16k-7.

The programs for A036023, there is no canonical definition to state claims against.
-/

/-! ## A036023.P25195693750762517

`A119952(n)-A079067(A013615(n))`
-/

namespace A036023.P25195693750762517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119952 n - A079067 (A013615 n).toNat

end

end A036023.P25195693750762517

/-! ## A036023.P4877456439236739253

`A279385(A036033(n))`
-/

namespace A036023.P4877456439236739253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A036033 n).toNat

end

end A036023.P4877456439236739253

/-!
# A036024: Number of partitions of n into parts not of form 4k+2, 20k, 20k+1 or 20k-1. Also number of partitions in which no odd part is repeated, with no part of size less than or equal to 2 and where differences between parts at distance 4 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036024, there is no canonical definition to state claims against.
-/

/-! ## A036024.P8981475460345168223

`Δ[A316721(A048766(n*n²))]`
-/

namespace A036024.P8981475460345168223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316721 (A048766 (n * n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036024.P8981475460345168223

/-! ## A036024.P14853396485128100130

`Δ[A316721(n)]%A000416(n+1)`
-/

namespace A036024.P14853396485128100130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000416 (n + 1))

end

end A036024.P14853396485128100130

/-! ## A036024.P1378851718820596902

`Δ[A316721(n)]^A014963(A038472(n+15))`
-/

namespace A036024.P1378851718820596902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316721 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A014963 (A038472 (n + 15)).toNat : ℤ)

end

end A036024.P1378851718820596902

/-! ## A036024.P4363615452270762619

`Δ[A316721(n)%A219038(n+1)]`
-/

namespace A036024.P4363615452270762619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316721 n) (A219038 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036024.P4363615452270762619

/-! ## A036024.P17787269029938126710

`Δ[A006950(n)%A014886(n+1)]`
-/

namespace A036024.P17787269029938126710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006950 n) (A014886 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036024.P17787269029938126710

/-!
# A036025: Number of partitions of n into parts not of form 4k+2, 20k, 20k+3 or 20k-3. Also number of partitions in which no odd part is repeated, with 1 part of size less than or equal to 2 and where differences between parts at distance 4 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036025, there is no canonical definition to state claims against.
-/

/-! ## A036025.P5100221724486372509

`A036030(n+1)-A178798(A036038(n+1))`
-/

namespace A036025.P5100221724486372509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036030 (n + 1) - A178798 (A036038 (n + 1)).toNat

end

end A036025.P5100221724486372509

/-! ## A036025.P5553800018721408143

`A036030(n+1)%A067026(A036019(n))`
-/

namespace A036025.P5553800018721408143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036030 (n + 1)) (A067026 (A036019 n).toNat)

end

end A036025.P5553800018721408143

/-! ## A036025.P649419657345516935

`A189664(A286833(n)²)+A036030(n+1)`
-/

namespace A036025.P649419657345516935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A286833 n ^ 2).toNat + A036030 (n + 1)

end

end A036025.P649419657345516935

/-! ## A036025.P6150746945702676881

`A036030(n+1)*A368916(A079704(3*n+2))`
-/

namespace A036025.P6150746945702676881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036030 (n + 1) * A368916 (A079704 (3 * n + 2)).toNat

end

end A036025.P6150746945702676881

/-! ## A036025.P14823098308935712722

`A090106(A036030(n+1))`
-/

namespace A036025.P14823098308935712722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A036030 (n + 1)).toNat

end

end A036025.P14823098308935712722

/-!
# A036026: Number of partitions of n into parts not of forms 4*k+2, 20*k, 10*k+5.

The programs for A036026, there is no canonical definition to state claims against.
-/

/-! ## A036026.P3455792329764035530

`abs(A116494(n))`
-/

namespace A036026.P3455792329764035530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116494 n|

end

end A036026.P3455792329764035530

/-! ## A036026.P8845616925427291375

`A033999(n)*A116494(n)`
-/

namespace A036026.P8845616925427291375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116494 n

end

end A036026.P8845616925427291375

/-! ## A036026.P12318310558673303789

`gcd(A000038(n), A116494(n))`
-/

namespace A036026.P12318310558673303789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A116494 n)

end

end A036026.P12318310558673303789

/-! ## A036026.P14049303250043518645

`lcm(A020985(n), A116494(n))`
-/

namespace A036026.P14049303250043518645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A116494 n)

end

end A036026.P14049303250043518645

/-! ## A036026.P1526703923642556464

`A116494(n)/A057077(A057077(n)+n)`
-/

namespace A036026.P1526703923642556464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116494 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A036026.P1526703923642556464

/-! ## A036026.P7156111476009623659

`ratio[A057077(n)]*A116494(n)`
-/

namespace A036026.P7156111476009623659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A116494 n : ℚ)

end

end A036026.P7156111476009623659

/-! ## A036026.P17147948292298264740

`A146162(Δ[n²])`
-/

namespace A036026.P17147948292298264740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036026.P17147948292298264740

/-! ## A036026.P15006077040241594715

`abs(A147702(2*n+1))`
-/

namespace A036026.P15006077040241594715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147702 (2 * n + 1)|

end

end A036026.P15006077040241594715

/-! ## A036026.P3846717438496200153

`A057077(2*n)*A116494(n)`
-/

namespace A036026.P3846717438496200153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A116494 n

end

end A036026.P3846717438496200153

/-! ## A036026.P10864707822051403580

`A000007(n+1)-A147702(2*n+1)`
-/

namespace A036026.P10864707822051403580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A147702 (2 * n + 1)

end

end A036026.P10864707822051403580

/-! ## A036026.P10668689824654071

`A000038(n+1)-A147702(2*n+1)`
-/

namespace A036026.P10668689824654071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A147702 (2 * n + 1)

end

end A036026.P10668689824654071

/-! ## A036026.P8474126359392101319

`lcm(A147702(2*n+1), A154990(n+2))`
-/

namespace A036026.P8474126359392101319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A147702 (2 * n + 1)) (A154990 (n + 2))

end

end A036026.P8474126359392101319

/-! ## A036026.P16764542235630746040

`1-(A147702(2*n+1)+A033999(2*n))`
-/

namespace A036026.P16764542235630746040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A147702 (2 * n + 1) + A033999 (2 * n))

end

end A036026.P16764542235630746040

/-! ## A036026.P10449735171221851713

`A033999(2*n+1)*A147702(2*n+1)`
-/

namespace A036026.P10449735171221851713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A147702 (2 * n + 1)

end

end A036026.P10449735171221851713

/-! ## A036026.P15655348505885307115

`1-(A147702(2*n+1)+A147661(2*(n+1)))`
-/

namespace A036026.P15655348505885307115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A147702 (2 * n + 1) + A147661 (2 * (n + 1)))

end

end A036026.P15655348505885307115

/-! ## A036026.P12920069593424207992

`A116494(n)/A057077(A005408(n))`
-/

namespace A036026.P12920069593424207992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116494 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A036026.P12920069593424207992

/-! ## A036026.P9305076062093235612

`A070176(A070176(n+1)²)-A147702(2*n+1)`
-/

namespace A036026.P9305076062093235612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A070176 (n + 1) ^ 2).toNat - A147702 (2 * n + 1)

end

end A036026.P9305076062093235612

/-! ## A036026.P2545760788755437214

`A147702(2*n+1)*A147702(A147661(2*(n+1)))`
-/

namespace A036026.P2545760788755437214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147702 (2 * n + 1) * A147702 (A147661 (2 * (n + 1))).toNat

end

end A036026.P2545760788755437214

/-! ## A036026.P7735515202684993028

`abs(A138532(A016885(n)))`
-/

namespace A036026.P7735515202684993028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138532 (A016885 n).toNat|

end

end A036026.P7735515202684993028

/-!
# A036027: Number of partitions of n into parts not of form 4k+2, 20k, 20k+7 or 20k-7. Also number of partitions in which no odd part is repeated, with at most 3 parts of size less than or equal to 2 and where differences between parts at distance 4 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036027, there is no canonical definition to state claims against.
-/

/-! ## A036027.P7253332498609948216

`A036032(n+1)-A161088(A187829(n+1))`
-/

namespace A036027.P7253332498609948216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036032 (n + 1) - A161088 (A187829 (n + 1)).toNat

end

end A036027.P7253332498609948216

/-! ## A036027.P13155646409907520400

`A036032(n+1)-A102683(2^n)`
-/

namespace A036027.P13155646409907520400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036032 (n + 1) - A102683 (2 ^ n)

end

end A036027.P13155646409907520400

/-!
# A036028: Number of partitions of n into parts not of form 4k+2, 20k, 20k+9 or 20k-9. Also number of partitions in which no odd part is repeated, with at most 4 parts of size less than or equal to 2 and where differences between parts at distance 4 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036028, there is no canonical definition to state claims against.
-/

/-! ## A036028.P13354544017379621004

`A111660(2*A132975(n+2))`
-/

namespace A036028.P13354544017379621004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A132975 (n + 2)).toNat

end

end A036028.P13354544017379621004

/-! ## A036028.P10037088016714445762

`A204551(∑[∑[A204930(n+1)]])`
-/

namespace A036028.P10037088016714445762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036028.P10037088016714445762

/-! ## A036028.P7482934449128072949

`A227177(A189391(n))+A168201(n)`
-/

namespace A036028.P7482934449128072949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A189391 n).toNat + A168201 n

end

end A036028.P7482934449128072949

/-! ## A036028.P1344462030637492353

`A204551(A228986(n+1)+A038164(n))`
-/

namespace A036028.P1344462030637492353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A228986 (n + 1) + A038164 n).toNat

end

end A036028.P1344462030637492353

/-! ## A036028.P14802014254032977047

`A204551(A027010(n+2)*A282897(n+1))`
-/

namespace A036028.P14802014254032977047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A027010 (n + 2) * A282897 (n + 1)).toNat

end

end A036028.P14802014254032977047

/-!
# A036029: Number of partitions of n into parts not of form 4k+2, 24k, 24k+1 or 24k-1. Also number of partitions in which no odd part is repeated, with no part of size less than or equal to 2 and where differences between parts at distance 5 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036029, there is no canonical definition to state claims against.
-/

/-! ## A036029.P17142617166181526803

`Δ[A006950(n)-A307597(A058343(n))]`
-/

namespace A036029.P17142617166181526803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A307597 (A058343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036029.P17142617166181526803

/-! ## A036029.P17174420429224564193

`Δ[A006950(n)-A288707(A157211(n))]`
-/

namespace A036029.P17174420429224564193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A288707 (A157211 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036029.P17174420429224564193

/-! ## A036029.P13082568889736045669

`Δ[A006950(n)-A121373(A253261(n+3))]`
-/

namespace A036029.P13082568889736045669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A121373 (A253261 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036029.P13082568889736045669

/-! ## A036029.P10211817123883725232

`Δ[A056926(A106507(n)²)]`
-/

namespace A036029.P10211817123883725232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A106507 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036029.P10211817123883725232

/-! ## A036029.P17111395366316066636

`Δ[A006950(n)%A101009(n+1)]`
-/

namespace A036029.P17111395366316066636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006950 n) (A101009 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036029.P17111395366316066636

/-!
# A036030: Number of partitions of n into parts not of form 4k+2, 24k, 24k+3 or 24k-3. Also number of partitions in which no odd part is repeated, with 1 part of size less than or equal to 2 and where differences between parts at distance 5 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036030, there is no canonical definition to state claims against.
-/

/-! ## A036030.P16934496588877378231

`A036025(n+1)+A025459(A174109(n))`
-/

namespace A036030.P16934496588877378231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036025 (n + 1) + A025459 (A174109 n).toNat

end

end A036030.P16934496588877378231

/-! ## A036030.P17543817197340083488

`or(A010052(A007088(n)), A036025(n+1))`
-/

namespace A036030.P17543817197340083488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A007088 n).toNat) (A036025 (n + 1))

end

end A036030.P17543817197340083488

/-! ## A036030.P9562642069747857061

`or(A036025(n+1), A185274(A000931(n)))`
-/

namespace A036030.P9562642069747857061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036025 (n + 1)) (A185274 (A000931 n).toNat)

end

end A036030.P9562642069747857061

/-!
# A036032: Number of partitions of n into parts not of form 4k+2, 24k, 24k+7 or 24k-7. Also number of partitions in which no odd part is repeated, with at most 3 parts of size less than or equal to 2 and where differences between parts at distance 5 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036032, there is no canonical definition to state claims against.
-/

/-! ## A036032.P2787476634649537806

`A036033(n)+A036015(A187829(n+1))`
-/

namespace A036032.P2787476634649537806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036033 n + A036015 (A187829 (n + 1)).toNat

end

end A036032.P2787476634649537806

/-! ## A036032.P5716148804713862537

`A161088(n+1)+A036027(A187829(n+1))`
-/

namespace A036032.P5716148804713862537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (n + 1) + A036027 (A187829 (n + 1)).toNat

end

end A036032.P5716148804713862537

/-! ## A036032.P10533879757251159953

`A102683(A094536(n))+A036027(n+1)`
-/

namespace A036032.P10533879757251159953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A094536 n).toNat + A036027 (n + 1)

end

end A036032.P10533879757251159953

/-!
# A036033: Number of partitions of n into parts not of form 4k+2, 24k, 24k+9 or 24k-9. Also number of partitions in which no odd part is repeated, with at most 4 parts of size less than or equal to 2 and where differences between parts at distance 5 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036033, there is no canonical definition to state claims against.
-/

/-! ## A036033.P8334392179469512572

`A132975(n+1)+A059651(A184955(n))`
-/

namespace A036033.P8334392179469512572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (n + 1) + A059651 (A184955 n).toNat

end

end A036033.P8334392179469512572

/-! ## A036033.P15513620111465318887

`A132975(n+1)-A086080(A198314(n))`
-/

namespace A036033.P15513620111465318887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (n + 1) - A086080 (A198314 n).toNat

end

end A036033.P15513620111465318887

/-! ## A036033.P797045097250319720

`A132975(n+1)-A016389(A132990(n))`
-/

namespace A036033.P797045097250319720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (n + 1) - A016389 (A132990 n).toNat

end

end A036033.P797045097250319720

/-! ## A036033.P14283615050602830956

`A132975(n+1)-A011744(A184944(n))`
-/

namespace A036033.P14283615050602830956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (n + 1) - A011744 (A184944 n).toNat

end

end A036033.P14283615050602830956

/-!
# A036034: Number of partitions of n into parts not of form 4k+2, 24k, 24k+11 or 24k-11. Also number of partitions in which no odd part is repeated, with at most 5 parts of size less than or equal to 2 and where differences between parts at distance 5 are greater than 1 when the smallest part is odd and greater than 2 when the smallest part is even.

The programs for A036034, there is no canonical definition to state claims against.
-/

/-! ## A036034.P17724945225802689030

`A006950(A077168(n))-A326589(n)`
-/

namespace A036034.P17724945225802689030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (A077168 n).toNat - A326589 n

end

end A036034.P17724945225802689030

/-! ## A036034.P13088965687896709407

`A123580(A384884(n))`
-/

namespace A036034.P13088965687896709407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A384884 n).toNat

end

end A036034.P13088965687896709407

/-! ## A036034.P6651117386275873370

`A276611(A003945(n))-A054911(n)`
-/

namespace A036034.P6651117386275873370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A003945 n).toNat - A054911 n

end

end A036034.P6651117386275873370

/-! ## A036034.P209246691971240972

`A111660(A088314(n+1)+A029141(n))`
-/

namespace A036034.P209246691971240972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A088314 (n + 1) + A029141 n).toNat

end

end A036034.P209246691971240972

/-!
# A036035: Least integer of each prime signature, in graded (reflected or not) colexicographic order of exponents.

The programs for A036035, there is no canonical definition to state claims against.
-/

/-! ## A036035.P5587714424098953642

`A181821(A185974(n))`
-/

namespace A036035.P5587714424098953642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A185974 n).toNat

end

end A036035.P5587714424098953642

/-! ## A036035.P4023272826101100177

`A059901(n)+A000007(A252984(n))`
-/

namespace A036035.P4023272826101100177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n + A000007 (A252984 n).toNat

end

end A036035.P4023272826101100177

/-! ## A036035.P3805731958617191524

`A118917(A255185(n))+A059901(n)`
-/

namespace A036035.P3805731958617191524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A255185 n).toNat + A059901 n

end

end A036035.P3805731958617191524

/-! ## A036035.P2735555385862592735

`A059901(n)+A000007(A051424(n+1))`
-/

namespace A036035.P2735555385862592735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n + A000007 (A051424 (n + 1)).toNat

end

end A036035.P2735555385862592735

/-! ## A036035.P6897032135040909946

`A059901(n)+A000007(A123031(n+1))`
-/

namespace A036035.P6897032135040909946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n + A000007 (A123031 (n + 1)).toNat

end

end A036035.P6897032135040909946

/-! ## A036035.P2604301506353148039

`A059901(n)+A010815(A163431(n+1))`
-/

namespace A036035.P2604301506353148039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n + A010815 (A163431 (n + 1)).toNat

end

end A036035.P2604301506353148039

/-! ## A036035.P5294341344755931927

`A063524(A356316(n+5))+A059901(n)`
-/

namespace A036035.P5294341344755931927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A356316 (n + 5)).toNat + A059901 n

end

end A036035.P5294341344755931927

/-! ## A036035.P9950344225093366788

`A016116(Δ[A196176(n+1)])*A059901(n)`
-/

namespace A036035.P9950344225093366788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (f1 (n + 1) - f1 n).toNat * A059901 n

end

end A036035.P9950344225093366788

/-! ## A036035.P15498466521514538089

`A059901(n)%A002189(n)`
-/

namespace A036035.P15498466521514538089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059901 n) (A002189 n)

end

end A036035.P15498466521514538089

/-!
# A036036: Triangle read by rows in which row n lists all the parts of all reversed partitions of n, sorted first by length and then lexicographically.

The programs for A036036, there is no canonical definition to state claims against.
-/

/-! ## A036036.P4783860573084739043

`A334442(n)`
-/

namespace A036036.P4783860573084739043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334442 n

end

end A036036.P4783860573084739043

/-! ## A036036.P16681431335323093197

`and(A003064(n), A335122(n+1))`
-/

namespace A036036.P16681431335323093197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003064 n) (A335122 (n + 1))

end

end A036036.P16681431335323093197

/-! ## A036036.P11934243877255400232

`A335122(n+1)%A125011(n+1)`
-/

namespace A036036.P11934243877255400232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335122 (n + 1)) (A125011 (n + 1))

end

end A036036.P11934243877255400232

/-! ## A036036.P5236128550068715562

`gcd(A181310(n+1), A335122(n+1))`
-/

namespace A036036.P5236128550068715562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181310 (n + 1)) (A335122 (n + 1))

end

end A036036.P5236128550068715562

/-! ## A036036.P2955200829037946663

`lcm(A123271(n+2), A335122(n+1))`
-/

namespace A036036.P2955200829037946663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A335122 (n + 1))

end

end A036036.P2955200829037946663

/-!
# A036038: Triangle T(n,k) read by rows: multinomial coefficients for the partitions of n listed in Abramowitz-Stegun order, 1 <= k <= A000041(n).

The programs for A036038, there is no canonical definition to state claims against.
-/

/-! ## A036038.P5119991955350758716

`A318762(A185974(n+1))`
-/

namespace A036038.P5119991955350758716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A185974 (n + 1)).toNat

end

end A036038.P5119991955350758716

/-! ## A036038.P201657963393018130

`A008480(A036035(n+1))`
-/

namespace A036038.P201657963393018130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A036035 (n + 1)).toNat

end

end A036038.P201657963393018130

/-! ## A036038.P4104691712895239155

`A049009(n+1)/A035206(n+1)`
-/

namespace A036038.P4104691712895239155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A035206 (n + 1) : ℚ)

end

end A036038.P4104691712895239155

/-! ## A036038.P17866963625590649822

`A182779(n+1)/A085643(n+1)`
-/

namespace A036038.P17866963625590649822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182779 (n + 1) : ℚ) / (A085643 (n + 1) : ℚ)

end

end A036038.P17866963625590649822

/-! ## A036038.P2816726619084283536

`A182779(n+1)/(A048996(n+1)*A118851(n+1))`
-/

namespace A036038.P2816726619084283536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182779 (n + 1) : ℚ) / (A048996 (n + 1) * A118851 (n + 1) : ℚ)

end

end A036038.P2816726619084283536

/-! ## A036038.P10775101057830454085

`A036043(n+1)!/A048996(n+1)*A036040(n+1)`
-/

namespace A036038.P10775101057830454085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036043 (n + 1)).toNat : ℚ) / (A048996 (n + 1) : ℚ) * (A036040 (n + 1) : ℚ)

end

end A036038.P10775101057830454085

/-! ## A036038.P2844097134722400769

`A036042(n+1)!/(A036039(n+1)/A036040(n+1)*A118851(n+1))`
-/

namespace A036038.P2844097134722400769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 (n + 1)).toNat : ℚ) / ((A036039 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ) * (A118851 (n + 1) : ℚ))

end

end A036038.P2844097134722400769

/-! ## A036038.P12695144565021146090

`A036040(n+1)*A096162(n+1)`
-/

namespace A036038.P12695144565021146090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A096162 (n + 1)

end

end A036038.P12695144565021146090

/-! ## A036038.P870400195208771978

`A121457(n+1)/A107106(n+1)`
-/

namespace A036038.P870400195208771978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121457 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ)

end

end A036038.P870400195208771978

/-! ## A036038.P4727709273940964915

`A049009(n+1)*A096162(n+1)/A178888(n+1)`
-/

namespace A036038.P4727709273940964915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) * A096162 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)

end

end A036038.P4727709273940964915

/-! ## A036038.P3286632085173931531

`A096162(n+1)/A048996(n+1)*A179233(n+1)`
-/

namespace A036038.P3286632085173931531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A048996 (n + 1) : ℚ) * (A179233 (n + 1) : ℚ)

end

end A036038.P3286632085173931531

/-! ## A036038.P1797140419685009852

`A096162(n+1)*A130561(n+1)/A134133(n+1)`
-/

namespace A036038.P1797140419685009852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) * A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ)

end

end A036038.P1797140419685009852

/-! ## A036038.P13437559706046093800

`∏{e}[A185974(n+1), #!]*A036040(n+1)`
-/

namespace A036038.P13437559706046093800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A036040 (n + 1)

end

end A036038.P13437559706046093800

/-! ## A036038.P2089753819550961834

`∏{e}[A185974(n+1), A000142(#)]*A036040(n+1)`
-/

namespace A036038.P2089753819550961834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)) * A036040 (n + 1)

end

end A036038.P2089753819550961834

/-! ## A036038.P2316016073473689651

`A318762(ratio[A185974(n)]*A185974(n))`
-/

namespace A036038.P2316016073473689651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A185974 n : ℚ))).toNat

end

end A036038.P2316016073473689651

/-! ## A036038.P10978645382694613271

`A182779(n+1)/A305309(n+1)`
-/

namespace A036038.P10978645382694613271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182779 (n + 1) : ℚ) / (A305309 (n + 1) : ℚ)

end

end A036038.P10978645382694613271

/-!
# A036039: Irregular triangle of multinomial coefficients of integer partitions read by rows (in Abramowitz and Stegun ordering) giving the coefficients of the cycle index polynomials for the symmetric groups S_n.

The programs for A036039, there is no canonical definition to state claims against.
-/

/-! ## A036039.P851475047489625727

`A124795(A185974(n+1))`
-/

namespace A036039.P851475047489625727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A185974 (n + 1)).toNat

end

end A036039.P851475047489625727

/-! ## A036039.P1384965295849368536

`A036040(n+1)*A107106(n+1)`
-/

namespace A036039.P1384965295849368536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1) * A107106 (n + 1)

end

end A036039.P1384965295849368536

/-! ## A036039.P5735479871547035619

`A121457(n+1)/A096162(n+1)`
-/

namespace A036039.P5735479871547035619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121457 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ)

end

end A036039.P5735479871547035619

/-! ## A036039.P5414016800927990648

`A173869(n+1)/A164341(n+1)`
-/

namespace A036039.P5414016800927990648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173869 (n + 1) : ℚ) / (A164341 (n + 1) : ℚ)

end

end A036039.P5414016800927990648

/-! ## A036039.P7690860295888243956

`A036038(n+1)/A096162(n+1)*A107106(n+1)`
-/

namespace A036039.P7690860295888243956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ) * (A107106 (n + 1) : ℚ)

end

end A036039.P7690860295888243956

/-! ## A036039.P9988842003295608826

`A036038(n+1)/∏{e}[A185974(n+1), #!]*A107106(n+1)`
-/

namespace A036039.P9988842003295608826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ) * (A107106 (n + 1) : ℚ)

end

end A036039.P9988842003295608826

/-! ## A036039.P14311936402730471046

`A107106(n+1)*A124794(A185974(n+1))`
-/

namespace A036039.P14311936402730471046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107106 (n + 1) * A124794 (A185974 (n + 1)).toNat

end

end A036039.P14311936402730471046

/-! ## A036039.P173072883658909247

`A318762(A185974(n+1))/A096162(n+1)*A107106(n+1)`
-/

namespace A036039.P173072883658909247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A107106 (n + 1) : ℚ)

end

end A036039.P173072883658909247

/-! ## A036039.P10352184493156801029

`A036038(n+1)*A107106(n+1)/A112624(A185974(n+1))`
-/

namespace A036039.P10352184493156801029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) * A107106 (n + 1) : ℚ) / (A112624 (A185974 (n + 1)).toNat : ℚ)

end

end A036039.P10352184493156801029

/-! ## A036039.P11214093381224272180

`A318808(2*A185974(n+1))/A096162(n+1)*A107106(n+1)`
-/

namespace A036039.P11214093381224272180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318808 (2 * A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ) * (A107106 (n + 1) : ℚ)

end

end A036039.P11214093381224272180

/-!
# A036040: Irregular triangle of multinomial coefficients, read by rows (version 1).

The programs for A036040, there is no canonical definition to state claims against.
-/

/-! ## A036040.P2411174730762313798

`A124794(A185974(n+1))`
-/

namespace A036040.P2411174730762313798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A185974 (n + 1)).toNat

end

end A036040.P2411174730762313798

/-! ## A036040.P16454270444174799142

`A036039(n+1)/A107106(n+1)`
-/

namespace A036040.P16454270444174799142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036039 (n + 1) : ℚ) / (A107106 (n + 1) : ℚ)

end

end A036040.P16454270444174799142

/-! ## A036040.P5395374017736192545

`A036038(n+1)/floor(A036043(n+1)!/A048996(n+1))`
-/

namespace A036040.P5395374017736192545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (⌊(Nat.factorial (A036043 (n + 1)).toNat : ℚ) / (A048996 (n + 1) : ℚ)⌋ : ℚ)

end

end A036040.P5395374017736192545

/-! ## A036040.P17673727506601047753

`A036038(n+1)/A096162(n+1)`
-/

namespace A036040.P17673727506601047753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A096162 (n + 1) : ℚ)

end

end A036040.P17673727506601047753

/-! ## A036040.P919370897314050936

`A122454(n+1)/A098546(n+1)`
-/

namespace A036040.P919370897314050936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122454 (n + 1) : ℚ) / (A098546 (n + 1) : ℚ)

end

end A036040.P919370897314050936

/-! ## A036040.P4641539269819126597

`A049009(n+1)/A178888(n+1)`
-/

namespace A036040.P4641539269819126597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)

end

end A036040.P4641539269819126597

/-! ## A036040.P13394899741277819282

`A179233(n+1)/A048996(n+1)`
-/

namespace A036040.P13394899741277819282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179233 (n + 1) : ℚ) / (A048996 (n + 1) : ℚ)

end

end A036040.P13394899741277819282

/-! ## A036040.P17605328368803934473

`A130561(n+1)/A134133(n+1)`
-/

namespace A036040.P17605328368803934473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 (n + 1) : ℚ) / (A134133 (n + 1) : ℚ)

end

end A036040.P17605328368803934473

/-! ## A036040.P15410784440226963397

`A179236(n+1)/A178802(n+1)`
-/

namespace A036040.P15410784440226963397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 (n + 1) : ℚ) / (A178802 (n + 1) : ℚ)

end

end A036040.P15410784440226963397

/-! ## A036040.P1376495498859329749

`A181415(n+1)/A181512(n+1)`
-/

namespace A036040.P1376495498859329749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181415 (n + 1) : ℚ) / (A181512 (n + 1) : ℚ)

end

end A036040.P1376495498859329749

/-! ## A036040.P6921890281502423717

`A127671(n+1)/A264753(n+1)`
-/

namespace A036040.P6921890281502423717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127671 (n + 1) : ℚ) / (A264753 (n + 1) : ℚ)

end

end A036040.P6921890281502423717

/-! ## A036040.P14077671323278292357

`A178882(n+1)/A000142(A036042(n+1))`
-/

namespace A036040.P14077671323278292357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178882 (n + 1) : ℚ) / (A000142 (A036042 (n + 1)).toNat : ℚ)

end

end A036040.P14077671323278292357

/-! ## A036040.P1542963905503318997

`A049009(n+1)/(A035206(n+1)*A096162(n+1))`
-/

namespace A036040.P1542963905503318997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 (n + 1) : ℚ) / (A035206 (n + 1) * A096162 (n + 1) : ℚ)

end

end A036040.P1542963905503318997

/-! ## A036040.P1645336764742660629

`A035206(n+1)*A036038(n+1)/A178888(n+1)`
-/

namespace A036040.P1645336764742660629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 (n + 1) * A036038 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)

end

end A036040.P1645336764742660629

/-! ## A036040.P798571386217732471

`A036038(n+1)/∏{e}[A185974(n+1), #!]`
-/

namespace A036040.P798571386217732471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℚ)

end

end A036040.P798571386217732471

/-! ## A036040.P8723516638533499235

`A036038(n+1)/∏{e}[A185974(n+1), A000142(#)]`
-/

namespace A036040.P8723516638533499235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ)

end

end A036040.P8723516638533499235

/-! ## A036040.P4581522521404613161

`A318762(A185974(n+1))/A096162(n+1)`
-/

namespace A036040.P4581522521404613161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (A185974 (n + 1)).toNat : ℚ) / (A096162 (n + 1) : ℚ)

end

end A036040.P4581522521404613161

/-! ## A036040.P676266024614938842

`A036038(n+1)/A112624(A185974(n+1))`
-/

namespace A036040.P676266024614938842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036038 (n + 1) : ℚ) / (A112624 (A185974 (n + 1)).toNat : ℚ)

end

end A036040.P676266024614938842

/-!
# A036041: Number of prime divisors, counted with multiplicity, of prime signature A025487(n); equals size of associated partition.

The programs for A036041, there is no canonical definition to state claims against.
-/

/-! ## A036041.P10996151265648468686

`A001222(A025487(n+1))`
-/

namespace A036041.P10996151265648468686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025487 (n + 1)).toNat

end

end A036041.P10996151265648468686

/-! ## A036041.P17353523020734664193

`A001222(A181822(n+1))`
-/

namespace A036041.P17353523020734664193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181822 (n + 1)).toNat

end

end A036041.P17353523020734664193

/-! ## A036041.P18052021971872452503

`val(A181817(n+1), 2)`
-/

namespace A036041.P18052021971872452503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181817 (n + 1)).toNat 2

end

end A036041.P18052021971872452503

/-! ## A036041.P10317055663373687955

`val(A025487(n+1)*A181816(n+1), 2)`
-/

namespace A036041.P10317055663373687955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025487 (n + 1) * A181816 (n + 1)).toNat 2

end

end A036041.P10317055663373687955

/-! ## A036041.P1672046533653299281

`A056239(A181820(n+1))`
-/

namespace A036041.P1672046533653299281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181820 (n + 1)).toNat

end

end A036041.P1672046533653299281

/-! ## A036041.P13222733392578413556

`∑{e}[A051466(A329898(n+1)), #]`
-/

namespace A036041.P13222733392578413556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A036041.P13222733392578413556

/-! ## A036041.P9034840387674144638

`A061394(n+1)+A001222(A307107(n+1))`
-/

namespace A036041.P9034840387674144638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1) + A001222 (A307107 (n + 1)).toNat

end

end A036041.P9034840387674144638

/-! ## A036041.P9179487034098907191

`A001222(record[A329899(n+1)])`
-/

namespace A036041.P9179487034098907191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036041.P9179487034098907191

/-! ## A036041.P11738502409981860385

`A001222(record[A051466(n+2)])`
-/

namespace A036041.P11738502409981860385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036041.P11738502409981860385

/-! ## A036041.P8928739500681721335

`A001222(A051466(A329898(n+1)))`
-/

namespace A036041.P8928739500681721335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051466 (A329898 (n + 1)).toNat).toNat

end

end A036041.P8928739500681721335

/-! ## A036041.P5464629065042433991

`A001222(A055932(A331119(n+1)))`
-/

namespace A036041.P5464629065042433991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055932 (A331119 (n + 1)).toNat).toNat

end

end A036041.P5464629065042433991

/-! ## A036041.P11052278211421379946

`A001222(A324577(n+1)/A324576(n+1))`
-/

namespace A036041.P11052278211421379946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A036041.P11052278211421379946

/-! ## A036041.P1835944266012102004

`A001222(record[A328479(n+1)])`
-/

namespace A036041.P1835944266012102004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036041.P1835944266012102004

/-! ## A036041.P2067599167755288079

`A001222(A329887(A329905(n+1)))`
-/

namespace A036041.P2067599167755288079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329887 (A329905 (n + 1)).toNat).toNat

end

end A036041.P2067599167755288079

/-!
# A036042: k appears partition(k) times.

The programs for A036042, there is no canonical definition to state claims against.
-/

/-! ## A036042.P6638358717485735666

`∑[char[A000070(n)]]`
-/

namespace A036042.P6638358717485735666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P6638358717485735666

/-! ## A036042.P1057178096926792483

`∑[char[A025065(n)]]`
-/

namespace A036042.P1057178096926792483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P1057178096926792483

/-! ## A036042.P15483342832374013588

`ceil(log2(∑[A048996(n)]))`
-/

namespace A036042.P15483342832374013588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A036042.P15483342832374013588

/-! ## A036042.P4995542150871068993

`ceil(log2(∑[A072811(n)]))`
-/

namespace A036042.P4995542150871068993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A036042.P4995542150871068993

/-! ## A036042.P65806741549210984

`ceil(log2(∑[A319193(n)]))`
-/

namespace A036042.P65806741549210984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A036042.P65806741549210984

/-! ## A036042.P10534977984005922512

`∑[char[∑[A000041(n)]]]`
-/

namespace A036042.P10534977984005922512
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P10534977984005922512

/-! ## A036042.P15880524530418590097

`∑[char[∑[A035363(n)]]]`
-/

namespace A036042.P15880524530418590097
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P15880524530418590097

/-! ## A036042.P18228722146912449054

`∑[char[∑[A035377(n)]]]`
-/

namespace A036042.P18228722146912449054
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P18228722146912449054

/-! ## A036042.P1637760595433798356

`∑[char[∑[A174712(n)]]]`
-/

namespace A036042.P1637760595433798356
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P1637760595433798356

/-! ## A036042.P11554421218752863467

`∑[char[∑[A330643(n)]]]`
-/

namespace A036042.P11554421218752863467
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P11554421218752863467

/-! ## A036042.P3353366483494164694

`ceil(log2(A175020(n+1)))`
-/

namespace A036042.P3353366483494164694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A175020 (n + 1) : ℝ)⌉

end

end A036042.P3353366483494164694

/-! ## A036042.P13712766620505550510

`∑[C(C(2, A036043(n)), 2)]`
-/

namespace A036042.P13712766620505550510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A036043 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P13712766620505550510

/-! ## A036042.P3222640568115620110

`ceil(log2(A037014(n+1)+1))`
-/

namespace A036042.P3222640568115620110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A037014 (n + 1) + 1 : ℝ)⌉

end

end A036042.P3222640568115620110

/-! ## A036042.P8276792324772182184

`∑[char[A100824(2*n+1)]]`
-/

namespace A036042.P8276792324772182184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P8276792324772182184

/-! ## A036042.P12649689358421858628

`∑[char[A100835(2*n+1)]]`
-/

namespace A036042.P12649689358421858628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036042.P12649689358421858628

/-! ## A036042.P12013742163061873118

`ceil(log2(A037014(n+2)))`
-/

namespace A036042.P12013742163061873118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A037014 (n + 2) : ℝ)⌉

end

end A036042.P12013742163061873118

/-! ## A036042.P5260070535174069671

`round(log2(A037016(n+2)))`
-/

namespace A036042.P5260070535174069671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A037016 (n + 2) : ℝ))

end

end A036042.P5260070535174069671

/-! ## A036042.P15956365534315070842

`ceil(log2(A114994(n)+1))`
-/

namespace A036042.P15956365534315070842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A114994 n + 1 : ℝ)⌉

end

end A036042.P15956365534315070842

/-! ## A036042.P11047866873017791703

`A248120(n+1)/A248927(n+1)-1`
-/

namespace A036042.P11047866873017791703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248120 (n + 1) : ℚ) / (A248927 (n + 1) : ℚ) - 1

end

end A036042.P11047866873017791703

/-! ## A036042.P7118020206971156214

`A056239(A215366(n))`
-/

namespace A036042.P7118020206971156214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A215366 n).toNat

end

end A036042.P7118020206971156214

/-!
# A036043: Irregular triangle read by rows: row n (n >= 0) gives number of parts in all partitions of n (in Abramowitz and Stegun order).

The programs for A036043, there is no canonical definition to state claims against.
-/

/-! ## A036043.P5524923815500436290

`A001222(A334433(n))`
-/

namespace A036043.P5524923815500436290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334433 n).toNat

end

end A036043.P5524923815500436290

/-! ## A036043.P7088535796964815953

`val(A227955(n), 2)`
-/

namespace A036043.P7088535796964815953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A227955 n).toNat 2

end

end A036043.P7088535796964815953

/-! ## A036043.P17192272884457164964

`∑{e}[A185974(n), #]`
-/

namespace A036043.P17192272884457164964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A036043.P17192272884457164964

/-! ## A036043.P9349867099263597765

`∑{e}[A334435(n), #]`
-/

namespace A036043.P9349867099263597765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A036043.P9349867099263597765

/-! ## A036043.P1359700318693586162

`∑{e}[A334438(n), #]`
-/

namespace A036043.P1359700318693586162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A036043.P1359700318693586162

/-! ## A036043.P6161863086960150457

`A001222(A185974(n))`
-/

namespace A036043.P6161863086960150457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A185974 n).toNat

end

end A036043.P6161863086960150457

/-! ## A036043.P2682672201175810343

`A001222(A334435(n))`
-/

namespace A036043.P2682672201175810343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334435 n).toNat

end

end A036043.P2682672201175810343

/-! ## A036043.P10716836214192202309

`A001222(A334438(n))`
-/

namespace A036043.P10716836214192202309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334438 n).toNat

end

end A036043.P10716836214192202309

/-! ## A036043.P14881544753279348993

`A001222(gcd(A140513(n), A227955(n)))`
-/

namespace A036043.P14881544753279348993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A140513 n) (A227955 n))

end

end A036043.P14881544753279348993

/-! ## A036043.P8621839488221470602

`A001222(and(-A227955(n), A227955(n)))`
-/

namespace A036043.P8621839488221470602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A227955 n) (A227955 n)).toNat

end

end A036043.P8621839488221470602

/-! ## A036043.P2239132274201997921

`A061395(A334434(n))`
-/

namespace A036043.P2239132274201997921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A334434 n).toNat

end

end A036043.P2239132274201997921

/-! ## A036043.P4050268973449884833

`A090996(A037016(n+1))`
-/

namespace A036043.P4050268973449884833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A037016 (n + 1)).toNat

end

end A036043.P4050268973449884833

/-! ## A036043.P11840779445696758262

`A056239(∏{e}[A185974(n), A000079(#)])`
-/

namespace A036043.P11840779445696758262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A036043.P11840779445696758262

/-! ## A036043.P4516873180958404486

`A090996(eq[n, A335835(n)])`
-/

namespace A036043.P4516873180958404486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036043.P4516873180958404486

/-! ## A036043.P15678290878625957701

`A090996(record[gcd(n, A335835(n))])`
-/

namespace A036043.P15678290878625957701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A335835 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A036043.P15678290878625957701

/-! ## A036043.P4372154414593361765

`A272604(2*A037016(n+1))`
-/

namespace A036043.P4372154414593361765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (2 * A037016 (n + 1)).toNat

end

end A036043.P4372154414593361765

/-! ## A036043.P11203002471965947250

`A001222(A000265(A344122(n+2)/4))`
-/

namespace A036043.P11203002471965947250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 4)).toNat).toNat

end

end A036043.P11203002471965947250

/-! ## A036043.P4244553632341350897

`A087436(A344122(n+2)/2)`
-/

namespace A036043.P4244553632341350897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 2)).toNat

end

end A036043.P4244553632341350897

/-!
# A036044: BCR(n): write in binary, complement, reverse.

The programs for A036044, the canonical program `A036044.P16648927426293672306` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036044 has offset 0).

The definition of A036044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036044.P16648927426293672306

`A055945(n)+A035327(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036044

/-- `A055945(n)+A035327(n)` -/
def P16648927426293672306.Spec : Prop :=
  ∀ n, P16648927426293672306.a n = A036044 n

theorem P16648927426293672306.correct : P16648927426293672306.Spec := by
  intro n
  simp only [A036044]

end A036044

/-! ## A036044.P4591199997295021945

`xor(n, A175920(A028310(n)))`
-/

namespace A036044.P4591199997295021945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175920 (A028310 n).toNat)

end

end A036044.P4591199997295021945

namespace A036044

/-- `xor(n, A175920(A028310(n)))` -/
def P4591199997295021945.Spec : Prop :=
  ∀ n, P4591199997295021945.a n = A036044 n

end A036044

/-! ## A036044.P8470141017292481523

`xor(A035327(n), A175919(n))`
-/

namespace A036044.P8470141017292481523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035327 n) (A175919 n)

end

end A036044.P8470141017292481523

namespace A036044

/-- `xor(A035327(n), A175919(n))` -/
def P8470141017292481523.Spec : Prop :=
  ∀ n, P8470141017292481523.a n = A036044 n

end A036044

/-! ## A036044.P217997550701479528

`A276795(n+1)%A016825(n)`
-/

namespace A036044.P217997550701479528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276795 (n + 1)) (A016825 n)

end

end A036044.P217997550701479528

namespace A036044

/-- `A276795(n+1)%A016825(n)` -/
def P217997550701479528.Spec : Prop :=
  ∀ n, P217997550701479528.a n = A036044 n

end A036044

/-! ## A036044.P1014950104194082221

`A035327(n)+n-A030101(n)`
-/

namespace A036044.P1014950104194082221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + ((n : ℤ) - A030101 n)

end

end A036044.P1014950104194082221

namespace A036044

/-- `A035327(n)+n-A030101(n)` -/
def P1014950104194082221.Spec : Prop :=
  ∀ n, P1014950104194082221.a n = A036044 n

end A036044

/-! ## A036044.P16562328471631714281

`A062383(n)-(A030101(n)+A030101(A053644(n)))`
-/

namespace A036044.P16562328471631714281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (A030101 n + A030101 (A053644 n).toNat)

end

end A036044.P16562328471631714281

namespace A036044

/-- `A062383(n)-(A030101(n)+A030101(A053644(n)))` -/
def P16562328471631714281.Spec : Prop :=
  ∀ n, P16562328471631714281.a n = A036044 n

end A036044

/-! ## A036044.P11399001778284537992

`A281499(A006068(n))`
-/

namespace A036044.P11399001778284537992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281499 (A006068 n).toNat

end

end A036044.P11399001778284537992

namespace A036044

/-- `A281499(A006068(n))` -/
def P11399001778284537992.Spec : Prop :=
  ∀ n, P11399001778284537992.a n = A036044 n

end A036044

/-! ## A036044.P7985761246215912278

`and(A003817(2*n)-A145341(2*(n+1)), A003817(n+1))`
-/

namespace A036044.P7985761246215912278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n) - A145341 (2 * (n + 1))) (A003817 (n + 1))

end

end A036044.P7985761246215912278

namespace A036044

/-- `and(A003817(2*n)-A145341(2*(n+1)), A003817(n+1))` -/
def P7985761246215912278.Spec : Prop :=
  ∀ n, P7985761246215912278.a n = A036044 n

end A036044

/-! ## A036044.P14659677680709303784

`and(A003817(2*n)-A264618(2*n+1), A003817(n+1))`
-/

namespace A036044.P14659677680709303784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n) - A264618 (2 * n + 1)) (A003817 (n + 1))

end

end A036044.P14659677680709303784

namespace A036044

/-- `and(A003817(2*n)-A264618(2*n+1), A003817(n+1))` -/
def P14659677680709303784.Spec : Prop :=
  ∀ n, P14659677680709303784.a n = A036044 n

end A036044

/-! ## A036044.P1560833339106071279

`and(A003817(2*n)-A264619(2*n+1), A003817(n+1))`
-/

namespace A036044.P1560833339106071279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n) - A264619 (2 * n + 1)) (A003817 (n + 1))

end

end A036044.P1560833339106071279

namespace A036044

/-- `and(A003817(2*n)-A264619(2*n+1), A003817(n+1))` -/
def P1560833339106071279.Spec : Prop :=
  ∀ n, P1560833339106071279.a n = A036044 n

end A036044

/-! ## A036044.P16324249325156199919

`A003817(A003817(n)+1)-(A053644(2*n)+A030101(n))`
-/

namespace A036044.P16324249325156199919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A003817 n + 1).toNat - (A053644 (2 * n) + A030101 n)

end

end A036044.P16324249325156199919

namespace A036044

/-- `A003817(A003817(n)+1)-(A053644(2*n)+A030101(n))` -/
def P16324249325156199919.Spec : Prop :=
  ∀ n, P16324249325156199919.a n = A036044 n

end A036044

/-! ## A036044.P7153430134077161442

`A030101(2*n+1)-A014601(A030101(n))`
-/

namespace A036044.P7153430134077161442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * n + 1) - A014601 (A030101 n).toNat

end

end A036044.P7153430134077161442

namespace A036044

/-- `A030101(2*n+1)-A014601(A030101(n))` -/
def P7153430134077161442.Spec : Prop :=
  ∀ n, P7153430134077161442.a n = A036044 n

end A036044

/-! ## A036044.P5355702252925459148

`and(A003817(2*n)-A030101(2*n+1), A003817(n+1))`
-/

namespace A036044.P5355702252925459148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * n) - A030101 (2 * n + 1)) (A003817 (n + 1))

end

end A036044.P5355702252925459148

namespace A036044

/-- `and(A003817(2*n)-A030101(2*n+1), A003817(n+1))` -/
def P5355702252925459148.Spec : Prop :=
  ∀ n, P5355702252925459148.a n = A036044 n

end A036044

/-! ## A036044.P17403636175873182196

`A035327(floor(A145341(n+1)+acot(n)))`
-/

namespace A036044.P17403636175873182196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ⌊(A145341 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A036044.P17403636175873182196

namespace A036044

/-- `A035327(floor(A145341(n+1)+acot(n)))` -/
def P17403636175873182196.Spec : Prop :=
  ∀ n, P17403636175873182196.a n = A036044 n

end A036044

/-! ## A036044.P6227426882541694973

`A035327(A035327(n)+A055944(n)+1)`
-/

namespace A036044.P6227426882541694973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 n + (A055944 n + 1)).toNat

end

end A036044.P6227426882541694973

namespace A036044

/-- `A035327(A035327(n)+A055944(n)+1)` -/
def P6227426882541694973.Spec : Prop :=
  ∀ n, P6227426882541694973.a n = A036044 n

end A036044

/-! ## A036044.P17809101999367600639

`A035327(A135528(2*n+1)+A056539(2*n+1))`
-/

namespace A036044.P17809101999367600639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A135528 (2 * n + 1) + A056539 (2 * n + 1)).toNat

end

end A036044.P17809101999367600639

namespace A036044

/-- `A035327(A135528(2*n+1)+A056539(2*n+1))` -/
def P17809101999367600639.Spec : Prop :=
  ∀ n, P17809101999367600639.a n = A036044 n

end A036044

/-! ## A036044.P6927418159442721887

`A030109(2*A035327(n)+1+n)`
-/

namespace A036044.P6927418159442721887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * A035327 n + 1 + (n : ℤ)).toNat

end

end A036044.P6927418159442721887

namespace A036044

/-- `A030109(2*A035327(n)+1+n)` -/
def P6927418159442721887.Spec : Prop :=
  ∀ n, P6927418159442721887.a n = A036044 n

end A036044

/-! ## A036044.P17465676334885691419

`A030109(A062383(A062383(n)+1)-(n+1))`
-/

namespace A036044.P17465676334885691419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A062383 (A062383 n + 1).toNat - (n + 1 : ℤ)).toNat

end

end A036044.P17465676334885691419

namespace A036044

/-- `A030109(A062383(A062383(n)+1)-(n+1))` -/
def P17465676334885691419.Spec : Prop :=
  ∀ n, P17465676334885691419.a n = A036044 n

end A036044

/-! ## A036044.P7968403656296457015

`A076877(A105670(n+1))-(A030101(n)+2)`
-/

namespace A036044.P7968403656296457015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (A105670 (n + 1)).toNat - (A030101 n + 2)

end

end A036044.P7968403656296457015

namespace A036044

/-- `A076877(A105670(n+1))-(A030101(n)+2)` -/
def P7968403656296457015.Spec : Prop :=
  ∀ n, P7968403656296457015.a n = A036044 n

end A036044

/-! ## A036044.P1918137457066693871

`A258746(A129594(2*n+1))-A053644(2*n)`
-/

namespace A036044.P1918137457066693871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (A129594 (2 * n + 1)).toNat - A053644 (2 * n)

end

end A036044.P1918137457066693871

namespace A036044

/-- `A258746(A129594(2*n+1))-A053644(2*n)` -/
def P1918137457066693871.Spec : Prop :=
  ∀ n, P1918137457066693871.a n = A036044 n

end A036044

/-!
# A036045: Sum of distances between dual pairs of partitions of n for the canonical order.

The programs for A036045, there is no canonical definition to state claims against.
-/

/-! ## A036045.P14614728378810653211

`2*A054404(A318612(n²+1))`
-/

namespace A036045.P14614728378810653211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054404 (A318612 (n ^ 2 + 1)).toNat

end

end A036045.P14614728378810653211

/-! ## A036045.P9777219898953169233

`∑[A000196(A005013(3*n))]`
-/

namespace A036045.P9777219898953169233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005013 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036045.P9777219898953169233

/-! ## A036045.P2925207247622684700

`record[A103694(n)]*A210736(n)`
-/

namespace A036045.P2925207247622684700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A210736 n

end

end A036045.P2925207247622684700

/-!
# A036052: Product of the lengths of the cycle types of the permutation created by length sorting on the partitions of n.

The programs for A036052, there is no canonical definition to state claims against.
-/

/-! ## A036052.P5730599477694037320

`A000010(A023361(round(a(n-2)+2*n/3)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036052.P5730599477694037320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000010 (A023361 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (2 * n : ℚ) / 3)).toNat).toNat

end

end A036052.P5730599477694037320

/-! ## A036052.P3180042927609666752

`A000010(∑[A160365(n+1)%A007519(n+1)])`
-/

namespace A036052.P3180042927609666752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160365 (n + 1)) (A007519 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036052.P3180042927609666752

/-! ## A036052.P1854778324687592952

`A269752(A038503(n))`
-/

namespace A036052.P1854778324687592952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269752 (A038503 n).toNat

end

end A036052.P1854778324687592952

/-! ## A036052.P3175729720751070451

`A276064(A191792(n))`
-/

namespace A036052.P3175729720751070451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276064 (A191792 n).toNat

end

end A036052.P3175729720751070451

/-! ## A036052.P4001492954666570767

`A269752(A351971(n))`
-/

namespace A036052.P4001492954666570767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269752 (A351971 n).toNat

end

end A036052.P4001492954666570767

/-!
# A036053: Product of order of cycles of the permutation created by length sorting on the partitions of n.

The programs for A036053, there is no canonical definition to state claims against.
-/

/-! ## A036053.P4374497567811078069

`A000010(or(A255537(n+1), A349060(n)))`
-/

namespace A036053.P4374497567811078069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor (A255537 (n + 1)) (A349060 n)).toNat

end

end A036053.P4374497567811078069

/-!
# A036056: Sum of the lengths of the cycle types of the permutation created by length sorting on the partitions of n.

The programs for A036056, there is no canonical definition to state claims against.
-/

/-! ## A036056.P8315388205895976075

`A307298(A111536(n))+A182629(n)`
-/

namespace A036056.P8315388205895976075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307298 (A111536 n).toNat + A182629 n

end

end A036056.P8315388205895976075

/-! ## A036056.P12927569070151016726

`or(A144260(A144270(n+1)), A361857(n+3))`
-/

namespace A036056.P12927569070151016726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144260 (A144270 (n + 1)).toNat) (A361857 (n + 3))

end

end A036056.P12927569070151016726

/-!
# A036059: The summarize Fibonacci sequence: summarize the previous two terms!.

The programs for A036059, there is no canonical definition to state claims against.
-/

/-! ## A036059.P10483212671504542012

`A240763(A046826(n)^A091203(n))`
-/

namespace A036059.P10483212671504542012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (SequenceMachineLib.roundAway ((A046826 n : ℚ) ^ (A091203 n : ℤ))).toNat

end

end A036059.P10483212671504542012

/-!
# A036061: Increasing gaps among twin primes: the largest prime of the starting twin pair.

The programs for A036061, there is no canonical definition to state claims against.
-/

/-! ## A036061.P7778785402714685637

`A113275(n+1)+2`
-/

namespace A036061.P7778785402714685637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113275 (n + 1) + 2

end

end A036061.P7778785402714685637

/-! ## A036061.P3741546746200497714

`A036062(n+1)-A046666(A113274(n+1))`
-/

namespace A036061.P3741546746200497714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036062 (n + 1) - A046666 (A113274 (n + 1)).toNat

end

end A036061.P3741546746200497714

/-! ## A036061.P3747056674581827844

`A036062(n+1)-A059029(A036063(n+1))`
-/

namespace A036061.P3747056674581827844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036062 (n + 1) - A059029 (A036063 (n + 1)).toNat

end

end A036061.P3747056674581827844

/-! ## A036061.P3519496749740448036

`A036062(n+1)-record[A167132(n+1)]`
-/

namespace A036061.P3519496749740448036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036062 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036061.P3519496749740448036

/-! ## A036061.P1334730817464243219

`A007429(A113275(n+1))`
-/

namespace A036061.P1334730817464243219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A113275 (n + 1)).toNat

end

end A036061.P1334730817464243219

/-!
# A036062: Increasing gaps among twin primes: the smallest prime of the second twin pair.

The programs for A036062, there is no canonical definition to state claims against.
-/

/-! ## A036062.P1998861286597143098

`A036061(n+1)+A036063(n+1)%A114058(n+1)`
-/

namespace A036062.P1998861286597143098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036061 (n + 1) + Int.tmod (A036063 (n + 1)) (A114058 (n + 1))

end

end A036062.P1998861286597143098

/-! ## A036062.P13387802625392831191

`A046666(A113274(n+1))+A036061(n+1)`
-/

namespace A036062.P13387802625392831191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A113274 (n + 1)).toNat + A036061 (n + 1)

end

end A036062.P13387802625392831191

/-! ## A036062.P5852827340978586851

`A046666(A036063(n+1)+2)+A113275(n+1)+2`
-/

namespace A036062.P5852827340978586851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A036063 (n + 1) + 2).toNat + (A113275 (n + 1) + 2)

end

end A036062.P5852827340978586851

/-! ## A036062.P7507602421803603883

`A059029(A036063(n+1))+A036061(n+1)`
-/

namespace A036062.P7507602421803603883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A036063 (n + 1)).toNat + A036061 (n + 1)

end

end A036062.P7507602421803603883

/-! ## A036062.P3451546432297995418

`A113275(n+1)+A059029(A113274(n+1))`
-/

namespace A036062.P3451546432297995418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113275 (n + 1) + A059029 (A113274 (n + 1)).toNat

end

end A036062.P3451546432297995418

/-!
# A036063: Increasing gaps among twin primes: size.

The programs for A036063, there is no canonical definition to state claims against.
-/

/-! ## A036063.P11509138622551376537

`A113274(n+1)-2`
-/

namespace A036063.P11509138622551376537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113274 (n + 1) - 2

end

end A036063.P11509138622551376537

/-! ## A036063.P10220972996591657122

`record[A113274(A152271(n))-2]`
-/

namespace A036063.P10220972996591657122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113274 (A152271 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036063.P10220972996591657122

/-! ## A036063.P520442989208475957

`A113679(n+2)+A113274(n+1)`
-/

namespace A036063.P520442989208475957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + A113274 (n + 1)

end

end A036063.P520442989208475957

/-! ## A036063.P8253287912201489006

`A158522(p?[floor(n/2)])+A113274(n+1)`
-/

namespace A036063.P8253287912201489006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A113274 (n + 1)

end

end A036063.P8253287912201489006

/-! ## A036063.P14204714340150823142

`A158522(A000040(n+1))+A113274(n+1)`
-/

namespace A036063.P14204714340150823142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A000040 (n + 1)).toNat + A113274 (n + 1)

end

end A036063.P14204714340150823142

/-! ## A036063.P1025217655179109959

`A158522(A001133(n+1))+A113274(n+1)`
-/

namespace A036063.P1025217655179109959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A001133 (n + 1)).toNat + A113274 (n + 1)

end

end A036063.P1025217655179109959

/-! ## A036063.P8793999139679390099

`A158522(A001359(n+1))+A113274(n+1)`
-/

namespace A036063.P8793999139679390099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A001359 (n + 1)).toNat + A113274 (n + 1)

end

end A036063.P8793999139679390099

/-! ## A036063.P13700870296344684848

`A158522(A006512(n+1))+A113274(n+1)`
-/

namespace A036063.P13700870296344684848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A006512 (n + 1)).toNat + A113274 (n + 1)

end

end A036063.P13700870296344684848

/-! ## A036063.P9555815772609329916

`A158522(A077800(n+1))+A113274(n+1)`
-/

namespace A036063.P9555815772609329916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A077800 (n + 1)).toNat + A113274 (n + 1)

end

end A036063.P9555815772609329916

/-! ## A036063.P14337562459780806156

`A158522(A020639(n+2))+A113274(n+1)`
-/

namespace A036063.P14337562459780806156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A020639 (n + 2)).toNat + A113274 (n + 1)

end

end A036063.P14337562459780806156

/-!
# A036065: Triangle of flag coefficients [ n k ] (denominators of rational parts).

The programs for A036065, there is no canonical definition to state claims against.
-/

/-! ## A036065.P8028595302043480182

`gcd(A154335(n)², A014085(A168551(n)))`
-/

namespace A036065.P8028595302043480182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154335 n ^ 2) (A014085 (A168551 n).toNat)

end

end A036065.P8028595302043480182

/-! ## A036065.P14630303852948776546

`A176388(A287957(n+1)+A216800(n+1))`
-/

namespace A036065.P14630303852948776546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176388 (A287957 (n + 1) + A216800 (n + 1)).toNat

end

end A036065.P14630303852948776546

/-! ## A036065.P16526420255119155199

`A113993(xor(7, A114176(n)))`
-/

namespace A036065.P16526420255119155199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (Int.xor 7 (A114176 n)).toNat

end

end A036065.P16526420255119155199

/-! ## A036065.P10744928440368776903

`A114202(xor(7, A114176(n)))`
-/

namespace A036065.P10744928440368776903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114202 (Int.xor 7 (A114176 n)).toNat

end

end A036065.P10744928440368776903

/-! ## A036065.P2636965541911958326

`A036037(A129455(n))`
-/

namespace A036065.P2636965541911958326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A129455 n).toNat

end

end A036065.P2636965541911958326

/-!
# A036068: Expansion of (-1+1/(1-3*x)^3)/(9*x).

The programs for A036068, the canonical program `A036068.P896442951730299409` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036068 has offset 0).

The definition of A036068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+3x^2)/(1-9x+27x^2-27x^3))` (program `A036068.P896442951730299409`, by `A036068.P896442951730299409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036068.P896442951730299409

`ogf((1-3x+3x^2)/(1-9x+27x^2-27x^3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036068

/-- `ogf((1-3x+3x^2)/(1-9x+27x^2-27x^3))` -/
def P896442951730299409.Spec : Prop :=
  ∀ n, P896442951730299409.a n = A036068 n

theorem P896442951730299409.correct : P896442951730299409.Spec := by
  intro n
  simp only [A036068]

end A036068

/-! ## A036068.P8442238896799406209

`3^(n-1)*C(n+3, 2)`
-/

namespace A036068.P8442238896799406209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 3) 2 : ℚ)

end

end A036068.P8442238896799406209

namespace A036068

/-- `3^(n-1)*C(n+3, 2)` -/
def P8442238896799406209.Spec : Prop :=
  ∀ n, P8442238896799406209.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P15206005222571535243

`(∑[n+2]+1)*3^(n-1)`
-/

namespace A036068.P15206005222571535243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A036068.P15206005222571535243

namespace A036068

/-- `(∑[n+2]+1)*3^(n-1)` -/
def P15206005222571535243.Spec : Prop :=
  ∀ n, P15206005222571535243.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P8933591916315605299

`A080420(n)-lcm(n, n/3*3^n)`
-/

namespace A036068.P8933591916315605299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 n - (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 3 * (3 ^ n : ℚ))) : ℤ)

end

end A036068.P8933591916315605299

namespace A036068

/-- `A080420(n)-lcm(n, n/3*3^n)` -/
def P8933591916315605299.Spec : Prop :=
  ∀ n, P8933591916315605299.a n = A036068 n

end A036068

/-! ## A036068.P1080858241106178518

`A383136(n)+A081892(n)`
-/

namespace A036068.P1080858241106178518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 n + A081892 n

end

end A036068.P1080858241106178518

namespace A036068

/-- `A383136(n)+A081892(n)` -/
def P1080858241106178518.Spec : Prop :=
  ∀ n, P1080858241106178518.a n = A036068 n

end A036068

/-! ## A036068.P329725076820172353

`A080420(n)-A027471(n+1)`
-/

namespace A036068.P329725076820172353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 n - A027471 (n + 1)

end

end A036068.P329725076820172353

namespace A036068

/-- `A080420(n)-A027471(n+1)` -/
def P329725076820172353.Spec : Prop :=
  ∀ n, P329725076820172353.a n = A036068 n

end A036068

/-! ## A036068.P15218196596891142079

`A080420(n)-∑[A229277(n)/3]`
-/

namespace A036068.P15218196596891142079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080420 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036068.P15218196596891142079

namespace A036068

/-- `A080420(n)-∑[A229277(n)/3]` -/
def P15218196596891142079.Spec : Prop :=
  ∀ n, P15218196596891142079.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P15206363331533221775

`A080420(n)-(2*A082133(n)-n)`
-/

namespace A036068.P15206363331533221775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 n - (2 * A082133 n - (n : ℤ))

end

end A036068.P15206363331533221775

namespace A036068

/-- `A080420(n)-(2*A082133(n)-n)` -/
def P15206363331533221775.Spec : Prop :=
  ∀ n, P15206363331533221775.a n = A036068 n

end A036068

/-! ## A036068.P12347039374411186304

`A080420(n)-n/3*A000244(n)`
-/

namespace A036068.P12347039374411186304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080420 n : ℚ) - (n : ℚ) / 3 * (A000244 n : ℚ)

end

end A036068.P12347039374411186304

namespace A036068

/-- `A080420(n)-n/3*A000244(n)` -/
def P12347039374411186304.Spec : Prop :=
  ∀ n, P12347039374411186304.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P75798931471548301

`A080420(n)-abs(n*A287479(2*n))`
-/

namespace A036068.P75798931471548301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 n - |(n : ℤ) * A287479 (2 * n)|

end

end A036068.P75798931471548301

namespace A036068

/-- `A080420(n)-abs(n*A287479(2*n))` -/
def P75798931471548301.Spec : Prop :=
  ∀ n, P75798931471548301.a n = A036068 n

end A036068

/-! ## A036068.P7365255263430082266

`A080420(n)-n*∑[A052156(n)]/2`
-/

namespace A036068.P7365255263430082266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080420 n : ℚ) - (((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A036068.P7365255263430082266

namespace A036068

/-- `A080420(n)-n*∑[A052156(n)]/2` -/
def P7365255263430082266.Spec : Prop :=
  ∀ n, P7365255263430082266.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P11954545043485201718

`A080420(n)-n*A182522(2*n)/2`
-/

namespace A036068.P11954545043485201718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080420 n : ℚ) - ((n : ℤ) * A182522 (2 * n) : ℚ) / 2

end

end A036068.P11954545043485201718

namespace A036068

/-- `A080420(n)-n*A182522(2*n)/2` -/
def P11954545043485201718.Spec : Prop :=
  ∀ n, P11954545043485201718.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P17880954035762701458

`A000244(n)+A080420(n)-A006234(n+3)`
-/

namespace A036068.P17880954035762701458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A080420 n - A006234 (n + 3))

end

end A036068.P17880954035762701458

namespace A036068

/-- `A000244(n)+A080420(n)-A006234(n+3)` -/
def P17880954035762701458.Spec : Prop :=
  ∀ n, P17880954035762701458.a n = A036068 n

end A036068

/-! ## A036068.P16694086327772806446

`A081278(n)+A382618(n)-A006234(n+3)`
-/

namespace A036068.P16694086327772806446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081278 n + (A382618 n - A006234 (n + 3))

end

end A036068.P16694086327772806446

namespace A036068

/-- `A081278(n)+A382618(n)-A006234(n+3)` -/
def P16694086327772806446.Spec : Prop :=
  ∀ n, P16694086327772806446.a n = A036068 n

end A036068

/-! ## A036068.P160084274704247199

`7*a(n-1)-(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A036068.P160084274704247199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A036068.P160084274704247199

namespace A036068

/-- `7*a(n-1)-(4-6/(n+1))*a(n-1)` -/
def P160084274704247199.Spec : Prop :=
  ∀ n, P160084274704247199.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P18159048035582968333

`∑[n+1]/3^-n-A069515(n+1)`
-/

namespace A036068.P18159048035582968333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ) - (A069515 (n + 1) : ℚ)

end

end A036068.P18159048035582968333

namespace A036068

/-- `∑[n+1]/3^-n-A069515(n+1)` -/
def P18159048035582968333.Spec : Prop :=
  ∀ n, P18159048035582968333.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P4085312694276206073

`Δ[A129530(n)+A003462(n)]-A129530(n)`
-/

namespace A036068.P4085312694276206073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129530 n

end

end A036068.P4085312694276206073

namespace A036068

/-- `Δ[A129530(n)+A003462(n)]-A129530(n)` -/
def P4085312694276206073.Spec : Prop :=
  ∀ n, P4085312694276206073.a n = A036068 n

end A036068

/-! ## A036068.P17446795064141518947

`A027472(n+3)+A129530(n)-A129530(n+1)`
-/

namespace A036068.P17446795064141518947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 3) + (A129530 n - A129530 (n + 1))

end

end A036068.P17446795064141518947

namespace A036068

/-- `A027472(n+3)+A129530(n)-A129530(n+1)` -/
def P17446795064141518947.Spec : Prop :=
  ∀ n, P17446795064141518947.a n = A036068 n

end A036068

/-! ## A036068.P6350634728467892923

`3*(n+3)*a(n-1)/(n+1)` with `a(0)=1`
-/

namespace A036068.P6350634728467892923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 3 : ℚ) * a (n - 1)) / (n + 1 : ℚ)

end

end A036068.P6350634728467892923

namespace A036068

/-- `3*(n+3)*a(n-1)/(n+1)` -/
def P6350634728467892923.Spec : Prop :=
  ∀ n, P6350634728467892923.a n = (A036068 n : ℚ)

end A036068

/-! ## A036068.P8842838438696112010

`A036216(n)/(n+1)`
-/

namespace A036068.P8842838438696112010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036216 n : ℚ) / (n + 1 : ℚ)

end

end A036068.P8842838438696112010

namespace A036068

/-- `A036216(n)/(n+1)` -/
def P8842838438696112010.Spec : Prop :=
  ∀ n, P8842838438696112010.a n = (A036068 n : ℚ)

end A036068

/-!
# A036069: Denominator of rational part of Haar measure on Grassmannian space G(n,1).

The programs for A036069, the canonical program `A036069.P1575067081743271746` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036069 has offset 0).

The definition of A036069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036069.P16275059954152269811

`A000034(n)*A380910(n)`
-/

namespace A036069.P16275059954152269811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A380910 n

end

end A036069.P16275059954152269811

namespace A036069

/-- `A000034(n)*A380910(n)` -/
def P16275059954152269811.Spec : Prop :=
  ∀ n, P16275059954152269811.a n = A036069 n

end A036069

/-! ## A036069.P1575067081743271746

`gcd(2, n+1)*A004730(abs(A024000(n)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A036069

/-- `gcd(2, n+1)*A004730(abs(A024000(n)))` -/
def P1575067081743271746.Spec : Prop :=
  ∀ n, P1575067081743271746.a n = A036069 n

theorem P1575067081743271746.correct : P1575067081743271746.Spec := by
  intro n
  simp only [A036069]

end A036069

/-! ## A036069.P12235073338587338354

`(A000035(n)+1)*A004730(abs(A023443(n)))`
-/

namespace A036069.P12235073338587338354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A004730 |A023443 n|.toNat

end

end A036069.P12235073338587338354

namespace A036069

/-- `(A000035(n)+1)*A004730(abs(A023443(n)))` -/
def P12235073338587338354.Spec : Prop :=
  ∀ n, P12235073338587338354.a n = A036069 n

end A036069

/-! ## A036069.P23331407735425608

`A004730(abs(A023443(n)))/(A008619(n)-n/2)`
-/

namespace A036069.P23331407735425608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 |A023443 n|.toNat : ℚ) / ((A008619 n : ℚ) - (n : ℚ) / 2)

end

end A036069.P23331407735425608

namespace A036069

/-- `A004730(abs(A023443(n)))/(A008619(n)-n/2)` -/
def P23331407735425608.Spec : Prop :=
  ∀ n, P23331407735425608.a n = (A036069 n : ℚ)

end A036069

/-! ## A036069.P6248517977303887254

`A004730(A014681(n))/A160467(n+1)`
-/

namespace A036069.P6248517977303887254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 (A014681 n).toNat : ℚ) / (A160467 (n + 1) : ℚ)

end

end A036069.P6248517977303887254

namespace A036069

/-- `A004730(A014681(n))/A160467(n+1)` -/
def P6248517977303887254.Spec : Prop :=
  ∀ n, P6248517977303887254.a n = (A036069 n : ℚ)

end A036069

/-! ## A036069.P14309958350423925514

`A004730(A014681(n))/A000010(A006519(n+1))`
-/

namespace A036069.P14309958350423925514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 (A014681 n).toNat : ℚ) / (A000010 (A006519 (n + 1)).toNat : ℚ)

end

end A036069.P14309958350423925514

namespace A036069

/-- `A004730(A014681(n))/A000010(A006519(n+1))` -/
def P14309958350423925514.Spec : Prop :=
  ∀ n, P14309958350423925514.a n = (A036069 n : ℚ)

end A036069

/-! ## A036069.P9393230350534484960

`(and(1, n)+1)*A004730(log2(A011782(n)))`
-/

namespace A036069.P9393230350534484960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℤ) * A004730 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A036069.P9393230350534484960

namespace A036069

/-- `(and(1, n)+1)*A004730(log2(A011782(n)))` -/
def P9393230350534484960.Spec : Prop :=
  ∀ n, P9393230350534484960.a n = A036069 n

end A036069

/-! ## A036069.P8277749113542568973

`A036065(∑[n+1]+1)`
-/

namespace A036069.P8277749113542568973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036069.P8277749113542568973

namespace A036069

/-- `A036065(∑[n+1]+1)` -/
def P8277749113542568973.Spec : Prop :=
  ∀ n, P8277749113542568973.a n = A036069 n

end A036069

/-! ## A036069.P15537067548348810736

`A094941(n)/gcd(A087299(n), A094941(n))`
-/

namespace A036069.P15537067548348810736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094941 n : ℚ) / (Int.gcd (A087299 n) (A094941 n) : ℚ)

end

end A036069.P15537067548348810736

namespace A036069

/-- `A094941(n)/gcd(A087299(n), A094941(n))` -/
def P15537067548348810736.Spec : Prop :=
  ∀ n, P15537067548348810736.a n = (A036069 n : ℚ)

end A036069

/-!
# A036070: Expansion of (-1+1/(1-4*x)^4)/(16*x); related to A038846.

The programs for A036070, the canonical program `A036070.P17205456017239599194` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036070 has offset 0).

The definition of A036070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036070.P5519655510224557114

`4^(n-1)*C(n+4, 3)`
-/

namespace A036070.P5519655510224557114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 4) 3 : ℚ)

end

end A036070.P5519655510224557114

namespace A036070

/-- `4^(n-1)*C(n+4, 3)` -/
def P5519655510224557114.Spec : Prop :=
  ∀ n, P5519655510224557114.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P322618973966059005

`(12/(n+1)+4)*a(n-1)` with `a(0)=1`
-/

namespace A036070.P322618973966059005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 / (n + 1 : ℚ) + 4) * a (n - 1)

end

end A036070.P322618973966059005

namespace A036070

/-- `(12/(n+1)+4)*a(n-1)` -/
def P322618973966059005.Spec : Prop :=
  ∀ n, P322618973966059005.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P11658250221243649524

`C(n+4, 4)/(n+1)*4^n`
-/

namespace A036070.P11658250221243649524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℚ) / (n + 1 : ℚ) * (4 ^ n : ℚ)

end

end A036070.P11658250221243649524

namespace A036070

/-- `C(n+4, 4)/(n+1)*4^n` -/
def P11658250221243649524.Spec : Prop :=
  ∀ n, P11658250221243649524.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P11405641180021950428

`4*a(n-1)*ratio[∑[∑[n+1]]]` with `a(0)=1`
-/

namespace A036070.P11405641180021950428
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A036070.P11405641180021950428

namespace A036070

/-- `4*a(n-1)*ratio[∑[∑[n+1]]]` -/
def P11405641180021950428.Spec : Prop :=
  ∀ n, P11405641180021950428.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P4915650226206872587

`4^n/(n+1)*∑[∑[∑[n+1]]]`
-/

namespace A036070.P4915650226206872587
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A036070.P4915650226206872587

namespace A036070

/-- `4^n/(n+1)*∑[∑[∑[n+1]]]` -/
def P4915650226206872587.Spec : Prop :=
  ∀ n, P4915650226206872587.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P17205456017239599194

`A000051(n)*A080930(n)-A080930(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036070

/-- `A000051(n)*A080930(n)-A080930(n)` -/
def P17205456017239599194.Spec : Prop :=
  ∀ n, P17205456017239599194.a n = A036070 n

theorem P17205456017239599194.correct : P17205456017239599194.Spec := by
  intro n
  simp only [A036070]

end A036070

/-! ## A036070.P10191337241899766008

`A040075(n)/(n+1)`
-/

namespace A036070.P10191337241899766008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040075 n : ℚ) / (n + 1 : ℚ)

end

end A036070.P10191337241899766008

namespace A036070

/-- `A040075(n)/(n+1)` -/
def P10191337241899766008.Spec : Prop :=
  ∀ n, P10191337241899766008.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P11883267893946219729

`∑[∑[∑[n+1]]]*A000079(n)²/(n+1)`
-/

namespace A036070.P11883267893946219729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A036070.P11883267893946219729

namespace A036070

/-- `∑[∑[∑[n+1]]]*A000079(n)²/(n+1)` -/
def P11883267893946219729.Spec : Prop :=
  ∀ n, P11883267893946219729.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P15869435195408553756

`∑[∑[∑[n+1]]]*A000079(2*n)/(n+1)`
-/

namespace A036070.P15869435195408553756
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A036070.P15869435195408553756

namespace A036070

/-- `∑[∑[∑[n+1]]]*A000079(2*n)/(n+1)` -/
def P15869435195408553756.Spec : Prop :=
  ∀ n, P15869435195408553756.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P10479556827607418840

`A001789(n+3)*A001789(n+4)/A130809(n+3)`
-/

namespace A036070.P10479556827607418840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) * A001789 (n + 4) : ℚ) / (A130809 (n + 3) : ℚ)

end

end A036070.P10479556827607418840

namespace A036070

/-- `A001789(n+3)*A001789(n+4)/A130809(n+3)` -/
def P10479556827607418840.Spec : Prop :=
  ∀ n, P10479556827607418840.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P14820370071738616441

`A001789(n+4)*A003472(n+5)/A130810(n+5)`
-/

namespace A036070.P14820370071738616441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 4) * A003472 (n + 5) : ℚ) / (A130810 (n + 5) : ℚ)

end

end A036070.P14820370071738616441

namespace A036070

/-- `A001789(n+4)*A003472(n+5)/A130810(n+5)` -/
def P14820370071738616441.Spec : Prop :=
  ∀ n, P14820370071738616441.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P14646789020596921435

`A054849(2*n+5)*A130809(n+4)/A130811(2*n+5)`
-/

namespace A036070.P14646789020596921435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * n + 5) * A130809 (n + 4) : ℚ) / (A130811 (2 * n + 5) : ℚ)

end

end A036070.P14646789020596921435

namespace A036070

/-- `A054849(2*n+5)*A130809(n+4)/A130811(2*n+5)` -/
def P14646789020596921435.Spec : Prop :=
  ∀ n, P14646789020596921435.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P6684947089384420167

`A002409(2*n+1)*A130809(n+4)/A130812(2*n+7)`
-/

namespace A036070.P6684947089384420167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 (2 * n + 1) * A130809 (n + 4) : ℚ) / (A130812 (2 * n + 7) : ℚ)

end

end A036070.P6684947089384420167

namespace A036070

/-- `A002409(2*n+1)*A130809(n+4)/A130812(2*n+7)` -/
def P6684947089384420167.Spec : Prop :=
  ∀ n, P6684947089384420167.a n = (A036070 n : ℚ)

end A036070

/-! ## A036070.P5430415515688324198

`A030526(∑[n]+1)`
-/

namespace A036070.P5430415515688324198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030526 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036070.P5430415515688324198

namespace A036070

/-- `A030526(∑[n]+1)` -/
def P5430415515688324198.Spec : Prop :=
  ∀ n, P5430415515688324198.a n = A036070 n

end A036070

/-!
# A036071: Expansion of 1/(1-5*x)^5.

The programs for A036071, the canonical program `A036071.P17029302792826011541` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036071 has offset 0).

The definition of A036071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036071.P17029302792826011541

`5^n*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036071

/-- `5^n*C(n+4, 4)` -/
def P17029302792826011541.Spec : Prop :=
  ∀ n, (P17029302792826011541.a n : ℤ) = A036071 n

theorem P17029302792826011541.correct : P17029302792826011541.Spec := by
  intro n
  simp only [A036071]

end A036071

/-! ## A036071.P13152920048499333895

`5^n*∑[∑[∑[n+1]]]`
-/

namespace A036071.P13152920048499333895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036071.P13152920048499333895

namespace A036071

/-- `5^n*∑[∑[∑[n+1]]]` -/
def P13152920048499333895.Spec : Prop :=
  ∀ n, (P13152920048499333895.a n : ℤ) = A036071 n

end A036071

/-! ## A036071.P2582980335202587229

`ceil(sqrt(A288876(n))*5^n)`
-/

namespace A036071.P2582980335202587229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A288876 n : ℝ) * (5 ^ n : ℝ)⌉

end

end A036071.P2582980335202587229

namespace A036071

/-- `ceil(sqrt(A288876(n))*5^n)` -/
def P2582980335202587229.Spec : Prop :=
  ∀ n, P2582980335202587229.a n = A036071 n

end A036071

/-! ## A036071.P4126363300817457007

`A154128(n)/24`
-/

namespace A036071.P4126363300817457007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154128 n : ℚ) / 24

end

end A036071.P4126363300817457007

namespace A036071

/-- `A154128(n)/24` -/
def P4126363300817457007.Spec : Prop :=
  ∀ n, P4126363300817457007.a n = (A036071 n : ℚ)

end A036071

/-! ## A036071.P13166861375743423271

`5*(n+4)*a(n-1)/n` with `a(0)=1`
-/

namespace A036071.P13166861375743423271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((n + 4 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A036071.P13166861375743423271

namespace A036071

/-- `5*(n+4)*a(n-1)/n` -/
def P13166861375743423271.Spec : Prop :=
  ∀ n, P13166861375743423271.a n = (A036071 n : ℚ)

end A036071

/-! ## A036071.P18437060329851375743

`A038243(eq[4, A002262(n)])`
-/

namespace A036071.P18437060329851375743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036071.P18437060329851375743

namespace A036071

/-- `A038243(eq[4, A002262(n)])` -/
def P18437060329851375743.Spec : Prop :=
  ∀ n, P18437060329851375743.a n = A036071 n

end A036071

/-! ## A036071.P6343161081512580460

`record[A013612(A052905(n))]`
-/

namespace A036071.P6343161081512580460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036071.P6343161081512580460

namespace A036071

/-- `record[A013612(A052905(n))]` -/
def P6343161081512580460.Spec : Prop :=
  ∀ n, P6343161081512580460.a n = A036071 n

end A036071

/-! ## A036071.P17512967195328193819

`A013612(A052905(n+2))`
-/

namespace A036071.P17512967195328193819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A052905 (n + 2)).toNat

end

end A036071.P17512967195328193819

namespace A036071

/-- `A013612(A052905(n+2))` -/
def P17512967195328193819.Spec : Prop :=
  ∀ n, P17512967195328193819.a n = A036071 n

end A036071

/-! ## A036071.P3766743832388030789

`A013612(eq[4, A025581(n)])`
-/

namespace A036071.P3766743832388030789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036071.P3766743832388030789

namespace A036071

/-- `A013612(eq[4, A025581(n)])` -/
def P3766743832388030789.Spec : Prop :=
  ∀ n, P3766743832388030789.a n = A036071 n

end A036071

/-! ## A036071.P14424159892960285434

`A013612(eq[5, A004736(n+1)])`
-/

namespace A036071.P14424159892960285434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036071.P14424159892960285434

namespace A036071

/-- `A013612(eq[5, A004736(n+1)])` -/
def P14424159892960285434.Spec : Prop :=
  ∀ n, P14424159892960285434.a n = A036071 n

end A036071

/-!
# A036074: Expansion of e.g.f. exp((exp(p*x) - p - 1)/p + exp(x)) for p=4.

The programs for A036074, there is no canonical definition to state claims against.
-/

/-! ## A036074.P17292402262391940479

`A322007(A321989(n))+A321974(n)`
-/

namespace A036074.P17292402262391940479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (A321989 n).toNat + A321974 n

end

end A036074.P17292402262391940479

/-!
# A036075: The number of partitions of {1..5n} that are invariant under a permutation consisting of n 5-cycles.

The programs for A036075, there is no canonical definition to state claims against.
-/

/-! ## A036075.P16611426295465354290

`record[A162663(A052905(n))]`
-/

namespace A036075.P16611426295465354290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036075.P16611426295465354290

/-! ## A036075.P2128220980302893675

`A162663(A052905(n+2))`
-/

namespace A036075.P2128220980302893675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A052905 (n + 2)).toNat

end

end A036075.P2128220980302893675

/-! ## A036075.P15224067617560714294

`A162663(eq[4, A025581(n)])`
-/

namespace A036075.P15224067617560714294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036075.P15224067617560714294

/-! ## A036075.P7409071299102696581

`record[A162663(A055999(n)+1)]`
-/

namespace A036075.P7409071299102696581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036075.P7409071299102696581

/-! ## A036075.P6420065010711665504

`A162663(A055999(n+2)+1)`
-/

namespace A036075.P6420065010711665504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055999 (n + 2) + 1).toNat

end

end A036075.P6420065010711665504

/-! ## A036075.P14123194526079343519

`A162663(A000217(n+5)-5)`
-/

namespace A036075.P14123194526079343519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A000217 (n + 5) - 5).toNat

end

end A036075.P14123194526079343519

/-! ## A036075.P4997445035590797118

`record[A162663(A046691(n+1)-1)]`
-/

namespace A036075.P4997445035590797118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036075.P4997445035590797118

/-! ## A036075.P17281009844078708541

`record[A162663(A027379(n+1)-2)]`
-/

namespace A036075.P17281009844078708541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036075.P17281009844078708541

/-! ## A036075.P7685765469506905692

`record[A162663(A055998(n+1)-2)]`
-/

namespace A036075.P7685765469506905692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036075.P7685765469506905692

/-! ## A036075.P17634168136569061008

`A162663(2*n+5+A000096(n+2))`
-/

namespace A036075.P17634168136569061008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 ((2 * n + 5 : ℤ) + A000096 (n + 2)).toNat

end

end A036075.P17634168136569061008

/-!
# A036076: Expansion of e.g.f. exp((exp(p*x)-p-1)/p+exp(x)) for p=6.

The programs for A036076, there is no canonical definition to state claims against.
-/

/-! ## A036076.P9485515637981415290

`A305537(lt[A282062(n), 4])`
-/

namespace A036076.P9485515637981415290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305537 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A036076.P9485515637981415290

/-!
# A036077: The number of partitions of {1..7n} that are invariant under a permutation consisting of n 7-cycles.

The programs for A036077, there is no canonical definition to state claims against.
-/

/-! ## A036077.P7177706714941547626

`A162663(eq[6, A025581(n)])`
-/

namespace A036077.P7177706714941547626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036077.P7177706714941547626

/-! ## A036077.P6442675990603435577

`A162663(eq[7, A193739(n)])`
-/

namespace A036077.P6442675990603435577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036077.P6442675990603435577

/-! ## A036077.P8377630692225352670

`A162663(eq[64, A130321(n)])`
-/

namespace A036077.P8377630692225352670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036077.P8377630692225352670

/-! ## A036077.P7413430303051540815

`A162663(eq[7, A004736(n+1)])`
-/

namespace A036077.P7413430303051540815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036077.P7413430303051540815

/-! ## A036077.P4060116163133858576

`A162663(Δ[A023551(n+2)]-1)`
-/

namespace A036077.P4060116163133858576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (f1 (n + 1) - f1 n - 1).toNat

end

end A036077.P4060116163133858576

/-! ## A036077.P6230183018562633693

`A162663(A046691(n+4)+A020705(n))`
-/

namespace A036077.P6230183018562633693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A046691 (n + 4) + A020705 n).toNat

end

end A036077.P6230183018562633693

/-!
# A036078: E.g.f.: exp((exp(p*x)-p-1)/p+exp(x)) for p=8.

The programs for A036078, there is no canonical definition to state claims against.
-/

/-! ## A036078.P12345888517909952415

`A218890(A215624(n))`
-/

namespace A036078.P12345888517909952415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218890 (A215624 n).toNat

end

end A036078.P12345888517909952415

/-!
# A036079: E.g.f.: exp((exp(p*x)-p-1)/p+exp(x)) for p=9.

The programs for A036079, there is no canonical definition to state claims against.
-/

/-! ## A036079.P7464484984871675834

`xor(n, A079242(2*n)+n^n)`
-/

namespace A036079.P7464484984871675834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A079242 (2 * n) + (n ^ n : ℤ))

end

end A036079.P7464484984871675834

/-!
# A036080: E.g.f.: exp((exp(p*x)-p-1)/p+exp(x)) for p=10.

The programs for A036080, there is no canonical definition to state claims against.
-/

/-! ## A036080.P15976224853040618710

`ceil(sqrt(A088052(C(2*n, 2))))`
-/

namespace A036080.P15976224853040618710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A088052 (Nat.choose (2 * n) 2) : ℝ)⌉

end

end A036080.P15976224853040618710

/-!
# A036081: The number of partitions of {1..(11n)} that are invariant under a permutation consisting of n 11-cycles.

The programs for A036081, there is no canonical definition to state claims against.
-/

/-! ## A036081.P14644730693035346234

`A162663(eq[10, A025581(n)])`
-/

namespace A036081.P14644730693035346234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036081.P14644730693035346234

/-! ## A036081.P5549841954639592086

`A162663(eq[11, A193739(n)])`
-/

namespace A036081.P5549841954639592086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036081.P5549841954639592086

/-! ## A036081.P7429783211456677385

`A162663(eq[12, A116598(n)])`
-/

namespace A036081.P7429783211456677385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036081.P7429783211456677385

/-! ## A036081.P14545189036503486108

`A162663(eq[21, A099375(n)])`
-/

namespace A036081.P14545189036503486108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036081.P14545189036503486108

/-! ## A036081.P10408111154824179380

`A162663(eq[11, A004736(n+1)])`
-/

namespace A036081.P10408111154824179380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036081.P10408111154824179380

/-! ## A036081.P4677647504818690831

`A162663(eq[11, sqrt(A055461(n+1))])`
-/

namespace A036081.P4677647504818690831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A036081.P4677647504818690831

/-!
# A036082: E.g.f.: exp((exp(p*x)-p-1)/p+exp(x)) for p=12.

The programs for A036082, there is no canonical definition to state claims against.
-/

/-! ## A036082.P16579118714440060317

`A083920(A158821(n)+A136741(n))`
-/

namespace A036082.P16579118714440060317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A158821 n + A136741 n).toNat

end

end A036082.P16579118714440060317

/-!
# A036083: Expansion of (-1+1/(1-5*x)^5)/(25*x); related to A036071.

The programs for A036083, the canonical program `A036083.P3039603564430814823` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036083 has offset 0).

The definition of A036083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036083.P3039603564430814823

`5^(n-1)*C(n+5, 4)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036083

/-- `5^(n-1)*C(n+5, 4)` -/
def P3039603564430814823.Spec : Prop :=
  ∀ n, P3039603564430814823.a n = (A036083 n : ℚ)

end A036083

/-! ## A036083.P2708003247929768818

`(4/(n+1)+1)*5*a(n-1)` with `a(0)=1`
-/

namespace A036083.P2708003247929768818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (n + 1 : ℚ) + 1) * (5 * a (n - 1))

end

end A036083.P2708003247929768818

namespace A036083

/-- `(4/(n+1)+1)*5*a(n-1)` -/
def P2708003247929768818.Spec : Prop :=
  ∀ n, P2708003247929768818.a n = (A036083 n : ℚ)

end A036083

/-! ## A036083.P5894662102363501187

`5^(n-1)*A000332(n+5)`
-/

namespace A036083.P5894662102363501187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000332 (n + 5) : ℚ)

end

end A036083.P5894662102363501187

namespace A036083

/-- `5^(n-1)*A000332(n+5)` -/
def P5894662102363501187.Spec : Prop :=
  ∀ n, P5894662102363501187.a n = (A036083 n : ℚ)

end A036083

/-! ## A036083.P7147186077764373613

`5^(n-1)*Δ[A000389(n+5)]`
-/

namespace A036083.P7147186077764373613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A036083.P7147186077764373613

namespace A036083

/-- `5^(n-1)*Δ[A000389(n+5)]` -/
def P7147186077764373613.Spec : Prop :=
  ∀ n, P7147186077764373613.a n = (A036083 n : ℚ)

end A036083

/-! ## A036083.P10531697850265661058

`5^(n-1)*A007318(A052905(n+3))`
-/

namespace A036083.P10531697850265661058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A007318 (A052905 (n + 3)).toNat : ℚ)

end

end A036083.P10531697850265661058

namespace A036083

/-- `5^(n-1)*A007318(A052905(n+3))` -/
def P10531697850265661058.Spec : Prop :=
  ∀ n, P10531697850265661058.a n = (A036083 n : ℚ)

end A036083

/-! ## A036083.P4835717805615148667

`A050982(n+5)/(n+1)`
-/

namespace A036083.P4835717805615148667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050982 (n + 5) : ℚ) / (n + 1 : ℚ)

end

end A036083.P4835717805615148667

namespace A036083

/-- `A050982(n+5)/(n+1)` -/
def P4835717805615148667.Spec : Prop :=
  ∀ n, P4835717805615148667.a n = (A036083 n : ℚ)

end A036083

/-! ## A036083.P13030521707460936043

`A030527(∑[n]+1)`
-/

namespace A036083.P13030521707460936043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030527 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036083.P13030521707460936043

namespace A036083

/-- `A030527(∑[n]+1)` -/
def P13030521707460936043.Spec : Prop :=
  ∀ n, P13030521707460936043.a n = A036083 n

end A036083

/-!
# A036084: Expansion of 1/(1-6*x)^6.

The programs for A036084, the canonical program `A036084.P3308043741755964215` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036084 has offset 0).

The definition of A036084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036084.P3308043741755964215

`6^n*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036084

/-- `6^n*C(n+5, 5)` -/
def P3308043741755964215.Spec : Prop :=
  ∀ n, (P3308043741755964215.a n : ℤ) = A036084 n

theorem P3308043741755964215.correct : P3308043741755964215.Spec := by
  intro n
  simp only [A036084]

end A036084

/-! ## A036084.P3706762480978361053

`(30/n+6)*a(n-1)` with `a(0)=1`
-/

namespace A036084.P3706762480978361053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) + 6) * a (n - 1)

end

end A036084.P3706762480978361053

namespace A036084

/-- `(30/n+6)*a(n-1)` -/
def P3706762480978361053.Spec : Prop :=
  ∀ n, P3706762480978361053.a n = (A036084 n : ℚ)

end A036084

/-! ## A036084.P11690002047393061506

`6^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A036084.P11690002047393061506
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036084.P11690002047393061506

namespace A036084

/-- `6^n*∑[∑[∑[∑[n+1]]]]` -/
def P11690002047393061506.Spec : Prop :=
  ∀ n, (P11690002047393061506.a n : ℤ) = A036084 n

end A036084

/-! ## A036084.P5824083400035484345

`lcm(A036219(n), A054849(n+5))`
-/

namespace A036084.P5824083400035484345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036219 n) (A054849 (n + 5))

end

end A036084.P5824083400035484345

namespace A036084

/-- `lcm(A036219(n), A054849(n+5))` -/
def P5824083400035484345.Spec : Prop :=
  ∀ n, (P5824083400035484345.a n : ℤ) = A036084 n

end A036084

/-! ## A036084.P16735984252297834532

`A038255(A167499(n+4))`
-/

namespace A036084.P16735984252297834532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A167499 (n + 4)).toNat

end

end A036084.P16735984252297834532

namespace A036084

/-- `A038255(A167499(n+4))` -/
def P16735984252297834532.Spec : Prop :=
  ∀ n, P16735984252297834532.a n = A036084 n

end A036084

/-! ## A036084.P2455171951053807013

`A013613(eq[6, A004736(n+1)])`
-/

namespace A036084.P2455171951053807013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036084.P2455171951053807013

namespace A036084

/-- `A013613(eq[6, A004736(n+1)])` -/
def P2455171951053807013.Spec : Prop :=
  ∀ n, P2455171951053807013.a n = A036084 n

end A036084

/-! ## A036084.P9492559577708824322

`A036219(n)*A050988(n+6)/A036220(n)`
-/

namespace A036084.P9492559577708824322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036219 n * A050988 (n + 6) : ℚ) / (A036220 n : ℚ)

end

end A036084.P9492559577708824322

namespace A036084

/-- `A036219(n)*A050988(n+6)/A036220(n)` -/
def P9492559577708824322.Spec : Prop :=
  ∀ n, P9492559577708824322.a n = (A036084 n : ℚ)

end A036084

/-!
# A036085: Centered cube numbers: (n+1)^7 + n^7.

The programs for A036085, the canonical program `A036085.P6699611710931681177` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036085 has offset 0).

The definition of A036085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7+n^7` (program `A036085.P6699611710931681177`, by `A036085.P6699611710931681177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036085.P6699611710931681177

`(n+1)^7+n^7`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036085

/-- `(n+1)^7+n^7` -/
def P6699611710931681177.Spec : Prop :=
  ∀ n, (P6699611710931681177.a n : ℤ) = A036085 n

theorem P6699611710931681177.correct : P6699611710931681177.Spec := by
  intro n
  simp only [A036085]

end A036085

/-! ## A036085.P11149783190064046505

`A022530(n)/A022523(n)`
-/

namespace A036085.P11149783190064046505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022530 n : ℚ) / (A022523 n : ℚ)

end

end A036085.P11149783190064046505

namespace A036085

/-- `A022530(n)/A022523(n)` -/
def P11149783190064046505.Spec : Prop :=
  ∀ n, P11149783190064046505.a n = (A036085 n : ℚ)

end A036085

/-! ## A036085.P3458943408065938308

`abs(Δ[A038608(n)^7])`
-/

namespace A036085.P3458943408065938308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036085.P3458943408065938308

namespace A036085

/-- `abs(Δ[A038608(n)^7])` -/
def P3458943408065938308.Spec : Prop :=
  ∀ n, P3458943408065938308.a n = A036085 n

end A036085

/-! ## A036085.P2298495272925454511

`abs(Δ[A181983(n)^7])`
-/

namespace A036085.P2298495272925454511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036085.P2298495272925454511

namespace A036085

/-- `abs(Δ[A181983(n)^7])` -/
def P2298495272925454511.Spec : Prop :=
  ∀ n, P2298495272925454511.a n = A036085 n

end A036085

/-! ## A036085.P7154728591983959411

`abs(A024005(n+1)-A258806(n))`
-/

namespace A036085.P7154728591983959411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024005 (n + 1) - A258806 n|

end

end A036085.P7154728591983959411

namespace A036085

/-- `abs(A024005(n+1)-A258806(n))` -/
def P7154728591983959411.Spec : Prop :=
  ∀ n, P7154728591983959411.a n = A036085 n

end A036085

/-! ## A036085.P17682735341417681275

`gcd(Δ[A038608(n)^7], A000038(n))`
-/

namespace A036085.P17682735341417681275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A036085.P17682735341417681275

namespace A036085

/-- `gcd(Δ[A038608(n)^7], A000038(n))` -/
def P17682735341417681275.Spec : Prop :=
  ∀ n, (P17682735341417681275.a n : ℤ) = A036085 n

end A036085

/-! ## A036085.P9594298260208908593

`Δ[A001015(n)²]/Δ[A001015(n)]`
-/

namespace A036085.P9594298260208908593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A036085.P9594298260208908593

namespace A036085

/-- `Δ[A001015(n)²]/Δ[A001015(n)]` -/
def P9594298260208908593.Spec : Prop :=
  ∀ n, P9594298260208908593.a n = (A036085 n : ℚ)

end A036085

/-! ## A036085.P7354433703473215225

`(A024005(n+1)-A258806(n))*A057428(n+1)`
-/

namespace A036085.P7354433703473215225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A057428 (n + 1)

end

end A036085.P7354433703473215225

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A057428(n+1)` -/
def P7354433703473215225.Spec : Prop :=
  ∀ n, P7354433703473215225.a n = A036085 n

end A036085

/-! ## A036085.P5560193725210645949

`gcd(A024005(n+1)-A258806(n), A008458(n)%2)`
-/

namespace A036085.P5560193725210645949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024005 (n + 1) - A258806 n) (Int.tmod (A008458 n) 2)

end

end A036085.P5560193725210645949

namespace A036085

/-- `gcd(A024005(n+1)-A258806(n), A008458(n)%2)` -/
def P5560193725210645949.Spec : Prop :=
  ∀ n, (P5560193725210645949.a n : ℤ) = A036085 n

end A036085

/-! ## A036085.P6082792768406183947

`(A024005(n+1)-A258806(n))/A057428(n+2)`
-/

namespace A036085.P6082792768406183947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n : ℚ) / (A057428 (n + 2) : ℚ)

end

end A036085.P6082792768406183947

namespace A036085

/-- `(A024005(n+1)-A258806(n))/A057428(n+2)` -/
def P6082792768406183947.Spec : Prop :=
  ∀ n, P6082792768406183947.a n = (A036085 n : ℚ)

end A036085

/-! ## A036085.P10695866779620993549

`(A024005(n+1)-A258806(n))*A008683(A328896(n+1))`
-/

namespace A036085.P10695866779620993549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A008683 (A328896 (n + 1)).toNat

end

end A036085.P10695866779620993549

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A008683(A328896(n+1))` -/
def P10695866779620993549.Spec : Prop :=
  ∀ n, P10695866779620993549.a n = A036085 n

end A036085

/-! ## A036085.P12738585453861237874

`record[Δ[A001057(n)^7]]`
-/

namespace A036085.P12738585453861237874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036085.P12738585453861237874

namespace A036085

/-- `record[Δ[A001057(n)^7]]` -/
def P12738585453861237874.Spec : Prop :=
  ∀ n, P12738585453861237874.a n = A036085 n

end A036085

/-! ## A036085.P1157938992130499208

`(A024005(n+1)-A258806(n))*A008683(A000928(n+1))`
-/

namespace A036085.P1157938992130499208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A008683 (A000928 (n + 1)).toNat

end

end A036085.P1157938992130499208

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A008683(A000928(n+1))` -/
def P1157938992130499208.Spec : Prop :=
  ∀ n, P1157938992130499208.a n = A036085 n

end A036085

/-! ## A036085.P2236256472957741

`(A024005(n+1)-A258806(n))*A008683(A037153(n+1))`
-/

namespace A036085.P2236256472957741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A008683 (A037153 (n + 1)).toNat

end

end A036085.P2236256472957741

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A008683(A037153(n+1))` -/
def P2236256472957741.Spec : Prop :=
  ∀ n, P2236256472957741.a n = A036085 n

end A036085

/-! ## A036085.P5812462558061090254

`lcm(A001015(n+1)+A001015(n), A028242(4*n))`
-/

namespace A036085.P5812462558061090254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001015 (n + 1) + A001015 n) (A028242 (4 * n))

end

end A036085.P5812462558061090254

namespace A036085

/-- `lcm(A001015(n+1)+A001015(n), A028242(4*n))` -/
def P5812462558061090254.Spec : Prop :=
  ∀ n, (P5812462558061090254.a n : ℤ) = A036085 n

end A036085

/-! ## A036085.P238609373466034944

`(A024005(n+1)-A258806(n))*A008683(A095073(n+1))`
-/

namespace A036085.P238609373466034944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A008683 (A095073 (n + 1)).toNat

end

end A036085.P238609373466034944

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A008683(A095073(n+1))` -/
def P238609373466034944.Spec : Prop :=
  ∀ n, P238609373466034944.a n = A036085 n

end A036085

/-! ## A036085.P4568463810855469188

`(A024005(n+1)-A258806(n))*A008683(A120115(n+1))`
-/

namespace A036085.P4568463810855469188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A008683 (A120115 (n + 1)).toNat

end

end A036085.P4568463810855469188

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A008683(A120115(n+1))` -/
def P4568463810855469188.Spec : Prop :=
  ∀ n, P4568463810855469188.a n = A036085 n

end A036085

/-! ## A036085.P1020436320631998869

`(A024005(n+1)-A258806(n))*A008683(A092218(n+1))`
-/

namespace A036085.P1020436320631998869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024005 (n + 1) - A258806 n) * A008683 (A092218 (n + 1)).toNat

end

end A036085.P1020436320631998869

namespace A036085

/-- `(A024005(n+1)-A258806(n))*A008683(A092218(n+1))` -/
def P1020436320631998869.Spec : Prop :=
  ∀ n, P1020436320631998869.a n = A036085 n

end A036085

/-!
# A036086: Centered cube numbers: a(n) = (n+1)^8+n^8.

The programs for A036086, the canonical program `A036086.P15809469272928113457` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036086 has offset 0).

The definition of A036086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8+n^8` (program `A036086.P15809469272928113457`, by `A036086.P15809469272928113457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036086.P15809469272928113457

`(n+1)^8+n^8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036086

/-- `(n+1)^8+n^8` -/
def P15809469272928113457.Spec : Prop :=
  ∀ n, (P15809469272928113457.a n : ℤ) = A036086 n

theorem P15809469272928113457.correct : P15809469272928113457.Spec := by
  intro n
  simp only [A036086]

end A036086

/-! ## A036086.P15345224740824430652

`A022532(n)/A022524(n)`
-/

namespace A036086.P15345224740824430652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022532 n : ℚ) / (A022524 n : ℚ)

end

end A036086.P15345224740824430652

namespace A036086

/-- `A022532(n)/A022524(n)` -/
def P15345224740824430652.Spec : Prop :=
  ∀ n, P15345224740824430652.a n = (A036086 n : ℚ)

end A036086

/-! ## A036086.P2930451798251601647

`or(1, A258809(n+1)+A060890(n))`
-/

namespace A036086.P2930451798251601647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A258809 (n + 1) + A060890 n)

end

end A036086.P2930451798251601647

namespace A036086

/-- `or(1, A258809(n+1)+A060890(n))` -/
def P2930451798251601647.Spec : Prop :=
  ∀ n, P2930451798251601647.a n = A036086 n

end A036086

/-! ## A036086.P16817443715133608906

`Δ[A001016(n)²]/Δ[A001016(n)]`
-/

namespace A036086.P16817443715133608906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A036086.P16817443715133608906

namespace A036086

/-- `Δ[A001016(n)²]/Δ[A001016(n)]` -/
def P16817443715133608906.Spec : Prop :=
  ∀ n, P16817443715133608906.a n = (A036086 n : ℚ)

end A036086

/-! ## A036086.P7915805351332565296

`lcm(A001016(n+1)+A001016(n), A033999(n))`
-/

namespace A036086.P7915805351332565296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001016 (n + 1) + A001016 n) (A033999 n)

end

end A036086.P7915805351332565296

namespace A036086

/-- `lcm(A001016(n+1)+A001016(n), A033999(n))` -/
def P7915805351332565296.Spec : Prop :=
  ∀ n, (P7915805351332565296.a n : ℤ) = A036086 n

end A036086

/-! ## A036086.P475997889774569537

`(A001016(n+1)+A001016(n))*char[A038722(n+1)-1]`
-/

namespace A036086.P475997889774569537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001016 (n + 1) + A001016 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036086.P475997889774569537

namespace A036086

/-- `(A001016(n+1)+A001016(n))*char[A038722(n+1)-1]` -/
def P475997889774569537.Spec : Prop :=
  ∀ n, P475997889774569537.a n = A036086 n

end A036086

/-! ## A036086.P14846868347460947706

`(A001016(n+1)+A001016(n))*A266303(2*n)`
-/

namespace A036086.P14846868347460947706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001016 (n + 1) + A001016 n) * A266303 (2 * n)

end

end A036086.P14846868347460947706

namespace A036086

/-- `(A001016(n+1)+A001016(n))*A266303(2*n)` -/
def P14846868347460947706.Spec : Prop :=
  ∀ n, P14846868347460947706.a n = A036086 n

end A036086

/-!
# A036087: Centered cube numbers: a(n) = (n+1)^9 + n^9.

The programs for A036087, the canonical program `A036087.P11006721384539131196` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036087 has offset 0).

The definition of A036087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9+n^9` (program `A036087.P11006721384539131196`, by `A036087.P11006721384539131196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036087.P11006721384539131196

`(n+1)^9+n^9`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036087

/-- `(n+1)^9+n^9` -/
def P11006721384539131196.Spec : Prop :=
  ∀ n, (P11006721384539131196.a n : ℤ) = A036087 n

theorem P11006721384539131196.correct : P11006721384539131196.Spec := by
  intro n
  simp only [A036087]

end A036087

/-! ## A036087.P4975802254362815981

`A022534(n)/A022525(n)`
-/

namespace A036087.P4975802254362815981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022534 n : ℚ) / (A022525 n : ℚ)

end

end A036087.P4975802254362815981

namespace A036087

/-- `A022534(n)/A022525(n)` -/
def P4975802254362815981.Spec : Prop :=
  ∀ n, P4975802254362815981.a n = (A036087 n : ℚ)

end A036087

/-! ## A036087.P3538809476299929749

`Δ[A001017(n)²]/Δ[A001017(n)]`
-/

namespace A036087.P3538809476299929749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A036087.P3538809476299929749

namespace A036087

/-- `Δ[A001017(n)²]/Δ[A001017(n)]` -/
def P3538809476299929749.Spec : Prop :=
  ∀ n, P3538809476299929749.a n = (A036087 n : ℚ)

end A036087

/-! ## A036087.P8542473708605804876

`(A001017(n+1)+A001017(n))*char[A003188(n)]`
-/

namespace A036087.P8542473708605804876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) + A001017 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036087.P8542473708605804876

namespace A036087

/-- `(A001017(n+1)+A001017(n))*char[A003188(n)]` -/
def P8542473708605804876.Spec : Prop :=
  ∀ n, P8542473708605804876.a n = A036087 n

end A036087

/-! ## A036087.P7680687223766162476

`(A001017(n+1)+A001017(n))*char[A006015(n)]`
-/

namespace A036087.P7680687223766162476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) + A001017 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036087.P7680687223766162476

namespace A036087

/-- `(A001017(n+1)+A001017(n))*char[A006015(n)]` -/
def P7680687223766162476.Spec : Prop :=
  ∀ n, P7680687223766162476.a n = A036087 n

end A036087

/-! ## A036087.P9830818958550685479

`abs(Δ[A038608(n)^9])`
-/

namespace A036087.P9830818958550685479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036087.P9830818958550685479

namespace A036087

/-- `abs(Δ[A038608(n)^9])` -/
def P9830818958550685479.Spec : Prop :=
  ∀ n, P9830818958550685479.a n = A036087 n

end A036087

/-! ## A036087.P1124237154707490662

`record[Δ[(1-Δ[lcm(2, n)/2])^9]]`
-/

namespace A036087.P1124237154707490662
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (f3 (n + 1) - f3 n)) ^ 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036087.P1124237154707490662

namespace A036087

/-- `record[Δ[(1-Δ[lcm(2, n)/2])^9]]` -/
def P1124237154707490662.Spec : Prop :=
  ∀ n, P1124237154707490662.a n = (A036087 n : ℚ)

end A036087

/-! ## A036087.P13736089728915146266

`record[Δ[A001057(n)^9]]`
-/

namespace A036087.P13736089728915146266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036087.P13736089728915146266

namespace A036087

/-- `record[Δ[A001057(n)^9]]` -/
def P13736089728915146266.Spec : Prop :=
  ∀ n, P13736089728915146266.a n = A036087 n

end A036087

/-! ## A036087.P365276930554721211

`(A001017(n+1)+A001017(n))*A007318(∑[n])`
-/

namespace A036087.P365276930554721211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) + A001017 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036087.P365276930554721211

namespace A036087

/-- `(A001017(n+1)+A001017(n))*A007318(∑[n])` -/
def P365276930554721211.Spec : Prop :=
  ∀ n, P365276930554721211.a n = A036087 n

end A036087

/-! ## A036087.P10804499300749952219

`record[Δ[A114327(n)^9]]`
-/

namespace A036087.P10804499300749952219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036087.P10804499300749952219

namespace A036087

/-- `record[Δ[A114327(n)^9]]` -/
def P10804499300749952219.Spec : Prop :=
  ∀ n, P10804499300749952219.a n = A036087 n

end A036087

/-!
# A036088: Centered cube numbers: (n+1)^10 + n^10.

The programs for A036088, the canonical program `A036088.P7773162319479978541` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036088 has offset 0).

The definition of A036088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10+n^10` (program `A036088.P7773162319479978541`, by `A036088.P7773162319479978541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036088.P7773162319479978541

`(n+1)^10+n^10`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036088

/-- `(n+1)^10+n^10` -/
def P7773162319479978541.Spec : Prop :=
  ∀ n, (P7773162319479978541.a n : ℤ) = A036088 n

theorem P7773162319479978541.correct : P7773162319479978541.Spec := by
  intro n
  simp only [A036088]

end A036088

/-! ## A036088.P13576365610844075911

`A022536(n)/A022526(n)`
-/

namespace A036088.P13576365610844075911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022536 n : ℚ) / (A022526 n : ℚ)

end

end A036088.P13576365610844075911

namespace A036088

/-- `A022536(n)/A022526(n)` -/
def P13576365610844075911.Spec : Prop :=
  ∀ n, P13576365610844075911.a n = (A036088 n : ℚ)

end A036088

/-! ## A036088.P9256532771847231402

`or(1, A008454(n)+∑[A022526(n)])`
-/

namespace A036088.P9256532771847231402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008454 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036088.P9256532771847231402

namespace A036088

/-- `or(1, A008454(n)+∑[A022526(n)])` -/
def P9256532771847231402.Spec : Prop :=
  ∀ n, P9256532771847231402.a n = A036088 n

end A036088

/-! ## A036088.P11838052009728723540

`(A008454(n+1)+A008454(n))*A001511(2*n+1)`
-/

namespace A036088.P11838052009728723540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008454 (n + 1) + A008454 n) * A001511 (2 * n + 1)

end

end A036088.P11838052009728723540

namespace A036088

/-- `(A008454(n+1)+A008454(n))*A001511(2*n+1)` -/
def P11838052009728723540.Spec : Prop :=
  ∀ n, P11838052009728723540.a n = A036088 n

end A036088

/-! ## A036088.P13031163534193361600

`record[Δ[Δ[A142150(n)^10]]]`
-/

namespace A036088.P13031163534193361600
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n ^ 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036088.P13031163534193361600

namespace A036088

/-- `record[Δ[Δ[A142150(n)^10]]]` -/
def P13031163534193361600.Spec : Prop :=
  ∀ n, P13031163534193361600.a n = A036088 n

end A036088

/-!
# A036089: Centered cube numbers: (n+1)^11 + n^11.

The programs for A036089, the canonical program `A036089.P5137669638222601657` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036089 has offset 0).

The definition of A036089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11+n^11` (program `A036089.P5137669638222601657`, by `A036089.P5137669638222601657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036089.P5137669638222601657

`(n+1)^11+n^11`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036089

/-- `(n+1)^11+n^11` -/
def P5137669638222601657.Spec : Prop :=
  ∀ n, (P5137669638222601657.a n : ℤ) = A036089 n

theorem P5137669638222601657.correct : P5137669638222601657.Spec := by
  intro n
  simp only [A036089]

end A036089

/-! ## A036089.P8048777731475102321

`A022538(n)/A022527(n)`
-/

namespace A036089.P8048777731475102321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022538 n : ℚ) / (A022527 n : ℚ)

end

end A036089.P8048777731475102321

namespace A036089

/-- `A022538(n)/A022527(n)` -/
def P8048777731475102321.Spec : Prop :=
  ∀ n, P8048777731475102321.a n = (A036089 n : ℚ)

end A036089

/-! ## A036089.P11283129585504721077

`or(1, A008455(n+1)+A008455(n))`
-/

namespace A036089.P11283129585504721077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008455 (n + 1) + A008455 n)

end

end A036089.P11283129585504721077

namespace A036089

/-- `or(1, A008455(n+1)+A008455(n))` -/
def P11283129585504721077.Spec : Prop :=
  ∀ n, P11283129585504721077.a n = A036089 n

end A036089

/-! ## A036089.P10529004906746999006

`(A008455(n+1)+A008455(n))*A001222(A008578(n+2))`
-/

namespace A036089.P10529004906746999006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008455 (n + 1) + A008455 n) * A001222 (A008578 (n + 2)).toNat

end

end A036089.P10529004906746999006

namespace A036089

/-- `(A008455(n+1)+A008455(n))*A001222(A008578(n+2))` -/
def P10529004906746999006.Spec : Prop :=
  ∀ n, P10529004906746999006.a n = A036089 n

end A036089

/-! ## A036089.P8781024093939956128

`(A008455(n+1)+A008455(n))*A008481(A000040(n+2))`
-/

namespace A036089.P8781024093939956128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008455 (n + 1) + A008455 n) * A008481 (A000040 (n + 2)).toNat

end

end A036089.P8781024093939956128

namespace A036089

/-- `(A008455(n+1)+A008455(n))*A008481(A000040(n+2))` -/
def P8781024093939956128.Spec : Prop :=
  ∀ n, P8781024093939956128.a n = A036089 n

end A036089

/-! ## A036089.P12004122795633974001

`(A008455(n+1)+A008455(n))*A014963(A296096(n+1))`
-/

namespace A036089.P12004122795633974001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008455 (n + 1) + A008455 n) * A014963 (A296096 (n + 1)).toNat

end

end A036089.P12004122795633974001

namespace A036089

/-- `(A008455(n+1)+A008455(n))*A014963(A296096(n+1))` -/
def P12004122795633974001.Spec : Prop :=
  ∀ n, P12004122795633974001.a n = A036089 n

end A036089

/-! ## A036089.P12018006691156982347

`(A008455(n+1)+A008455(n))*A014963(A000217(n+6))`
-/

namespace A036089.P12018006691156982347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008455 (n + 1) + A008455 n) * A014963 (A000217 (n + 6)).toNat

end

end A036089.P12018006691156982347

namespace A036089

/-- `(A008455(n+1)+A008455(n))*A014963(A000217(n+6))` -/
def P12018006691156982347.Spec : Prop :=
  ∀ n, P12018006691156982347.a n = A036089 n

end A036089

/-!
# A036090: Centered cube numbers: (n+1)^12 + n^12.

The programs for A036090, the canonical program `A036090.P16713206158881378213` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036090 has offset 0).

The definition of A036090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12+n^12` (program `A036090.P16713206158881378213`, by `A036090.P16713206158881378213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036090.P16713206158881378213

`(n+1)^12+n^12`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036090

/-- `(n+1)^12+n^12` -/
def P16713206158881378213.Spec : Prop :=
  ∀ n, (P16713206158881378213.a n : ℤ) = A036090 n

theorem P16713206158881378213.correct : P16713206158881378213.Spec := by
  intro n
  simp only [A036090]

end A036090

/-! ## A036090.P17162897869636605118

`or(1, A123868(n+1)+A008456(n))`
-/

namespace A036090.P17162897869636605118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A123868 (n + 1) + A008456 n)

end

end A036090.P17162897869636605118

namespace A036090

/-- `or(1, A123868(n+1)+A008456(n))` -/
def P17162897869636605118.Spec : Prop :=
  ∀ n, P17162897869636605118.a n = A036090 n

end A036090

/-! ## A036090.P3281182876632580860

`Δ[A010812(n)]/Δ[A008456(n)]`
-/

namespace A036090.P3281182876632580860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A036090.P3281182876632580860

namespace A036090

/-- `Δ[A010812(n)]/Δ[A008456(n)]` -/
def P3281182876632580860.Spec : Prop :=
  ∀ n, P3281182876632580860.a n = (A036090 n : ℚ)

end A036090

/-! ## A036090.P13691997712333961870

`xor(A123868(n+1)+A008456(n), A062157((2*n+1)²))`
-/

namespace A036090.P13691997712333961870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123868 (n + 1) + A008456 n) (A062157 ((2 * n + 1) ^ 2))

end

end A036090.P13691997712333961870

namespace A036090

/-- `xor(A123868(n+1)+A008456(n), A062157((2*n+1)²))` -/
def P13691997712333961870.Spec : Prop :=
  ∀ n, P13691997712333961870.a n = A036090 n

end A036090

/-! ## A036090.P158794945618767335

`xor(A123868(n+1)+A008456(n), A234957((2*n+1)²))`
-/

namespace A036090.P158794945618767335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123868 (n + 1) + A008456 n) (A234957 ((2 * n + 1) ^ 2))

end

end A036090.P158794945618767335

namespace A036090

/-- `xor(A123868(n+1)+A008456(n), A234957((2*n+1)²))` -/
def P158794945618767335.Spec : Prop :=
  ∀ n, P158794945618767335.a n = A036090 n

end A036090

/-!
# A036091: Centered cube numbers: (n+1)^13+n^13.

The programs for A036091, the canonical program `A036091.P6794838911853245920` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036091 has offset 0).

The definition of A036091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^13+n^13` (program `A036091.P6794838911853245920`, by `A036091.P6794838911853245920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036091.P6794838911853245920

`(n+1)^13+n^13`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036091

/-- `(n+1)^13+n^13` -/
def P6794838911853245920.Spec : Prop :=
  ∀ n, (P6794838911853245920.a n : ℤ) = A036091 n

theorem P6794838911853245920.correct : P6794838911853245920.Spec := by
  intro n
  simp only [A036091]

end A036091

/-! ## A036091.P15758293988007202617

`abs(Δ[A038608(n)^13])`
-/

namespace A036091.P15758293988007202617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036091.P15758293988007202617

namespace A036091

/-- `abs(Δ[A038608(n)^13])` -/
def P15758293988007202617.Spec : Prop :=
  ∀ n, P15758293988007202617.a n = A036091 n

end A036091

/-! ## A036091.P15155288354608314404

`gcd(Δ[A038608(n)^13], A000038(n))`
-/

namespace A036091.P15155288354608314404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A036091.P15155288354608314404

namespace A036091

/-- `gcd(Δ[A038608(n)^13], A000038(n))` -/
def P15155288354608314404.Spec : Prop :=
  ∀ n, (P15155288354608314404.a n : ℤ) = A036091 n

end A036091

/-! ## A036091.P4519107247796871565

`Δ[A089081(n)]/Δ[A010801(n)]`
-/

namespace A036091.P4519107247796871565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010801 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A036091.P4519107247796871565

namespace A036091

/-- `Δ[A089081(n)]/Δ[A010801(n)]` -/
def P4519107247796871565.Spec : Prop :=
  ∀ n, P4519107247796871565.a n = (A036091 n : ℚ)

end A036091

/-! ## A036091.P802677596127159850

`record[Δ[A001057(n)^13]]`
-/

namespace A036091.P802677596127159850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 13

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036091.P802677596127159850

namespace A036091

/-- `record[Δ[A001057(n)^13]]` -/
def P802677596127159850.Spec : Prop :=
  ∀ n, P802677596127159850.a n = A036091 n

end A036091

/-!
# A036092: Centered cube numbers: a(n) = (n+1)^14 + n^14.

The programs for A036092, the canonical program `A036092.P6843422934604541421` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036092 has offset 0).

The definition of A036092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^14+n^14` (program `A036092.P6843422934604541421`, by `A036092.P6843422934604541421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036092.P6843422934604541421

`(n+1)^14+n^14`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036092

/-- `(n+1)^14+n^14` -/
def P6843422934604541421.Spec : Prop :=
  ∀ n, (P6843422934604541421.a n : ℤ) = A036092 n

theorem P6843422934604541421.correct : P6843422934604541421.Spec := by
  intro n
  simp only [A036092]

end A036092

/-! ## A036092.P10663138709199527255

`abs(Δ[A181983(n²)^7])`
-/

namespace A036092.P10663138709199527255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n ^ 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036092.P10663138709199527255

namespace A036092

/-- `abs(Δ[A181983(n²)^7])` -/
def P10663138709199527255.Spec : Prop :=
  ∀ n, P10663138709199527255.a n = A036092 n

end A036092

/-! ## A036092.P9393710455784935988

`Δ[A181983(n²)^7]/A033999(n)`
-/

namespace A036092.P9393710455784935988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n ^ 2) ^ 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A033999 n : ℚ)

end

end A036092.P9393710455784935988

namespace A036092

/-- `Δ[A181983(n²)^7]/A033999(n)` -/
def P9393710455784935988.Spec : Prop :=
  ∀ n, P9393710455784935988.a n = (A036092 n : ℚ)

end A036092

/-! ## A036092.P16537371154177418753

`gcd(Δ[A181983(n²)^7], A000038(n))`
-/

namespace A036092.P16537371154177418753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n ^ 2) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A036092.P16537371154177418753

namespace A036092

/-- `gcd(Δ[A181983(n²)^7], A000038(n))` -/
def P16537371154177418753.Spec : Prop :=
  ∀ n, (P16537371154177418753.a n : ℤ) = A036092 n

end A036092

/-! ## A036092.P16917569256368028041

`Δ[A181983(n²)^7]*A009001(2*n)`
-/

namespace A036092.P16917569256368028041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n ^ 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A009001 (2 * n)

end

end A036092.P16917569256368028041

namespace A036092

/-- `Δ[A181983(n²)^7]*A009001(2*n)` -/
def P16917569256368028041.Spec : Prop :=
  ∀ n, P16917569256368028041.a n = A036092 n

end A036092

/-!
# A036093: Centered cube numbers: (n+1)^15 + n^15.

The programs for A036093, the canonical program `A036093.P8608577771298230220` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036093 has offset 0).

The definition of A036093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^15+n^15` (program `A036093.P8608577771298230220`, by `A036093.P8608577771298230220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036093.P8608577771298230220

`(n+1)^15+n^15`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036093

/-- `(n+1)^15+n^15` -/
def P8608577771298230220.Spec : Prop :=
  ∀ n, (P8608577771298230220.a n : ℤ) = A036093 n

theorem P8608577771298230220.correct : P8608577771298230220.Spec := by
  intro n
  simp only [A036093]

end A036093

/-! ## A036093.P11010568338745790946

`abs(Δ[A038608(n)^15])`
-/

namespace A036093.P11010568338745790946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036093.P11010568338745790946

namespace A036093

/-- `abs(Δ[A038608(n)^15])` -/
def P11010568338745790946.Spec : Prop :=
  ∀ n, P11010568338745790946.a n = A036093 n

end A036093

/-! ## A036093.P9924516263130910213

`gcd(Δ[A038608(n)^15], A000038(n))`
-/

namespace A036093.P9924516263130910213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A036093.P9924516263130910213

namespace A036093

/-- `gcd(Δ[A038608(n)^15], A000038(n))` -/
def P9924516263130910213.Spec : Prop :=
  ∀ n, (P9924516263130910213.a n : ℤ) = A036093 n

end A036093

/-! ## A036093.P14000657761358458287

`record[Δ[A001057(n)^15]]`
-/

namespace A036093.P14000657761358458287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036093.P14000657761358458287

namespace A036093

/-- `record[Δ[A001057(n)^15]]` -/
def P14000657761358458287.Spec : Prop :=
  ∀ n, P14000657761358458287.a n = A036093 n

end A036093

/-! ## A036093.P13579495054487128907

`record[Δ[A114327(n)^15]]`
-/

namespace A036093.P13579495054487128907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n ^ 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036093.P13579495054487128907

namespace A036093

/-- `record[Δ[A114327(n)^15]]` -/
def P13579495054487128907.Spec : Prop :=
  ∀ n, P13579495054487128907.a n = A036093 n

end A036093

/-!
# A036094: Centered cube numbers: (n+1)^16 + n^16.

The programs for A036094, the canonical program `A036094.P2162227290417152042` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036094 has offset 0).

The definition of A036094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^16+n^16` (program `A036094.P2162227290417152042`, by `A036094.P2162227290417152042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036094.P2162227290417152042

`(n+1)^16+n^16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036094

/-- `(n+1)^16+n^16` -/
def P2162227290417152042.Spec : Prop :=
  ∀ n, (P2162227290417152042.a n : ℤ) = A036094 n

theorem P2162227290417152042.correct : P2162227290417152042.Spec := by
  intro n
  simp only [A036094]

end A036094

/-! ## A036094.P3346278578672539081

`∑{e}[3*6^n, #^16]`
-/

namespace A036094.P3346278578672539081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 16

end

end A036094.P3346278578672539081

namespace A036094

/-- `∑{e}[3*6^n, #^16]` -/
def P3346278578672539081.Spec : Prop :=
  ∀ n, (P3346278578672539081.a n : ℤ) = A036094 n

end A036094

/-!
# A036095: Centered cube numbers: a(n) = (n+1)^17 + n^17.

The programs for A036095, the canonical program `A036095.P5793492866088705674` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036095 has offset 0).

The definition of A036095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^17+n^17` (program `A036095.P5793492866088705674`, by `A036095.P5793492866088705674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036095.P5793492866088705674

`(n+1)^17+n^17`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036095

/-- `(n+1)^17+n^17` -/
def P5793492866088705674.Spec : Prop :=
  ∀ n, (P5793492866088705674.a n : ℤ) = A036095 n

theorem P5793492866088705674.correct : P5793492866088705674.Spec := by
  intro n
  simp only [A036095]

end A036095

/-! ## A036095.P10639353611894562769

`abs(Δ[A038608(n)^17])`
-/

namespace A036095.P10639353611894562769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036095.P10639353611894562769

namespace A036095

/-- `abs(Δ[A038608(n)^17])` -/
def P10639353611894562769.Spec : Prop :=
  ∀ n, P10639353611894562769.a n = A036095 n

end A036095

/-! ## A036095.P720477312603198037

`record[Δ[A001057(n)^17]]`
-/

namespace A036095.P720477312603198037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036095.P720477312603198037

namespace A036095

/-- `record[Δ[A001057(n)^17]]` -/
def P720477312603198037.Spec : Prop :=
  ∀ n, P720477312603198037.a n = A036095 n

end A036095

/-! ## A036095.P18065004239462513606

`record[Δ[A114327(n)^17]]`
-/

namespace A036095.P18065004239462513606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n ^ 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036095.P18065004239462513606

namespace A036095

/-- `record[Δ[A114327(n)^17]]` -/
def P18065004239462513606.Spec : Prop :=
  ∀ n, P18065004239462513606.a n = A036095 n

end A036095

/-! ## A036095.P2157763114677667336

`record[Δ[A105805(n+1)^17]]`
-/

namespace A036095.P2157763114677667336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105805 (n + 1) ^ 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036095.P2157763114677667336

namespace A036095

/-- `record[Δ[A105805(n+1)^17]]` -/
def P2157763114677667336.Spec : Prop :=
  ∀ n, P2157763114677667336.a n = A036095 n

end A036095

/-!
# A036096: Centered cube numbers: (n+1)^18 + n^18.

The programs for A036096, the canonical program `A036096.P2633988152001810233` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036096 has offset 0).

The definition of A036096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^18+n^18` (program `A036096.P2633988152001810233`, by `A036096.P2633988152001810233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036096.P2633988152001810233

`(n+1)^18+n^18`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036096

/-- `(n+1)^18+n^18` -/
def P2633988152001810233.Spec : Prop :=
  ∀ n, (P2633988152001810233.a n : ℤ) = A036096 n

theorem P2633988152001810233.correct : P2633988152001810233.Spec := by
  intro n
  simp only [A036096]

end A036096

/-! ## A036096.P18369012429281289683

`or(A010806(n+1)+A010806(n), A060576(n))`
-/

namespace A036096.P18369012429281289683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010806 (n + 1) + A010806 n) (A060576 n)

end

end A036096.P18369012429281289683

namespace A036096

/-- `or(A010806(n+1)+A010806(n), A060576(n))` -/
def P18369012429281289683.Spec : Prop :=
  ∀ n, P18369012429281289683.a n = A036096 n

end A036096

/-! ## A036096.P14677301953715382612

`record[Δ[A344686(n)^9]]`
-/

namespace A036096.P14677301953715382612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344686 n ^ 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036096.P14677301953715382612

namespace A036096

/-- `record[Δ[A344686(n)^9]]` -/
def P14677301953715382612.Spec : Prop :=
  ∀ n, P14677301953715382612.a n = A036096 n

end A036096

/-!
# A036097: Centered cube numbers: (n+1)^19+n^19.

The programs for A036097, the canonical program `A036097.P8683106660414537380` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036097 has offset 0).

The definition of A036097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^19+n^19` (program `A036097.P8683106660414537380`, by `A036097.P8683106660414537380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036097.P8683106660414537380

`(n+1)^19+n^19`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036097

/-- `(n+1)^19+n^19` -/
def P8683106660414537380.Spec : Prop :=
  ∀ n, (P8683106660414537380.a n : ℤ) = A036097 n

theorem P8683106660414537380.correct : P8683106660414537380.Spec := by
  intro n
  simp only [A036097]

end A036097

/-! ## A036097.P16830097555025364854

`or(1, A010807(n+1)+A010807(n))`
-/

namespace A036097.P16830097555025364854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010807 (n + 1) + A010807 n)

end

end A036097.P16830097555025364854

namespace A036097

/-- `or(1, A010807(n+1)+A010807(n))` -/
def P16830097555025364854.Spec : Prop :=
  ∀ n, P16830097555025364854.a n = A036097 n

end A036097

/-! ## A036097.P6311153460121415657

`record[Δ[A001057(n)^19]]`
-/

namespace A036097.P6311153460121415657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036097.P6311153460121415657

namespace A036097

/-- `record[Δ[A001057(n)^19]]` -/
def P6311153460121415657.Spec : Prop :=
  ∀ n, P6311153460121415657.a n = A036097 n

end A036097

/-!
# A036098: Centered cube numbers: a(n) = (n+1)^20 + n^20.

The programs for A036098, the canonical program `A036098.P16820759973379616246` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036098 has offset 0).

The definition of A036098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^20+n^20` (program `A036098.P16820759973379616246`, by `A036098.P16820759973379616246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036098.P16820759973379616246

`(n+1)^20+n^20`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036098

/-- `(n+1)^20+n^20` -/
def P16820759973379616246.Spec : Prop :=
  ∀ n, (P16820759973379616246.a n : ℤ) = A036098 n

theorem P16820759973379616246.correct : P16820759973379616246.Spec := by
  intro n
  simp only [A036098]

end A036098

/-!
# A036099: Centered cube numbers: (n+1)^21 + n^21.

The programs for A036099, the canonical program `A036099.P7054077074225571692` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036099 has offset 0).

The definition of A036099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^21+n^21` (program `A036099.P7054077074225571692`, by `A036099.P7054077074225571692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036099.P7054077074225571692

`(n+1)^21+n^21`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A036099

/-- `(n+1)^21+n^21` -/
def P7054077074225571692.Spec : Prop :=
  ∀ n, (P7054077074225571692.a n : ℤ) = A036099 n

theorem P7054077074225571692.correct : P7054077074225571692.Spec := by
  intro n
  simp only [A036099]

end A036099

/-! ## A036099.P13834452497813208395

`record[Δ[A001057(n)^21]]`
-/

namespace A036099.P13834452497813208395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 21

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036099.P13834452497813208395

namespace A036099

/-- `record[Δ[A001057(n)^21]]` -/
def P13834452497813208395.Spec : Prop :=
  ∀ n, P13834452497813208395.a n = A036099 n

end A036099

