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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A255704: Number T(n,k) of n-node rooted trees in which the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root equals k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A255704, there is no canonical definition to state claims against.
-/

/-! ## A255704.P2729173935239349543

`A172263(2*A120060(n))`
-/

namespace A255704.P2729173935239349543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (2 * A120060 n).toNat

end

end A255704.P2729173935239349543

/-! ## A255704.P11393169415110166795

`∑{d}[A238802(n), A259344(#)]`
-/

namespace A255704.P11393169415110166795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A259344 d

end

end A255704.P11393169415110166795

/-! ## A255704.P3341920552692188605

`∑{d}[ceil(A293808(n)/2), A259344(#)]`
-/

namespace A255704.P3341920552692188605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293808 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A259344 d

end

end A255704.P3341920552692188605

/-! ## A255704.P9480528821114356385

`A325678(A215977(n)*A238802(n))`
-/

namespace A255704.P9480528821114356385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A215977 n * A238802 n).toNat

end

end A255704.P9480528821114356385

/-! ## A255704.P4651549169090929474

`A117707(∑{d}[A238802(n), A000040(#)])`
-/

namespace A255704.P4651549169090929474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000040 d).toNat

end

end A255704.P4651549169090929474

/-!
# A255705: Number of 2n+1-node rooted trees in which the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root equals n+1.

The programs for A255705, there is no canonical definition to state claims against.
-/

/-! ## A255705.P567174501621465999

`Δ[A000107(n)]`
-/

namespace A255705.P567174501621465999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255705.P567174501621465999

/-! ## A255705.P11354361122412815987

`A000107(n+1)-A000107(n)`
-/

namespace A255705.P11354361122412815987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000107 (n + 1) - A000107 n

end

end A255705.P11354361122412815987

/-! ## A255705.P16797670349753689619

`A318754(2*(n+1)²+1)`
-/

namespace A255705.P16797670349753689619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (2 * (n + 1) ^ 2 + 1)

end

end A255705.P16797670349753689619

/-! ## A255705.P8880756632301856411

`A318758(2*(n+1)²+1)`
-/

namespace A255705.P8880756632301856411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (2 * (n + 1) ^ 2 + 1)

end

end A255705.P8880756632301856411

/-! ## A255705.P6419249935305503986

`A255704((n+1)²+n²)`
-/

namespace A255705.P6419249935305503986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 ((n + 1) ^ 2 + n ^ 2)

end

end A255705.P6419249935305503986

/-!
# A255706: Number of length-n word structures with no consecutive nonrepeated letters.

The programs for A255706, there is no canonical definition to state claims against.
-/

/-! ## A255706.P71464211128096254

`A171727(A287892(n+1))`
-/

namespace A255706.P71464211128096254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A287892 (n + 1)).toNat

end

end A255706.P71464211128096254

/-! ## A255706.P17383517838546554176

`A385575(A318227(n+1))`
-/

namespace A255706.P17383517838546554176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385575 (A318227 (n + 1)).toNat

end

end A255706.P17383517838546554176

/-!
# A255707: Least number k > 0 such that (2*n-1)^k - 2 is prime, or 0 if no such number exists.

The programs for A255707, there is no canonical definition to state claims against.
-/

/-! ## A255707.P7234113482614098098

`gcd(A061358(Δ[n²]), A250200(n+1))`
-/

namespace A255707.P7234113482614098098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061358 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A250200 (n + 1))

end

end A255707.P7234113482614098098

/-! ## A255707.P8970954955174422715

`A332029(Δ[n²])`
-/

namespace A255707.P8970954955174422715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255707.P8970954955174422715

/-! ## A255707.P9953253104298887432

`A332029(2*n+1)%99`
-/

namespace A255707.P9953253104298887432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332029 (2 * n + 1)) 99

end

end A255707.P9953253104298887432

/-! ## A255707.P15984409922140810321

`lcm((-1)^n, A332029(n+1+n))`
-/

namespace A255707.P15984409922140810321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A332029 (n + 1 + n))

end

end A255707.P15984409922140810321

/-! ## A255707.P13780216901526563860

`A245092(A332029(2*n+1))`
-/

namespace A255707.P13780216901526563860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A332029 (2 * n + 1)).toNat

end

end A255707.P13780216901526563860

/-!
# A255710: Number of length n 1..(2+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255710, there is no canonical definition to state claims against.
-/

/-! ## A255710.P7694648029658230655

`A255716(∑[n+2])`
-/

namespace A255710.P7694648029658230655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255710.P7694648029658230655

/-! ## A255710.P18131319825783365589

`lcm((-1)^n, A255716(A046691(n)+3))`
-/

namespace A255710.P18131319825783365589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A255716 (A046691 n + 3).toNat)

end

end A255710.P18131319825783365589

/-! ## A255710.P12998916325762280597

`A033999(2*n)*A255716(A046691(n)+3)`
-/

namespace A255710.P12998916325762280597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A255716 (A046691 n + 3).toNat

end

end A255710.P12998916325762280597

/-! ## A255710.P12309023612513334269

`A255716(A000096(n+1))%A000602(n+5)`
-/

namespace A255710.P12309023612513334269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A000096 (n + 1)).toNat) (A000602 (n + 5))

end

end A255710.P12309023612513334269

/-! ## A255710.P6799720581951680892

`A255716(A046691(n)+3)%A026396(2*n)`
-/

namespace A255710.P6799720581951680892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A046691 n + 3).toNat) (A026396 (2 * n))

end

end A255710.P6799720581951680892

/-! ## A255710.P4966157271457722975

`A255716(A000096(n+1))%A129150(n)`
-/

namespace A255710.P4966157271457722975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A000096 (n + 1)).toNat) (A129150 n)

end

end A255710.P4966157271457722975

/-!
# A255711: Number of length n 1..(3+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255711, there is no canonical definition to state claims against.
-/

/-! ## A255711.P11472392608978097960

`A255716(∑[n+3]+1)`
-/

namespace A255711.P11472392608978097960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255711.P11472392608978097960

/-! ## A255711.P12959677402526117662

`abs(A255716(A052905(n)+3)-n)+n`
-/

namespace A255711.P12959677402526117662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A255716 (A052905 n + 3).toNat - (n : ℤ)| + (n : ℤ)

end

end A255711.P12959677402526117662

/-! ## A255711.P17623668118170733794

`A255716(Δ[A008778(n)])%A081067(n)`
-/

namespace A255711.P17623668118170733794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (f1 (n + 1) - f1 n).toNat) (A081067 n)

end

end A255711.P17623668118170733794

/-! ## A255711.P6710866262484161721

`A255716(A052905(n)+3)%A254144(n)`
-/

namespace A255711.P6710866262484161721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A052905 n + 3).toNat) (A254144 n)

end

end A255711.P6710866262484161721

/-! ## A255711.P8430955758273182109

`lcm(A114523(n), A255716(A052905(n)+3))`
-/

namespace A255711.P8430955758273182109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114523 n) (A255716 (A052905 n + 3).toNat)

end

end A255711.P8430955758273182109

/-! ## A255711.P2426836384702866694

`A008836(n+1)²*A255716(A052905(n)+3)`
-/

namespace A255711.P2426836384702866694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A255716 (A052905 n + 3).toNat

end

end A255711.P2426836384702866694

/-! ## A255711.P6457371586480839436

`A255716(A052905(n)+3)+A008683(12*n+8)`
-/

namespace A255711.P6457371586480839436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A052905 n + 3).toNat + A008683 (12 * n + 8)

end

end A255711.P6457371586480839436

/-! ## A255711.P15150162782777693496

`A005117(gcd(n, n+1))*A255716(A052905(n)+3)`
-/

namespace A255711.P15150162782777693496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A255716 (A052905 n + 3).toNat

end

end A255711.P15150162782777693496

/-! ## A255711.P8348338354081524934

`A001222(A007645(n+1))*A255716(A052905(n)+3)`
-/

namespace A255711.P8348338354081524934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007645 (n + 1)).toNat * A255716 (A052905 n + 3).toNat

end

end A255711.P8348338354081524934

/-!
# A255712: Number of length n 1..(4+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255712, there is no canonical definition to state claims against.
-/

/-! ## A255712.P15012183822324603636

`A255716(A055998(n+2))`
-/

namespace A255712.P15012183822324603636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A055998 (n + 2)).toNat

end

end A255712.P15012183822324603636

/-! ## A255712.P4721396170508735503

`A255716(Δ[A006503(n+1)])`
-/

namespace A255712.P4721396170508735503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255712.P4721396170508735503

/-! ## A255712.P8073648682579275296

`A255716(Δ[A034857(n+1)])`
-/

namespace A255712.P8073648682579275296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255712.P8073648682579275296

/-! ## A255712.P4651695784992412297

`A255716(Δ[A006416(n+2)])`
-/

namespace A255712.P4651695784992412297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255712.P4651695784992412297

/-! ## A255712.P9542596426813437243

`A255716(A052905(n+1)+2)`
-/

namespace A255712.P9542596426813437243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A052905 (n + 1) + 2).toNat

end

end A255712.P9542596426813437243

/-! ## A255712.P3134096125260039934

`A255716(Δ[A008778(n+1)]-1)`
-/

namespace A255712.P3134096125260039934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n - 1).toNat

end

end A255712.P3134096125260039934

/-! ## A255712.P12947592289586051899

`A255716(Δ[A005586(n+1)]-2)`
-/

namespace A255712.P12947592289586051899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n - 2).toNat

end

end A255712.P12947592289586051899

/-! ## A255712.P5848292063752645165

`A255716(A167499(n)+A016777(n))`
-/

namespace A255712.P5848292063752645165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167499 n + A016777 n).toNat

end

end A255712.P5848292063752645165

/-! ## A255712.P12122211259636051543

`A255716(A167614(n+1)+A005408(n))`
-/

namespace A255712.P12122211259636051543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167614 (n + 1) + A005408 n).toNat

end

end A255712.P12122211259636051543

/-!
# A255713: Number of length n 1..(5+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255713, there is no canonical definition to state claims against.
-/

/-! ## A255713.P3111033178652904452

`A255716(A046691(n+3))`
-/

namespace A255713.P3111033178652904452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A046691 (n + 3)).toNat

end

end A255713.P3111033178652904452

/-! ## A255713.P5142941183631987624

`A255716(Δ[A023545(n+1)])`
-/

namespace A255713.P5142941183631987624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255713.P5142941183631987624

/-! ## A255713.P15405511051096434229

`A255716(A000096(n+4)-3)`
-/

namespace A255713.P15405511051096434229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000096 (n + 4) - 3).toNat

end

end A255713.P15405511051096434229

/-! ## A255713.P1067834406246115102

`A255716(A000124(n+5)-5)`
-/

namespace A255713.P1067834406246115102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000124 (n + 5) - 5).toNat

end

end A255713.P1067834406246115102

/-! ## A255713.P8607162903830374238

`A255716(Δ[A034857(n+2)]-1)`
-/

namespace A255713.P8607162903830374238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n - 1).toNat

end

end A255713.P8607162903830374238

/-! ## A255713.P17909011326721989481

`A255716(Δ[A006416(n+3)]-1)`
-/

namespace A255713.P17909011326721989481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n - 1).toNat

end

end A255713.P17909011326721989481

/-! ## A255713.P9221568264480597816

`A255716(Δ[A055831(n+4)]+1)`
-/

namespace A255713.P9221568264480597816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n + 1).toNat

end

end A255713.P9221568264480597816

/-! ## A255713.P5512045141371140037

`A255716(Δ[n²]+Δ[A005586(n)]+5)`
-/

namespace A255713.P5512045141371140037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (f2 (n + 1) - f2 n + 5)).toNat

end

end A255713.P5512045141371140037

/-! ## A255713.P15632753538301379887

`A255716(A014132(Δ[A006416(n+2)]))`
-/

namespace A255713.P15632753538301379887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255713.P15632753538301379887

/-!
# A255714: Number of length n 1..(6+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255714, there is no canonical definition to state claims against.
-/

/-! ## A255714.P6752802638527857393

`A255716(A052905(n+3))`
-/

namespace A255714.P6752802638527857393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A052905 (n + 3)).toNat

end

end A255714.P6752802638527857393

/-! ## A255714.P844746408018619221

`A255716(Δ[A055831(n+5)])`
-/

namespace A255714.P844746408018619221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255714.P844746408018619221

/-! ## A255714.P11642620178591802998

`A255716(A000096(n+5)-4)`
-/

namespace A255714.P11642620178591802998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000096 (n + 5) - 4).toNat

end

end A255714.P11642620178591802998

/-! ## A255714.P6884419739914678713

`A255716(A000124(n+6)-6)`
-/

namespace A255714.P6884419739914678713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000124 (n + 6) - 6).toNat

end

end A255714.P6884419739914678713

/-! ## A255714.P11192326423620947804

`A255716(Δ[Δ[A006504(n+1)]])`
-/

namespace A255714.P11192326423620947804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255714.P11192326423620947804

/-! ## A255714.P6818055914138900993

`A255716(Δ[A023545(n+2)]-1)`
-/

namespace A255714.P6818055914138900993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n - 1).toNat

end

end A255714.P6818055914138900993

/-! ## A255714.P5645844893627701939

`A255716(eq[5, A002260(n+1)]+2*(n+1))`
-/

namespace A255714.P5645844893627701939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 * (n + 1))

end

end A255714.P5645844893627701939

/-! ## A255714.P17681257327465241664

`A255716(A028872(n+8)-A000217(n+9))`
-/

namespace A255714.P17681257327465241664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A028872 (n + 8) - A000217 (n + 9)).toNat

end

end A255714.P17681257327465241664

/-!
# A255715: Number of length n 1..(7+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255715, there is no canonical definition to state claims against.
-/

/-! ## A255715.P8892797631545601883

`A255716(A055999(n+4))`
-/

namespace A255715.P8892797631545601883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A055999 (n + 4)).toNat

end

end A255715.P8892797631545601883

/-! ## A255715.P17366965423008929573

`A255716(Δ[A096957(n)]+9)`
-/

namespace A255715.P17366965423008929573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n + 9).toNat

end

end A255715.P17366965423008929573

/-! ## A255715.P7584933343562336231

`A255716(A000217(n+7)-6)`
-/

namespace A255715.P7584933343562336231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000217 (n + 7) - 6).toNat

end

end A255715.P7584933343562336231

/-! ## A255715.P2611024129313680817

`A255716(A000124(n+7)-7)`
-/

namespace A255715.P2611024129313680817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000124 (n + 7) - 7).toNat

end

end A255715.P2611024129313680817

/-! ## A255715.P9560188610830592850

`A255716((n+5)²-A253145(n+1))`
-/

namespace A255715.P9560188610830592850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (((n + 5) ^ 2 : ℤ) - A253145 (n + 1)).toNat

end

end A255715.P9560188610830592850

/-! ## A255715.P16438085447096625439

`A255716(A046691(n+7)-A004273(n+10))`
-/

namespace A255715.P16438085447096625439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A046691 (n + 7) - A004273 (n + 10)).toNat

end

end A255715.P16438085447096625439

/-!
# A255716: T(n,k)=Number of length n 1..(k+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255716, there is no canonical definition to state claims against.
-/

/-! ## A255716.P8763148548997826130

`A320837(A143396(n+1)+1)`
-/

namespace A255716.P8763148548997826130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320837 (A143396 (n + 1) + 1).toNat

end

end A255716.P8763148548997826130

/-! ## A255716.P8764660122788475421

`A334948(A030526(n+1)+A002182(n+1))`
-/

namespace A255716.P8764660122788475421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (A030526 (n + 1) + A002182 (n + 1)).toNat

end

end A255716.P8764660122788475421

/-! ## A255716.P10335018230453474714

`A277824(A093967(n))+A210391(n)`
-/

namespace A255716.P10335018230453474714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 (A093967 n).toNat + A210391 n

end

end A255716.P10335018230453474714

/-! ## A255716.P12584452227224723826

`A067539(A143324(n+1)^A182172(n))`
-/

namespace A255716.P12584452227224723826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (SequenceMachineLib.roundAway ((A143324 (n + 1) : ℚ) ^ (A182172 n : ℤ))).toNat

end

end A255716.P12584452227224723826

/-! ## A255716.P7906470141427342272

`A000005(A000005(3*n+4)^A048993(n+1))`
-/

namespace A255716.P7906470141427342272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000005 (3 * n + 4) : ℚ) ^ (A048993 (n + 1) : ℤ))).toNat

end

end A255716.P7906470141427342272

/-!
# A255717: Number of length 2 1..(n+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255717, there is no canonical definition to state claims against.
-/

/-! ## A255717.P3470194699130365728

`A254540(n+1)-A065855(n+3)`
-/

namespace A255717.P3470194699130365728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254540 (n + 1) - A065855 (n + 3)

end

end A255717.P3470194699130365728

/-! ## A255717.P15261802891865539821

`A254540(n+1)+1-A062298(n+3)`
-/

namespace A255717.P15261802891865539821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254540 (n + 1) + 1 - A062298 (n + 3)

end

end A255717.P15261802891865539821

/-! ## A255717.P9573785614985851077

`A255716(∑[n+1]+2)`
-/

namespace A255717.P9573785614985851077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255717.P9573785614985851077

/-! ## A255717.P8442925370965807582

`record[A255716(A133263(n)-n)]`
-/

namespace A255717.P8442925370965807582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255717.P8442925370965807582

/-! ## A255717.P14485712701862969206

`record[A255716(A254106(n+1)+2)]`
-/

namespace A255717.P14485712701862969206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A254106 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255717.P14485712701862969206

/-! ## A255717.P18390765285677106759

`record[A255716(A133263(A103627(n)))]`
-/

namespace A255717.P18390765285677106759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A133263 (A103627 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255717.P18390765285677106759

/-! ## A255717.P12519515894546605037

`A255716(A238531(n+2))%A001550(n)`
-/

namespace A255717.P12519515894546605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A238531 (n + 2)).toNat) (A001550 n)

end

end A255717.P12519515894546605037

/-! ## A255717.P16873260678153567086

`A255716(A133263(n+1))%Δ[A001845(n+1)]`
-/

namespace A255717.P16873260678153567086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A133263 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A255717.P16873260678153567086

/-!
# A255718: Number of length 3 1..(n+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255718, there is no canonical definition to state claims against.
-/

/-! ## A255718.P2086015093075041352

`A255716(∑[n+2]+4)`
-/

namespace A255718.P2086015093075041352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255718.P2086015093075041352

/-! ## A255718.P5903493703317866964

`A255716(A055998(n)+6)%A017474(n)`
-/

namespace A255718.P5903493703317866964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A055998 n + 6).toNat) (A017474 n)

end

end A255718.P5903493703317866964

/-! ## A255718.P9668639578600674358

`or(A000007(n), A255716(A167614(n+1)))`
-/

namespace A255718.P9668639578600674358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255716 (A167614 (n + 1)).toNat)

end

end A255718.P9668639578600674358

/-! ## A255718.P516795649854849306

`or(A000007(n), A255716(A055998(n)+6))`
-/

namespace A255718.P516795649854849306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255716 (A055998 n + 6).toNat)

end

end A255718.P516795649854849306

/-! ## A255718.P11477713755260395493

`A255716(A167614(n+1))%A001834(n+1)`
-/

namespace A255718.P11477713755260395493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A167614 (n + 1)).toNat) (A001834 (n + 1))

end

end A255718.P11477713755260395493

/-! ## A255718.P15260880914702076420

`gcd(A000038(n)/2, A255716(A046691(n)+7))`
-/

namespace A255718.P15260880914702076420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (A255716 (A046691 n + 7).toNat)

end

end A255718.P15260880914702076420

/-! ## A255718.P14737714662105847662

`A255716(A046691(n)+7)%A003945(2*n+1)`
-/

namespace A255718.P14737714662105847662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255716 (A046691 n + 7).toNat) (A003945 (2 * n + 1))

end

end A255718.P14737714662105847662

/-!
# A255719: Number of length 4 1..(n+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255719, there is no canonical definition to state claims against.
-/

/-! ## A255719.P280108797236365807

`A255716(A052905(n)+9)`
-/

namespace A255719.P280108797236365807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A052905 n + 9).toNat

end

end A255719.P280108797236365807

/-! ## A255719.P14815882429184227913

`A255716(A055999(n)+10)`
-/

namespace A255719.P14815882429184227913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A055999 n + 10).toNat

end

end A255719.P14815882429184227913

/-! ## A255719.P4577194848408529219

`A255716(Δ[A008778(n)]+6)`
-/

namespace A255719.P4577194848408529219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n + 6).toNat

end

end A255719.P4577194848408529219

/-! ## A255719.P15439678108208899432

`A255716(A167614(n+2)+1)`
-/

namespace A255719.P15439678108208899432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167614 (n + 2) + 1).toNat

end

end A255719.P15439678108208899432

/-! ## A255719.P17491059916970410188

`A255716(A167499(n+2)-1)`
-/

namespace A255719.P17491059916970410188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167499 (n + 2) - 1).toNat

end

end A255719.P17491059916970410188

/-! ## A255719.P17940633814857290264

`A255716(A167487(n+2)-3)`
-/

namespace A255719.P17940633814857290264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167487 (n + 2) - 3).toNat

end

end A255719.P17940633814857290264

/-! ## A255719.P5540829265120457439

`A255716(Δ[A023545(n+1)-n²])`
-/

namespace A255719.P5540829265120457439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n).toNat

end

end A255719.P5540829265120457439

/-! ## A255719.P10936193851847121542

`A255716(A038722(Δ[A034857(n+1)]))`
-/

namespace A255719.P10936193851847121542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255719.P10936193851847121542

/-! ## A255719.P7593183045753725763

`A255716(Δ[A023545(n+1)]-A005408(n))`
-/

namespace A255719.P7593183045753725763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n - A005408 n).toNat

end

end A255719.P7593183045753725763

/-!
# A255720: Number of length 5 1..(n+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255720, there is no canonical definition to state claims against.
-/

/-! ## A255720.P14781826164487073054

`A255716(A167499(n+3))`
-/

namespace A255720.P14781826164487073054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167499 (n + 3)).toNat

end

end A255720.P14781826164487073054

/-! ## A255720.P12399890098329001434

`A255716(Δ[A006503(n+1)]+8)`
-/

namespace A255720.P12399890098329001434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (f1 (n + 1) - f1 n + 8).toNat

end

end A255720.P12399890098329001434

/-! ## A255720.P4059665596641130555

`A255716(A000124(n+5)-(n+1))`
-/

namespace A255720.P4059665596641130555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A255720.P4059665596641130555

/-! ## A255720.P5414015082957568219

`A255716(A038722(Δ[A023545(n+1)]))`
-/

namespace A255720.P5414015082957568219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255720.P5414015082957568219

/-! ## A255720.P5698781848997444165

`A255716(A008619(Δ[A026046(n+6)]))`
-/

namespace A255720.P5698781848997444165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A255720.P5698781848997444165

/-! ## A255720.P2575517227050995772

`A255716(A253145(A009005(n+1))-n)`
-/

namespace A255720.P2575517227050995772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A253145 (A009005 (n + 1)).toNat - (n : ℤ)).toNat

end

end A255720.P2575517227050995772

/-!
# A255721: Number of length 6 1..(n+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255721, there is no canonical definition to state claims against.
-/

/-! ## A255721.P10637093205888254336

`A255716(A167499(n+4)+1)`
-/

namespace A255721.P10637093205888254336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167499 (n + 4) + 1).toNat

end

end A255721.P10637093205888254336

/-! ## A255721.P12759989038558534359

`A255716(A133263(n+5)+4)`
-/

namespace A255721.P12759989038558534359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A133263 (n + 5) + 4).toNat

end

end A255721.P12759989038558534359

/-! ## A255721.P14091061137811833205

`A255716(A000217(n+5)+6)`
-/

namespace A255721.P14091061137811833205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000217 (n + 5) + 6).toNat

end

end A255721.P14091061137811833205

/-! ## A255721.P15638168809221589685

`A255716(A246172(n+1)+20)`
-/

namespace A255721.P15638168809221589685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A246172 (n + 1) + 20).toNat

end

end A255721.P15638168809221589685

/-! ## A255721.P2545085762533187187

`A255716(A000096(n+6)-A005843(n+3))`
-/

namespace A255721.P2545085762533187187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A255721.P2545085762533187187

/-! ## A255721.P8027590306538587165

`A255716(A005843(n+8)+A000096(n+2))`
-/

namespace A255721.P8027590306538587165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A255721.P8027590306538587165

/-!
# A255722: Number of length 7 1..(n+2) arrays with no leading partial sum equal to a prime and no consecutive values equal.

The programs for A255722, there is no canonical definition to state claims against.
-/

/-! ## A255722.P17184910452531143001

`A255716(A167487(n+5))`
-/

namespace A255722.P17184910452531143001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167487 (n + 5)).toNat

end

end A255722.P17184910452531143001

/-! ## A255722.P2377571551127017319

`A255716(A167499(n+5)+2)`
-/

namespace A255722.P2377571551127017319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A167499 (n + 5) + 2).toNat

end

end A255722.P2377571551127017319

/-! ## A255722.P7510817739582894703

`A255716(A000124(n+6)+6)`
-/

namespace A255722.P7510817739582894703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000124 (n + 6) + 6).toNat

end

end A255722.P7510817739582894703

/-! ## A255722.P12418587311293123017

`A255716(A000096(n+5)+8)`
-/

namespace A255722.P12418587311293123017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000096 (n + 5) + 8).toNat

end

end A255722.P12418587311293123017

/-! ## A255722.P2590920348914471541

`A255716(A000217(n+6)+7)`
-/

namespace A255722.P2590920348914471541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A000217 (n + 6) + 7).toNat

end

end A255722.P2590920348914471541

/-! ## A255722.P8589626158261004926

`A255716(A052905(n+7)-A016825(n+5))`
-/

namespace A255722.P8589626158261004926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255716 (A052905 (n + 7) - A016825 (n + 5)).toNat

end

end A255722.P8589626158261004926

/-!
# A255725: Numbers n = concat(x,y) such that the product x*y | n. Leading zeros in y allowed.

The programs for A255725, there is no canonical definition to state claims against.
-/

/-! ## A255725.P10109903369755046459

`∪[A287442(n+1), A255726(n+1)]%A130176(3*(n+1))²`
-/

namespace A255725.P10109903369755046459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255726 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A130176 (3 * (n + 1)) ^ 2)

end

end A255725.P10109903369755046459

/-! ## A255725.P5797645642498413736

`∪[A287442(n+1), A255726(n+1)]%A258319(3*n+2)`
-/

namespace A255725.P5797645642498413736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255726 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A258319 (3 * n + 2))

end

end A255725.P5797645642498413736

/-! ## A255725.P15067677878885737117

`∪[A255726(n+1), A287442(A082743(n)+2)]`
-/

namespace A255725.P15067677878885737117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287442 (A082743 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255725.P15067677878885737117

/-! ## A255725.P7028834048879533763

`∪[A255726(n+1), A287442(A082743(n))]`
-/

namespace A255725.P7028834048879533763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287442 (A082743 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255725.P7028834048879533763

/-! ## A255725.P11477554563003764452

`A287442(A082743(n))`
-/

namespace A255725.P11477554563003764452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287442 (A082743 n).toNat

end

end A255725.P11477554563003764452

/-!
# A255726: Numbers n = concat(x,y) such that the product x*y | n. No leading zeros in y allowed.

The programs for A255726, there is no canonical definition to state claims against.
-/

/-! ## A255726.P1087069774721163333

`∩[A255725(n+1), A277620(n+1)]`
-/

namespace A255726.P1087069774721163333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255726.P1087069774721163333

/-! ## A255726.P14715295039525290031

`∩[A130176(n+1), A255725(n+1)]`
-/

namespace A255726.P14715295039525290031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255726.P14715295039525290031

/-! ## A255726.P17453620227748522872

`∩[A255725(n+1), A005555(n)]`
-/

namespace A255726.P17453620227748522872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255726.P17453620227748522872

/-!
# A255729: Distinct-digit numbers that are the concatenation of m and prime(m) for some number m.

The programs for A255729, there is no canonical definition to state claims against.
-/

/-! ## A255729.P3377934873475349879

`A045532(A085451(n+1))`
-/

namespace A255729.P3377934873475349879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (A085451 (n + 1)).toNat

end

end A255729.P3377934873475349879

/-! ## A255729.P7186219102678468650

`A045532(∑{d}[A154579(n+1), A061395(#)])`
-/

namespace A255729.P7186219102678468650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A255729.P7186219102678468650

/-! ## A255729.P11521609619568261652

`record[A320485(A045532(n+1))]`
-/

namespace A255729.P11521609619568261652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A045532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255729.P11521609619568261652

/-! ## A255729.P3725883470158402663

`filter[A045532(n+1), A178788(#)]`
-/

namespace A255729.P3725883470158402663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A255729.P3725883470158402663

/-! ## A255729.P16304264889070630823

`record[A320485((n+1)*A039790(n+1)-A117495(n+1))]`
-/

namespace A255729.P16304264889070630823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 ((n + 1 : ℤ) * A039790 (n + 1) - A117495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255729.P16304264889070630823

/-!
# A255732: Rhonda numbers in vigesimal number system.

The programs for A255732, there is no canonical definition to state claims against.
-/

/-! ## A255732.P12590116287705702531

`A291925(A056000(n+7))`
-/

namespace A255732.P12590116287705702531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 7)).toNat

end

end A255732.P12590116287705702531

/-! ## A255732.P6879640343311393842

`A291925(A055998(n+9)-7)`
-/

namespace A255732.P6879640343311393842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055998 (n + 9) - 7).toNat

end

end A255732.P6879640343311393842

/-! ## A255732.P15066273743119447535

`A291925(A000124(n+11)-11)`
-/

namespace A255732.P15066273743119447535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 (n + 11) - 11).toNat

end

end A255732.P15066273743119447535

/-! ## A255732.P6797610480716745495

`A291925(A000217(n+10)+n+1)`
-/

namespace A255732.P6797610480716745495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A255732.P6797610480716745495

/-! ## A255732.P6321824557444647134

`A291925(A167614(n+2)+A004771(n+5))`
-/

namespace A255732.P6321824557444647134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167614 (n + 2) + A004771 (n + 5)).toNat

end

end A255732.P6321824557444647134

/-!
# A255734: Numbers n such that A080719(n) divides n.

The programs for A255734, there is no canonical definition to state claims against.
-/

/-! ## A255734.P12420240393515098352

`record[A331362((n+1)*A089898(n))]`
-/

namespace A255734.P12420240393515098352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 ((n + 1 : ℤ) * A089898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255734.P12420240393515098352

/-! ## A255734.P17373672961685850040

`record[A000188((n+1)*A274206(n+1))]`
-/

namespace A255734.P17373672961685850040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A274206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255734.P17373672961685850040

/-! ## A255734.P12317993566092155637

`lt[A262358(n+1)/4, A000005(n+1)]+1`
-/

namespace A255734.P12317993566092155637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262358 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A255734.P12317993566092155637

/-! ## A255734.P10023355261669872253

`lt[A257297(n), A001222(A222947(n))]`
-/

namespace A255734.P10023355261669872253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A222947 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255734.P10023355261669872253

/-! ## A255734.P6855602674351467665

`lt[A257297(n), A051903(A179052(n))]`
-/

namespace A255734.P6855602674351467665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A179052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255734.P6855602674351467665

/-!
# A255735: Integers that are Rhonda numbers to base 18.

The programs for A255735, there is no canonical definition to state claims against.
-/

/-! ## A255735.P12992218580035212655

`A291925(A056000(n+6)+1)`
-/

namespace A255735.P12992218580035212655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 6) + 1).toNat

end

end A255735.P12992218580035212655

/-! ## A255735.P14051635858959071362

`A291925(A055999(n+7)-3)`
-/

namespace A255735.P14051635858959071362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055999 (n + 7) - 3).toNat

end

end A255735.P14051635858959071362

/-! ## A255735.P12499490550522793467

`A291925(A052905(n+7)-4)`
-/

namespace A255735.P12499490550522793467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 7) - 4).toNat

end

end A255735.P12499490550522793467

/-! ## A255735.P9368924413871725514

`A291925(A000124(n+10)-10)`
-/

namespace A255735.P9368924413871725514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 (n + 10) - 10).toNat

end

end A255735.P9368924413871725514

/-! ## A255735.P6979428897380012547

`A291925(A000096(n+8)+n+2)`
-/

namespace A255735.P6979428897380012547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 8) + (n + 2 : ℤ)).toNat

end

end A255735.P6979428897380012547

/-! ## A255735.P6480422772050285663

`A291925(n+1+A000217(n+9))`
-/

namespace A255735.P6480422772050285663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 ((n + 1 : ℤ) + A000217 (n + 9)).toNat

end

end A255735.P6480422772050285663

/-! ## A255735.P16089615109203934867

`A291925(A167614(n+7)+A005408(n+3))`
-/

namespace A255735.P16089615109203934867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167614 (n + 7) + A005408 (n + 3)).toNat

end

end A255735.P16089615109203934867

/-! ## A255735.P7824438900519731704

`A291925(A055998(n+5)+A008486(n+7))`
-/

namespace A255735.P7824438900519731704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055998 (n + 5) + A008486 (n + 7)).toNat

end

end A255735.P7824438900519731704

/-!
# A255736: Integers that are Rhonda numbers to base 30.

The programs for A255736, there is no canonical definition to state claims against.
-/

/-! ## A255736.P1880483489495523607

`A291925(A167614(n+12)+A008588(n+13))`
-/

namespace A255736.P1880483489495523607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167614 (n + 12) + A008588 (n + 13)).toNat

end

end A255736.P1880483489495523607

/-! ## A255736.P4377590342392023278

`A291925(A112355(n+13)+A008586(n+13))`
-/

namespace A255736.P4377590342392023278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A112355 (n + 13) + A008586 (n + 13)).toNat

end

end A255736.P4377590342392023278

/-!
# A255737: Total number of toothpicks in the toothpick structure of A153000 that are parallel to the initial toothpick, after n odd rounds.

The programs for A255737, there is no canonical definition to state claims against.
-/

/-! ## A255737.P13840489157014590972

`(A162795(n+1)-1)/4`
-/

namespace A255737.P13840489157014590972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162795 (n + 1) - 1 : ℚ) / 4

end

end A255737.P13840489157014590972

/-! ## A255737.P18076408924709283163

`floor(A162795(n+1)/4)`
-/

namespace A255737.P18076408924709283163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162795 (n + 1) : ℚ) / 4⌋

end

end A255737.P18076408924709283163

/-! ## A255737.P12992928201317356431

`floor(A255747(Δ[n²])/4)`
-/

namespace A255737.P12992928201317356431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255747 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4⌋

end

end A255737.P12992928201317356431

/-! ## A255737.P11832787311800408319

`∑[floor(A162793(n+1)/4)]`
-/

namespace A255737.P11832787311800408319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162793 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255737.P11832787311800408319

/-! ## A255737.P17289725719309769705

`∑[ceil(A162777(2*n)/2)]`
-/

namespace A255737.P17289725719309769705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162777 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255737.P17289725719309769705

/-! ## A255737.P12676156300340436461

`∑[floor(A139251(Δ[n²])/4)]`
-/

namespace A255737.P12676156300340436461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255737.P12676156300340436461

/-! ## A255737.P14367359032574030096

`round(A255747(2*n+1)/4)`
-/

namespace A255737.P14367359032574030096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A255747 (2 * n + 1) : ℚ) / 4)

end

end A255737.P14367359032574030096

/-! ## A255737.P16114070198818405858

`floor(∑[A139251(2*n+1)]/4)`
-/

namespace A255737.P16114070198818405858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A255737.P16114070198818405858

/-! ## A255737.P305165042057213772

`∑[A152978(2*n+1)]-A152978(2*n+1)`
-/

namespace A255737.P305165042057213772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152978 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152978 (2 * n + 1)

end

end A255737.P305165042057213772

/-! ## A255737.P1224459034730542528

`∑[A002265(A139251(2*n+1))]`
-/

namespace A255737.P1224459034730542528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A139251 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255737.P1224459034730542528

/-! ## A255737.P11265905101463869907

`A002265(A162795(n+1))`
-/

namespace A255737.P11265905101463869907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A162795 (n + 1)).toNat

end

end A255737.P11265905101463869907

/-! ## A255737.P9105484556388571248

`A002265(∑[A139251(Δ[n²])])`
-/

namespace A255737.P9105484556388571248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255737.P9105484556388571248

/-!
# A255738: a(1) = 1; for n > 1, a(n) = 1*0^{A000120(n-1) - 1}.

The programs for A255738, the canonical program `A255738.P3969788085053868356` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255738 has offset 1).

The definition of A255738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255738.P3969788085053868356

`∏{p}[n, val(#, 2)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A255738

/-- `∏{p}[n, val(#, 2)]` -/
def P3969788085053868356.Spec : Prop :=
  ∀ n, (P3969788085053868356.a n : ℤ) = A255738 (n + 1)

theorem P3969788085053868356.correct : P3969788085053868356.Spec := by
  intro n
  simp only [A255738, Nat.add_sub_cancel]

end A255738

/-! ## A255738.P13544629239391702827

`C(2, ∑{p}[n, #])`
-/

namespace A255738.P13544629239391702827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A255738.P13544629239391702827

namespace A255738

/-- `C(2, ∑{p}[n, #])` -/
def P13544629239391702827.Spec : Prop :=
  ∀ n, (P13544629239391702827.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P13070009291361098745

`∏{p}[n, C(2, #)]`
-/

namespace A255738.P13070009291361098745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p

end

end A255738.P13070009291361098745

namespace A255738

/-- `∏{p}[n, C(2, #)]` -/
def P13070009291361098745.Spec : Prop :=
  ∀ n, (P13070009291361098745.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P5712112688083374192

`char[and(n, -n)]`
-/

namespace A255738.P5712112688083374192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255738.P5712112688083374192

namespace A255738

/-- `char[and(n, -n)]` -/
def P5712112688083374192.Spec : Prop :=
  ∀ n, (P5712112688083374192.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P10211631596843891773

`∏{p}[n, floor(2/#)]`
-/

namespace A255738.P10211631596843891773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊2 / (p : ℚ)⌋

end

end A255738.P10211631596843891773

namespace A255738

/-- `∏{p}[n, floor(2/#)]` -/
def P10211631596843891773.Spec : Prop :=
  ∀ n, P10211631596843891773.a n = A255738 (n + 1)

end A255738

/-! ## A255738.P16933822599121183003

`round(1/∏{p}[n, #])`
-/

namespace A255738.P16933822599121183003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))

end

end A255738.P16933822599121183003

namespace A255738

/-- `round(1/∏{p}[n, #])` -/
def P16933822599121183003.Spec : Prop :=
  ∀ n, P16933822599121183003.a n = A255738 (n + 1)

end A255738

/-! ## A255738.P2365155388616927352

`char[lt[∑{p}[n, #], 3]]`
-/

namespace A255738.P2365155388616927352
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A255738.P2365155388616927352

namespace A255738

/-- `char[lt[∑{p}[n, #], 3]]` -/
def P2365155388616927352.Spec : Prop :=
  ∀ n, (P2365155388616927352.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P4777971301293713496

`char[lt[∏{p}[n, #], 3]]`
-/

namespace A255738.P4777971301293713496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A255738.P4777971301293713496

namespace A255738

/-- `char[lt[∏{p}[n, #], 3]]` -/
def P4777971301293713496.Spec : Prop :=
  ∀ n, (P4777971301293713496.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P6057645631553463539

`C(and(n, -n), n)`
-/

namespace A255738.P6057645631553463539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-(n : ℤ))).toNat n

end

end A255738.P6057645631553463539

namespace A255738

/-- `C(and(n, -n), n)` -/
def P6057645631553463539.Spec : Prop :=
  ∀ n, (P6057645631553463539.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P5770078118543841124

`char[abs(or(n, -n))]`
-/

namespace A255738.P5770078118543841124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255738.P5770078118543841124

namespace A255738

/-- `char[abs(or(n, -n))]` -/
def P5770078118543841124.Spec : Prop :=
  ∀ n, (P5770078118543841124.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P13415741060814439275

`char[-or(n, -n)]`
-/

namespace A255738.P13415741060814439275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255738.P13415741060814439275

namespace A255738

/-- `char[-or(n, -n)]` -/
def P13415741060814439275.Spec : Prop :=
  ∀ n, (P13415741060814439275.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P15429928428534422759

`round(cot(atan(∏{p}[n, #])))`
-/

namespace A255738.P15429928428534422759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)))

end

end A255738.P15429928428534422759

namespace A255738

/-- `round(cot(atan(∏{p}[n, #])))` -/
def P15429928428534422759.Spec : Prop :=
  ∀ n, P15429928428534422759.a n = A255738 (n + 1)

end A255738

/-! ## A255738.P5153712568454480905

`∏{p}[n, #+1]%2`
-/

namespace A255738.P5153712568454480905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) % 2

end

end A255738.P5153712568454480905

namespace A255738

/-- `∏{p}[n, #+1]%2` -/
def P5153712568454480905.Spec : Prop :=
  ∀ n, (P5153712568454480905.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P15189538530195887590

`and(1, ∏{p}[n, #+1])`
-/

namespace A255738.P15189538530195887590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))

end

end A255738.P15189538530195887590

namespace A255738

/-- `and(1, ∏{p}[n, #+1])` -/
def P15189538530195887590.Spec : Prop :=
  ∀ n, (P15189538530195887590.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P9034048449180746584

`char[floor(2^(n-1))]`
-/

namespace A255738.P9034048449180746584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255738.P9034048449180746584

namespace A255738

/-- `char[floor(2^(n-1))]` -/
def P9034048449180746584.Spec : Prop :=
  ∀ n, (P9034048449180746584.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P11383914952729538075

`∏{e}[n, val(2^#, n)]`
-/

namespace A255738.P11383914952729538075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (2 ^ Nat.factorization (f1 n) p) n

end

end A255738.P11383914952729538075

namespace A255738

/-- `∏{e}[n, val(2^#, n)]` -/
def P11383914952729538075.Spec : Prop :=
  ∀ n, (P11383914952729538075.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P11344078046166280898

`C(2^∑{e}[n, #], n)`
-/

namespace A255738.P11344078046166280898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) n

end

end A255738.P11344078046166280898

namespace A255738

/-- `C(2^∑{e}[n, #], n)` -/
def P11344078046166280898.Spec : Prop :=
  ∀ n, (P11344078046166280898.a n : ℤ) = A255738 (n + 1)

end A255738

/-! ## A255738.P14185554907776366732

`∏{e}[n, C(2^#, n)]`
-/

namespace A255738.P14185554907776366732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (2 ^ Nat.factorization (f1 n) p) n

end

end A255738.P14185554907776366732

namespace A255738

/-- `∏{e}[n, C(2^#, n)]` -/
def P14185554907776366732.Spec : Prop :=
  ∀ n, (P14185554907776366732.a n : ℤ) = A255738 (n + 1)

end A255738

/-!
# A255739: Indices of nontrivial zeros of Riemann zeta function whose imaginary part sets a record for the absolute minimal difference from an integer.

The programs for A255739, there is no canonical definition to state claims against.
-/

/-! ## A255739.P3193783754077973157

`A303595(A277501(n)+1)`
-/

namespace A255739.P3193783754077973157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303595 (A277501 n + 1).toNat

end

end A255739.P3193783754077973157

/-! ## A255739.P5616705952436693404

`A331590(A215709(n)+A007895(n))`
-/

namespace A255739.P5616705952436693404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A215709 n + A007895 n).toNat

end

end A255739.P5616705952436693404

/-!
# A255740: Square array read by antidiagonals upwards: T(n,1) = 1; for k > 1, T(n,k) = (n-1)*(n-2)^(A000120(k-1)-1) with n >= 1.

The programs for A255740, there is no canonical definition to state claims against.
-/

/-! ## A255740.P11601112971563246457

`A244003(n)-A007814(A057004(n+1))`
-/

namespace A255740.P11601112971563246457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244003 n - A007814 (A057004 (n + 1)).toNat

end

end A255740.P11601112971563246457

/-! ## A255740.P15608894550578884786

`A256140(n)-A007814(A057004(n+1))`
-/

namespace A255740.P15608894550578884786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256140 n - A007814 (A057004 (n + 1)).toNat

end

end A255740.P15608894550578884786

/-! ## A255740.P15178945311989383093

`A321391(n)-A007814(A057004(n+1))`
-/

namespace A255740.P15178945311989383093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 n - A007814 (A057004 (n + 1)).toNat

end

end A255740.P15178945311989383093

/-! ## A255740.P9496423769133480432

`gcd(A185284(A051612(n+1)), A292131(n))`
-/

namespace A255740.P9496423769133480432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (A051612 (n + 1)).toNat) (A292131 n)

end

end A255740.P9496423769133480432

/-! ## A255740.P17980352653527529063

`A144464(n+1)-A147781(A313738(n))`
-/

namespace A255740.P17980352653527529063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 (n + 1) - A147781 (A313738 n).toNat

end

end A255740.P17980352653527529063

/-!
# A255741: Square array read by antidiagonals upwards: T(n,k), n>=1, k>=1, in which row n lists the partial sums of the n-th row of the square array of A255740.

The programs for A255741, there is no canonical definition to state claims against.
-/

/-! ## A255741.P7658489501922010780

`A201052(A139622(n+1))`
-/

namespace A255741.P7658489501922010780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A139622 (n + 1)).toNat

end

end A255741.P7658489501922010780

/-! ## A255741.P7434206605056068280

`A244250(A015754(n))+A057893(n)`
-/

namespace A255741.P7434206605056068280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (A015754 n).toNat + A057893 n

end

end A255741.P7434206605056068280

/-! ## A255741.P6751788989451481238

`A030190(A288972(n))+A004247(n)`
-/

namespace A255741.P6751788989451481238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A288972 n).toNat + A004247 n

end

end A255741.P6751788989451481238

/-! ## A255741.P4454724709403784383

`A067138(n)+A030190(A288972(n))`
-/

namespace A255741.P4454724709403784383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 n + A030190 (A288972 n).toNat

end

end A255741.P4454724709403784383

/-! ## A255741.P2078796361697568282

`A081604(A112500(n)*A124279(n))`
-/

namespace A255741.P2078796361697568282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A112500 n * A124279 n).toNat

end

end A255741.P2078796361697568282

/-!
# A255742: Integers setting a record for the absolute minimal difference from the imaginary part of a nontrivial zero of the Riemann zeta function.

The programs for A255742, there is no canonical definition to state claims against.
-/

/-! ## A255742.P11743062193426218901

`A002410(A255739(n+1))`
-/

namespace A255742.P11743062193426218901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (A255739 (n + 1)).toNat

end

end A255742.P11743062193426218901

/-!
# A255743: a(1) = 1; for n > 1, a(n) = 9*8^{A000120(n-1)-1}.

The programs for A255743, the canonical program `A255743.P1815308521634170027` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255743 has offset 1).

The definition of A255743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255743.P1815308521634170027

`A003951(A000120(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A255743

/-- `A003951(A000120(n))` -/
def P1815308521634170027.Spec : Prop :=
  ∀ n, P1815308521634170027.a n = A255743 (n + 1)

theorem P1815308521634170027.correct : P1815308521634170027.Spec := by
  intro n
  simp only [A255743, Nat.add_sub_cancel]

end A255743

/-! ## A255743.P5697888593866568224

`A065959(A001316(n))`
-/

namespace A255743.P5697888593866568224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (A001316 n).toNat

end

end A255743.P5697888593866568224

namespace A255743

/-- `A065959(A001316(n))` -/
def P5697888593866568224.Spec : Prop :=
  ∀ n, P5697888593866568224.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P9882363466818226250

`A065959(sqrt(A102376(n)))`
-/

namespace A255743.P9882363466818226250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (SequenceMachineLib.roundAway (Real.sqrt (A102376 n : ℝ))).toNat

end

end A255743.P9882363466818226250

namespace A255743

/-- `A065959(sqrt(A102376(n)))` -/
def P9882363466818226250.Spec : Prop :=
  ∀ n, P9882363466818226250.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P18077570739002655166

`A003951(∑[A088705(n)])`
-/

namespace A255743.P18077570739002655166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255743.P18077570739002655166

namespace A255743

/-- `A003951(∑[A088705(n)])` -/
def P18077570739002655166.Spec : Prop :=
  ∀ n, P18077570739002655166.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P18202046000925674667

`A167658(∑[A088705(n)])`
-/

namespace A255743.P18202046000925674667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255743.P18202046000925674667

namespace A255743

/-- `A167658(∑[A088705(n)])` -/
def P18202046000925674667.Spec : Prop :=
  ∀ n, P18202046000925674667.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P1562341081332449620

`A065959(A038573(n)+1)`
-/

namespace A255743.P1562341081332449620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (A038573 n + 1).toNat

end

end A255743.P1562341081332449620

namespace A255743

/-- `A065959(A038573(n)+1)` -/
def P1562341081332449620.Spec : Prop :=
  ∀ n, P1562341081332449620.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P13281372106634163236

`A151787(n+1)²*A011782(A000120(n))`
-/

namespace A255743.P13281372106634163236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1) ^ 2 * A011782 (A000120 n).toNat

end

end A255743.P13281372106634163236

namespace A255743

/-- `A151787(n+1)²*A011782(A000120(n))` -/
def P13281372106634163236.Spec : Prop :=
  ∀ n, P13281372106634163236.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P2730883902112754241

`A033045(A151787(n+1))`
-/

namespace A255743.P2730883902112754241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A151787 (n + 1)).toNat

end

end A255743.P2730883902112754241

namespace A255743

/-- `A033045(A151787(n+1))` -/
def P2730883902112754241.Spec : Prop :=
  ∀ n, P2730883902112754241.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P1743990130992140703

`A034828(2*A001316(n))+A034828(A001316(n))`
-/

namespace A255743.P1743990130992140703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A001316 n).toNat + A034828 (A001316 n).toNat

end

end A255743.P1743990130992140703

namespace A255743

/-- `A034828(2*A001316(n))+A034828(A001316(n))` -/
def P1743990130992140703.Spec : Prop :=
  ∀ n, P1743990130992140703.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P11402256138135510993

`A034828(A001316(n+1+n))+A034828(A001316(n))`
-/

namespace A255743.P11402256138135510993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A001316 (n + 1 + n)).toNat + A034828 (A001316 n).toNat

end

end A255743.P11402256138135510993

namespace A255743

/-- `A034828(A001316(n+1+n))+A034828(A001316(n))` -/
def P11402256138135510993.Spec : Prop :=
  ∀ n, P11402256138135510993.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P16904110676218386511

`A109900(A038573(2*n+1))+A109900(A038573(n))`
-/

namespace A255743.P16904110676218386511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (A038573 (2 * n + 1)).toNat + A109900 (A038573 n).toNat

end

end A255743.P16904110676218386511

namespace A255743

/-- `A109900(A038573(2*n+1))+A109900(A038573(n))` -/
def P16904110676218386511.Spec : Prop :=
  ∀ n, P16904110676218386511.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P9534741742433830779

`A050466(A151787(n+1))+A050466(A151787(2*(n+1)))`
-/

namespace A255743.P9534741742433830779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050466 (A151787 (n + 1)).toNat + A050466 (A151787 (2 * (n + 1))).toNat

end

end A255743.P9534741742433830779

namespace A255743

/-- `A050466(A151787(n+1))+A050466(A151787(2*(n+1)))` -/
def P9534741742433830779.Spec : Prop :=
  ∀ n, P9534741742433830779.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P2026358599379240501

`A037456(A147582(n+1))`
-/

namespace A255743.P2026358599379240501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A147582 (n + 1)).toNat

end

end A255743.P2026358599379240501

namespace A255743

/-- `A037456(A147582(n+1))` -/
def P2026358599379240501.Spec : Prop :=
  ∀ n, P2026358599379240501.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P1589071195851363442

`A037462(A151789(n+1))`
-/

namespace A255743.P1589071195851363442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A151789 (n + 1)).toNat

end

end A255743.P1589071195851363442

namespace A255743

/-- `A037462(A151789(n+1))` -/
def P1589071195851363442.Spec : Prop :=
  ∀ n, P1589071195851363442.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P137546824259020066

`A151787(n+1)*A151787(A151789(n+1))`
-/

namespace A255743.P137546824259020066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1) * A151787 (A151789 (n + 1)).toNat

end

end A255743.P137546824259020066

namespace A255743

/-- `A151787(n+1)*A151787(A151789(n+1))` -/
def P137546824259020066.Spec : Prop :=
  ∀ n, P137546824259020066.a n = A255743 (n + 1)

end A255743

/-! ## A255743.P10122963506200244739

`A151787(n+1)*A151787(A151787(n+1)²)`
-/

namespace A255743.P10122963506200244739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1) * A151787 (A151787 (n + 1) ^ 2).toNat

end

end A255743.P10122963506200244739

namespace A255743

/-- `A151787(n+1)*A151787(A151787(n+1)²)` -/
def P10122963506200244739.Spec : Prop :=
  ∀ n, P10122963506200244739.a n = A255743 (n + 1)

end A255743

/-!
# A255744: a(1) = 1; for n > 1, a(n) = 10*9^(A000120(n-1)-1).

The programs for A255744, the canonical program `A255744.P326173307851122901` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255744 has offset 1).

The definition of A255744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255744.P326173307851122901

`A003952(A000120(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A255744

/-- `A003952(A000120(n))` -/
def P326173307851122901.Spec : Prop :=
  ∀ n, P326173307851122901.a n = A255744 (n + 1)

theorem P326173307851122901.correct : P326173307851122901.Spec := by
  intro n
  simp only [A255744, Nat.add_sub_cancel]

end A255744

/-! ## A255744.P17831656700177400624

`A003952(∑{digits}[A007088(n), #])`
-/

namespace A255744.P17831656700177400624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A255744.P17831656700177400624

namespace A255744

/-- `A003952(∑{digits}[A007088(n), #])` -/
def P17831656700177400624.Spec : Prop :=
  ∀ n, P17831656700177400624.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P17620931989415918475

`A033046(A151787(n+1))`
-/

namespace A255744.P17620931989415918475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A151787 (n + 1)).toNat

end

end A255744.P17620931989415918475

namespace A255744

/-- `A033046(A151787(n+1))` -/
def P17620931989415918475.Spec : Prop :=
  ∀ n, P17620931989415918475.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P5180666110456625965

`A065958(A048883(n))`
-/

namespace A255744.P5180666110456625965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (A048883 n).toNat

end

end A255744.P5180666110456625965

namespace A255744

/-- `A065958(A048883(n))` -/
def P5180666110456625965.Spec : Prop :=
  ∀ n, P5180666110456625965.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P1327360757448316339

`A037314(A147582(n+1))`
-/

namespace A255744.P1327360757448316339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A147582 (n + 1)).toNat

end

end A255744.P1327360757448316339

namespace A255744

/-- `A037314(A147582(n+1))` -/
def P1327360757448316339.Spec : Prop :=
  ∀ n, P1327360757448316339.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P15284099596669611612

`A065958(3^A000120(n))`
-/

namespace A255744.P15284099596669611612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A255744.P15284099596669611612

namespace A255744

/-- `A065958(3^A000120(n))` -/
def P15284099596669611612.Spec : Prop :=
  ∀ n, P15284099596669611612.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P11243073828286899658

`A332449(A001316(n)²)`
-/

namespace A255744.P11243073828286899658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A001316 n ^ 2).toNat

end

end A255744.P11243073828286899658

namespace A255744

/-- `A332449(A001316(n)²)` -/
def P11243073828286899658.Spec : Prop :=
  ∀ n, P11243073828286899658.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P5803205556763562163

`A332449(A001316(n)^2)`
-/

namespace A255744.P5803205556763562163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A001316 n ^ 2).toNat

end

end A255744.P5803205556763562163

namespace A255744

/-- `A332449(A001316(n)^2)` -/
def P5803205556763562163.Spec : Prop :=
  ∀ n, P5803205556763562163.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P4929882156540592375

`A332449(A000079(A000120(n))²)`
-/

namespace A255744.P4929882156540592375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A000079 (A000120 n).toNat ^ 2).toNat

end

end A255744.P4929882156540592375

namespace A255744

/-- `A332449(A000079(A000120(n))²)` -/
def P4929882156540592375.Spec : Prop :=
  ∀ n, P4929882156540592375.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P3898460866685356195

`A332449(A001316(2*n)*A001316(n))`
-/

namespace A255744.P3898460866685356195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A001316 (2 * n) * A001316 n).toNat

end

end A255744.P3898460866685356195

namespace A255744

/-- `A332449(A001316(2*n)*A001316(n))` -/
def P3898460866685356195.Spec : Prop :=
  ∀ n, P3898460866685356195.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P13540466501214976447

`A266727(A102376(n))`
-/

namespace A255744.P13540466501214976447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A102376 n).toNat

end

end A255744.P13540466501214976447

namespace A255744

/-- `A266727(A102376(n))` -/
def P13540466501214976447.Spec : Prop :=
  ∀ n, P13540466501214976447.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P1864226233682446878

`A266727(A001316(n)²)`
-/

namespace A255744.P1864226233682446878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A001316 n ^ 2).toNat

end

end A255744.P1864226233682446878

namespace A255744

/-- `A266727(A001316(n)²)` -/
def P1864226233682446878.Spec : Prop :=
  ∀ n, P1864226233682446878.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P2543692267361788485

`A037463(A151789(n+1))`
-/

namespace A255744.P2543692267361788485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A151789 (n + 1)).toNat

end

end A255744.P2543692267361788485

namespace A255744

/-- `A037463(A151789(n+1))` -/
def P2543692267361788485.Spec : Prop :=
  ∀ n, P2543692267361788485.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P17359525234581649275

`A266727(A177241(n+1))`
-/

namespace A255744.P17359525234581649275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A177241 (n + 1)).toNat

end

end A255744.P17359525234581649275

namespace A255744

/-- `A266727(A177241(n+1))` -/
def P17359525234581649275.Spec : Prop :=
  ∀ n, P17359525234581649275.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P14097941639564681425

`A266727(A000695(A001316(2*n)))`
-/

namespace A255744.P14097941639564681425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A000695 (A001316 (2 * n)).toNat).toNat

end

end A255744.P14097941639564681425

namespace A255744

/-- `A266727(A000695(A001316(2*n)))` -/
def P14097941639564681425.Spec : Prop :=
  ∀ n, P14097941639564681425.a n = A255744 (n + 1)

end A255744

/-! ## A255744.P2599189247237505312

`A266727(A001316(2*n)*A001316(n))`
-/

namespace A255744.P2599189247237505312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A001316 (2 * n) * A001316 n).toNat

end

end A255744.P2599189247237505312

namespace A255744

/-- `A266727(A001316(2*n)*A001316(n))` -/
def P2599189247237505312.Spec : Prop :=
  ∀ n, P2599189247237505312.a n = A255744 (n + 1)

end A255744

/-!
# A255745: a(1) = 1; for n > 1, a(n) = 11*10^{A000120(n-1)-1}.

The programs for A255745, the canonical program `A255745.P6930733683946069684` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255745 has offset 1).

The definition of A255745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A151787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255745.P6930733683946069684

`A007088(A151787(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A255745

/-- `A007088(A151787(n+1))` -/
def P6930733683946069684.Spec : Prop :=
  ∀ n, P6930733683946069684.a n = A255745 (n + 1)

theorem P6930733683946069684.correct : P6930733683946069684.Spec := by
  intro n
  simp only [A255745, Nat.add_sub_cancel]

end A255745

/-! ## A255745.P9709635679774335630

`10^and(1, n)*a(floor(n/2))` with `a(0)=1, a(1)=11`
-/

namespace A255745.P9709635679774335630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  10 ^ Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A255745.P9709635679774335630

namespace A255745

/-- `10^and(1, n)*a(floor(n/2))` -/
def P9709635679774335630.Spec : Prop :=
  ∀ n, (P9709635679774335630.a n : ℤ) = A255745 (n + 1)

end A255745

/-! ## A255745.P13546961126878174089

`round(5/acot(2*a(and(n, n-1))))` with `a(0)=1`
-/

namespace A255745.P13546961126878174089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (5 / SequenceMachineLib.acot (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ))

end

end A255745.P13546961126878174089

namespace A255745

/-- `round(5/acot(2*a(and(n, n-1))))` -/
def P13546961126878174089.Spec : Prop :=
  ∀ n, P13546961126878174089.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P8327095894680071474

`char[2^n]+10*a(and(n, n-1))` with `a(0)=1`
-/

namespace A255745.P8327095894680071474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 10 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A255745.P8327095894680071474

namespace A255745

/-- `char[2^n]+10*a(and(n, n-1))` -/
def P8327095894680071474.Spec : Prop :=
  ∀ n, (P8327095894680071474.a n : ℤ) = A255745 (n + 1)

end A255745

/-! ## A255745.P9573117255758640045

`or(10*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A255745.P9573117255758640045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A255745.P9573117255758640045

namespace A255745

/-- `or(10*a(and(n, n-1)), char[2^n])` -/
def P9573117255758640045.Spec : Prop :=
  ∀ n, (P9573117255758640045.a n : ℤ) = A255745 (n + 1)

end A255745

/-! ## A255745.P7816305753700689717

`xor(10*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A255745.P7816305753700689717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (10 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A255745.P7816305753700689717

namespace A255745

/-- `xor(10*a(and(n, n-1)), char[2^n])` -/
def P7816305753700689717.Spec : Prop :=
  ∀ n, (P7816305753700689717.a n : ℤ) = A255745 (n + 1)

end A255745

/-! ## A255745.P2475655176246446588

`A003953(A000120(n))`
-/

namespace A255745.P2475655176246446588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 (A000120 n).toNat

end

end A255745.P2475655176246446588

namespace A255745

/-- `A003953(A000120(n))` -/
def P2475655176246446588.Spec : Prop :=
  ∀ n, P2475655176246446588.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P4994860870062157556

`A014550(A001316(n))`
-/

namespace A255745.P4994860870062157556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A001316 n).toNat

end

end A255745.P4994860870062157556

namespace A255745

/-- `A014550(A001316(n))` -/
def P4994860870062157556.Spec : Prop :=
  ∀ n, P4994860870062157556.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P9928650677814417939

`A014550(A038573(n)+1)`
-/

namespace A255745.P9928650677814417939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A038573 n + 1).toNat

end

end A255745.P9928650677814417939

namespace A255745

/-- `A014550(A038573(n)+1)` -/
def P9928650677814417939.Spec : Prop :=
  ∀ n, P9928650677814417939.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P14710288530045893988

`A265747(A167275(n))`
-/

namespace A255745.P14710288530045893988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 (A167275 n).toNat

end

end A255745.P14710288530045893988

namespace A255745

/-- `A265747(A167275(n))` -/
def P14710288530045893988.Spec : Prop :=
  ∀ n, P14710288530045893988.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P8967576324472513851

`A014550(A131577(A000120(2*n+1)))`
-/

namespace A255745.P8967576324472513851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A131577 (A000120 (2 * n + 1)).toNat).toNat

end

end A255745.P8967576324472513851

namespace A255745

/-- `A014550(A131577(A000120(2*n+1)))` -/
def P8967576324472513851.Spec : Prop :=
  ∀ n, P8967576324472513851.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P2153590105836793273

`A169683(A160723(n+1))`
-/

namespace A255745.P2153590105836793273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 (A160723 (n + 1)).toNat

end

end A255745.P2153590105836793273

namespace A255745

/-- `A169683(A160723(n+1))` -/
def P2153590105836793273.Spec : Prop :=
  ∀ n, P2153590105836793273.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P13478816198308151635

`A004283(A147582(n+1))`
-/

namespace A255745.P13478816198308151635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (A147582 (n + 1)).toNat

end

end A255745.P13478816198308151635

namespace A255745

/-- `A004283(A147582(n+1))` -/
def P13478816198308151635.Spec : Prop :=
  ∀ n, P13478816198308151635.a n = A255745 (n + 1)

end A255745

/-! ## A255745.P5684194258545900410

`A004284(A151789(n+1))`
-/

namespace A255745.P5684194258545900410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004284 (A151789 (n + 1)).toNat

end

end A255745.P5684194258545900410

namespace A255745

/-- `A004284(A151789(n+1))` -/
def P5684194258545900410.Spec : Prop :=
  ∀ n, P5684194258545900410.a n = A255745 (n + 1)

end A255745

/-!
# A255746: Squarefree semiprimes n such that n+4 is also a squarefree semiprime.

The programs for A255746, the canonical program `A255746.P8387733600531438095` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255746 has offset 1).

The definition of A255746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255746.P8387733600531438095

`∩[A175304(n+1), A175648(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A255746

/-- `∩[A175304(n+1), A175648(n+1)]` -/
def P8387733600531438095.Spec : Prop :=
  ∀ n, (P8387733600531438095.a n : ℤ) = A255746 (n + 1)

theorem P8387733600531438095.correct : P8387733600531438095.Spec := by
  intro n
  simp only [A255746, Nat.add_sub_cancel]

end A255746

/-! ## A255746.P16480517879583640220

`∩[A175648(n+1), A282843(n+1)]`
-/

namespace A255746.P16480517879583640220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255746.P16480517879583640220

namespace A255746

/-- `∩[A175648(n+1), A282843(n+1)]` -/
def P16480517879583640220.Spec : Prop :=
  ∀ n, (P16480517879583640220.a n : ℤ) = A255746 (n + 1)

end A255746

/-! ## A255746.P15151847536796333740

`eq[61, A286480(n+1)]+1`
-/

namespace A255746.P15151847536796333740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255746.P15151847536796333740

namespace A255746

/-- `eq[61, A286480(n+1)]+1` -/
def P15151847536796333740.Spec : Prop :=
  ∀ n, (P15151847536796333740.a n : ℤ) = A255746 (n + 1)

end A255746

/-! ## A255746.P5220184745022526772

`eq[A077462(n), A306653(A020705(n))]`
-/

namespace A255746.P5220184745022526772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A020705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255746.P5220184745022526772

namespace A255746

/-- `eq[A077462(n), A306653(A020705(n))]` -/
def P5220184745022526772.Spec : Prop :=
  ∀ n, (P5220184745022526772.a n : ℤ) = A255746 (n + 1)

end A255746

/-! ## A255746.P10081444401529609739

`eq[A074206(n)², A007425(n+4)]`
-/

namespace A255746.P10081444401529609739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255746.P10081444401529609739

namespace A255746

/-- `eq[A074206(n)², A007425(n+4)]` -/
def P10081444401529609739.Spec : Prop :=
  ∀ n, (P10081444401529609739.a n : ℤ) = A255746 (n + 1)

end A255746

/-! ## A255746.P8027182390414798851

`∩[A006881(n+1), A049820(A006881(n+1))]`
-/

namespace A255746.P8027182390414798851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A006881 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255746.P8027182390414798851

namespace A255746

/-- `∩[A006881(n+1), A049820(A006881(n+1))]` -/
def P8027182390414798851.Spec : Prop :=
  ∀ n, (P8027182390414798851.a n : ℤ) = A255746 (n + 1)

end A255746

/-! ## A255746.P17745674977477259755

`∩[A175304(n+1), A175634(n+1)]`
-/

namespace A255746.P17745674977477259755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255746.P17745674977477259755

namespace A255746

/-- `∩[A175304(n+1), A175634(n+1)]` -/
def P17745674977477259755.Spec : Prop :=
  ∀ n, (P17745674977477259755.a n : ℤ) = A255746 (n + 1)

end A255746

/-! ## A255746.P2928361568356136235

`eq[A074206(n+4), A249129(A074206(n))]`
-/

namespace A255746.P2928361568356136235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249129 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255746.P2928361568356136235

namespace A255746

/-- `eq[A074206(n+4), A249129(A074206(n))]` -/
def P2928361568356136235.Spec : Prop :=
  ∀ n, (P2928361568356136235.a n : ℤ) = A255746 (n + 1)

end A255746

/-!
# A255747: Partial sums of A160552.

The programs for A255747, there is no canonical definition to state claims against.
-/

/-! ## A255747.P11495103665497984604

`∑[A160552(n)]`
-/

namespace A255747.P11495103665497984604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P11495103665497984604

/-! ## A255747.P15165646820681984180

`floor(∑[A151568(n)/2])`
-/

namespace A255747.P15165646820681984180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151568 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A255747.P15165646820681984180

/-! ## A255747.P11966763444681865817

`A139250(n)-a(n-1)` with `a(0)=0`
-/

namespace A255747.P11966763444681865817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139250 n - a (n - 1)

end

end A255747.P11966763444681865817

/-! ## A255747.P16834175421225337272

`A139251(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A255747.P16834175421225337272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A139251 n + a (n - 2)

end

end A255747.P16834175421225337272

/-! ## A255747.P10091070438414981774

`A160164(n)/2-a(n-1)` with `a(0)=0`
-/

namespace A255747.P10091070438414981774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A160164 n : ℚ) / 2 - a (n - 1)

end

end A255747.P10091070438414981774

/-! ## A255747.P9132175312837816383

`∑[A151569(n)-A151568(n)]`
-/

namespace A255747.P9132175312837816383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A151568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P9132175312837816383

/-! ## A255747.P9880074601865046080

`∑[A151568(n)-A151704(n)]`
-/

namespace A255747.P9880074601865046080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n - A151704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P9880074601865046080

/-! ## A255747.P11563704490184180237

`A246336(n)-A139250(n+1)`
-/

namespace A255747.P11563704490184180237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n - A139250 (n + 1)

end

end A255747.P11563704490184180237

/-! ## A255747.P3696251450615519484

`(A160552(n)+A139250(n))/2`
-/

namespace A255747.P3696251450615519484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160552 n + A139250 n : ℚ) / 2

end

end A255747.P3696251450615519484

/-! ## A255747.P2717721607157110789

`abs(∑[A033999(n)*A139250(n)])`
-/

namespace A255747.P2717721607157110789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A255747.P2717721607157110789

/-! ## A255747.P18264279004555100037

`A160164(n+1)-(A246336(n)+A160552(n+1))`
-/

namespace A255747.P18264279004555100037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (n + 1) - (A246336 n + A160552 (n + 1))

end

end A255747.P18264279004555100037

/-! ## A255747.P7924970169270522042

`∑[A266529(Δ[n²])]`
-/

namespace A255747.P7924970169270522042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P7924970169270522042

/-! ## A255747.P518145906688989759

`A266530(2*(n+1))/2`
-/

namespace A255747.P518145906688989759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266530 (2 * (n + 1)) : ℚ) / 2

end

end A255747.P518145906688989759

/-! ## A255747.P17641276440463295250

`1/2*A266530(A103517(n))`
-/

namespace A255747.P17641276440463295250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A266530 (A103517 n).toNat : ℚ)

end

end A255747.P17641276440463295250

/-! ## A255747.P15287736301788576236

`∑[A266530(2*(n+1))-A266530(2*n+1)]`
-/

namespace A255747.P15287736301788576236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) - A266530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P15287736301788576236

/-! ## A255747.P8192882453899328155

`A246336(n)-A266530(2*n+3)`
-/

namespace A255747.P8192882453899328155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n - A266530 (2 * n + 3)

end

end A255747.P8192882453899328155

/-! ## A255747.P4552075904352477176

`(∑[A169708(n)]-1)/4`
-/

namespace A255747.P4552075904352477176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169708 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 4

end

end A255747.P4552075904352477176

/-! ## A255747.P6844810393799035793

`floor(A169707(n+1)/4)`
-/

namespace A255747.P6844810393799035793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169707 (n + 1) : ℚ) / 4⌋

end

end A255747.P6844810393799035793

/-! ## A255747.P9210651693818322902

`∑[A026741(A266529(2*(n+1)))]`
-/

namespace A255747.P9210651693818322902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A266529 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P9210651693818322902

/-! ## A255747.P17527276083404753595

`∑[A255049(n)/2]`
-/

namespace A255747.P17527276083404753595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255049 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255747.P17527276083404753595

/-!
# A255748: Total number of ON states after n generations of cellular automaton based on triangles in a 60-degree wedge (see Comments lines for definition).

The programs for A255748, the canonical program `A255748.P2587341688457865238` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255748 has offset 1).

The definition of A255748 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255748.P14621484768438346779

`A256266(n+1)/6`
-/

namespace A255748.P14621484768438346779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256266 (n + 1) : ℚ) / 6

end

end A255748.P14621484768438346779

namespace A255748

/-- `A256266(n+1)/6` -/
def P14621484768438346779.Spec : Prop :=
  ∀ n, P14621484768438346779.a n = (A255748 (n + 1) : ℚ)

end A255748

/-! ## A255748.P2587341688457865238

`2*A063915(n)-A000217(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A255748

/-- `2*A063915(n)-A000217(n+1)` -/
def P2587341688457865238.Spec : Prop :=
  ∀ n, P2587341688457865238.a n = A255748 (n + 1)

theorem P2587341688457865238.correct : P2587341688457865238.Spec := by
  intro n
  simp only [A255748, Nat.add_sub_cancel]

end A255748

/-! ## A255748.P9777979701590500101

`∑[abs(or(n+1, 1-a(n-1)))]` with `a(0)=1`
-/

namespace A255748.P9777979701590500101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |Int.lor (n + 1 : ℤ) (1 - f1 (n - 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P9777979701590500101

namespace A255748

/-- `∑[abs(or(n+1, 1-a(n-1)))]` -/
def P9777979701590500101.Spec : Prop :=
  ∀ n, P9777979701590500101.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P11904262459060619122

`∑[∑[C(2^val(n+1, 2), n)]-n]`
-/

namespace A255748.P11904262459060619122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ SequenceMachineLib.valuation (n + 1) 2) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P11904262459060619122

namespace A255748

/-- `∑[∑[C(2^val(n+1, 2), n)]-n]` -/
def P11904262459060619122.Spec : Prop :=
  ∀ n, P11904262459060619122.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P15875409262379874180

`∑[or(n+1, a(n-1))]-∑[n]` with `a(0)=1`
-/

namespace A255748.P15875409262379874180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor (n + 1) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A255748.P15875409262379874180

namespace A255748

/-- `∑[or(n+1, a(n-1))]-∑[n]` -/
def P15875409262379874180.Spec : Prop :=
  ∀ n, P15875409262379874180.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P14284604457325213289

`∑[∑[C(and(n+1, 2*n), n)]-n]`
-/

namespace A255748.P14284604457325213289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P14284604457325213289

namespace A255748

/-- `∑[∑[C(and(n+1, 2*n), n)]-n]` -/
def P14284604457325213289.Spec : Prop :=
  ∀ n, P14284604457325213289.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P9243033521283823395

`∑[∑[1-Δ[(a(n-1)+2)%n]]]` with `a(0)=0`
-/

namespace A255748.P9243033521283823395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f3 =>
  (f3 (n - 1) + 2) % n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P9243033521283823395

namespace A255748

/-- `∑[∑[1-Δ[(a(n-1)+2)%n]]]` -/
def P9243033521283823395.Spec : Prop :=
  ∀ n, P9243033521283823395.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P2540598934002918396

`∑[(a(n-1)+n)%(n+1)]+n` with `a(0)=1, a(1)=1`
-/

namespace A255748.P2540598934002918396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (f1 (n - 1) + n) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A255748.P2540598934002918396

namespace A255748

/-- `∑[(a(n-1)+n)%(n+1)]+n` -/
def P2540598934002918396.Spec : Prop :=
  ∀ n, (P2540598934002918396.a n : ℤ) = A255748 (n + 1)

end A255748

/-! ## A255748.P17627872208181361440

`∑[A080079(n+1)]`
-/

namespace A255748.P17627872208181361440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P17627872208181361440

namespace A255748

/-- `∑[A080079(n+1)]` -/
def P17627872208181361440.Spec : Prop :=
  ∀ n, P17627872208181361440.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P8847919116025682076

`∑[∑[A099894(n)]-n]`
-/

namespace A255748.P8847919116025682076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P8847919116025682076

namespace A255748

/-- `∑[∑[A099894(n)]-n]` -/
def P8847919116025682076.Spec : Prop :=
  ∀ n, P8847919116025682076.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P6940648942087549184

`∑[A035327(n+1)+1]`
-/

namespace A255748.P6940648942087549184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P6940648942087549184

namespace A255748

/-- `∑[A035327(n+1)+1]` -/
def P6940648942087549184.Spec : Prop :=
  ∀ n, P6940648942087549184.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P14376116094638383816

`∑[A003817(n+1)-n]`
-/

namespace A255748.P14376116094638383816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P14376116094638383816

namespace A255748

/-- `∑[A003817(n+1)-n]` -/
def P14376116094638383816.Spec : Prop :=
  ∀ n, P14376116094638383816.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P4049011692667529548

`∑[∑[A048298(n+1)]-n]`
-/

namespace A255748.P4049011692667529548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P4049011692667529548

namespace A255748

/-- `∑[∑[A048298(n+1)]-n]` -/
def P4049011692667529548.Spec : Prop :=
  ∀ n, P4049011692667529548.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P16773979676532146795

`∑[n+2-A006257(n+1)]`
-/

namespace A255748.P16773979676532146795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P16773979676532146795

namespace A255748

/-- `∑[n+2-A006257(n+1)]` -/
def P16773979676532146795.Spec : Prop :=
  ∀ n, P16773979676532146795.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P5158515263915367669

`∑[A206332(n+1)]-(n+1)²`
-/

namespace A255748.P5158515263915367669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A255748.P5158515263915367669

namespace A255748

/-- `∑[A206332(n+1)]-(n+1)²` -/
def P5158515263915367669.Spec : Prop :=
  ∀ n, P5158515263915367669.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P5736793620698284537

`∑[∑[A135416(2*n+1)]-n]`
-/

namespace A255748.P5736793620698284537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P5736793620698284537

namespace A255748

/-- `∑[∑[A135416(2*n+1)]-n]` -/
def P5736793620698284537.Spec : Prop :=
  ∀ n, P5736793620698284537.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P18225027221290011035

`∑[∑[A349394(2*(n+1))]-n]`
-/

namespace A255748.P18225027221290011035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P18225027221290011035

namespace A255748

/-- `∑[∑[A349394(2*(n+1))]-n]` -/
def P18225027221290011035.Spec : Prop :=
  ∀ n, P18225027221290011035.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P11808397903225008508

`∑[A000203(2^floor(log2(n+1)))-n]`
-/

namespace A255748.P11808397903225008508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ Nat.log 2 (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P11808397903225008508

namespace A255748

/-- `∑[A000203(2^floor(log2(n+1)))-n]` -/
def P11808397903225008508.Spec : Prop :=
  ∀ n, P11808397903225008508.a n = A255748 (n + 1)

end A255748

/-! ## A255748.P17094746759370525302

`∑[∑{d}[A053644(n+1), #]%(n+1)+1]`
-/

namespace A255748.P17094746759370525302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n).natAbs, d) % (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P17094746759370525302

namespace A255748

/-- `∑[∑{d}[A053644(n+1), #]%(n+1)+1]` -/
def P17094746759370525302.Spec : Prop :=
  ∀ n, (P17094746759370525302.a n : ℤ) = A255748 (n + 1)

end A255748

/-! ## A255748.P2152449919181571167

`∑[A000225(∑[A036987(n)])-n]`
-/

namespace A255748.P2152449919181571167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255748.P2152449919181571167

namespace A255748

/-- `∑[A000225(∑[A036987(n)])-n]` -/
def P2152449919181571167.Spec : Prop :=
  ∀ n, P2152449919181571167.a n = A255748 (n + 1)

end A255748

/-!
# A255749: Number of (n+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255749, there is no canonical definition to state claims against.
-/

/-! ## A255749.P4516471131397233446

`A255756(∑[4*n]+1)`
-/

namespace A255749.P4516471131397233446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255749.P4516471131397233446

/-! ## A255749.P15118196078443019500

`A255756(A001844(n))+A000007(n+1)`
-/

namespace A255749.P15118196078443019500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A001844 n).toNat + A000007 (n + 1)

end

end A255749.P15118196078443019500

/-! ## A255749.P14337487227520783015

`A233562(n+1)%2*A255756(A001844(n))`
-/

namespace A255749.P14337487227520783015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233562 (n + 1)) 2 * A255756 (A001844 n).toNat

end

end A255749.P14337487227520783015

/-! ## A255749.P9615219407946779513

`A001222(A181938(n+1))*A255756(A001844(n))`
-/

namespace A255749.P9615219407946779513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181938 (n + 1)).toNat * A255756 (A001844 n).toNat

end

end A255749.P9615219407946779513

/-! ## A255749.P10370422740192647476

`A255756(A001844(n))%A000041(A052905(n+3)+12)`
-/

namespace A255749.P10370422740192647476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255756 (A001844 n).toNat) (A000041 (A052905 (n + 3) + 12).toNat)

end

end A255749.P10370422740192647476

/-!
# A255750: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255750, there is no canonical definition to state claims against.
-/

/-! ## A255750.P7740398747206913905

`A255756(∑[n+2])`
-/

namespace A255750.P7740398747206913905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255750.P7740398747206913905

/-! ## A255750.P2641648739924088879

`record[A255756(A000096(A328388(n)))]`
-/

namespace A255750.P2641648739924088879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 (A328388 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255750.P2641648739924088879

/-! ## A255750.P11482072102380437437

`record[A255756(A000096(A002260(n+1)))]`
-/

namespace A255750.P11482072102380437437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255750.P11482072102380437437

/-! ## A255750.P4045576217809422729

`record[A255756(A000096(A303777(n+1)))]`
-/

namespace A255750.P4045576217809422729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 (A303777 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255750.P4045576217809422729

/-! ## A255750.P6304595400691596415

`lcm(A008836(n+1), A255756(A101881(2*n+1)))`
-/

namespace A255750.P6304595400691596415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A255756 (A101881 (2 * n + 1)).toNat)

end

end A255750.P6304595400691596415

/-!
# A255751: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255751, there is no canonical definition to state claims against.
-/

/-! ## A255751.P4557765685282212422

`A255756(∑[n+3]+1)`
-/

namespace A255751.P4557765685282212422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255751.P4557765685282212422

/-! ## A255751.P5006814954632298352

`A255756(A034856(n+2))+A025439(n)`
-/

namespace A255751.P5006814954632298352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A034856 (n + 2)).toNat + A025439 n

end

end A255751.P5006814954632298352

/-! ## A255751.P16018516875355762542

`A255756(A034856(n+2))%A017490(n)`
-/

namespace A255751.P16018516875355762542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255756 (A034856 (n + 2)).toNat) (A017490 n)

end

end A255751.P16018516875355762542

/-! ## A255751.P10557680517928405773

`A255756(A034856(n+2))+A000007(n+1)`
-/

namespace A255751.P10557680517928405773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A255751.P10557680517928405773

/-!
# A255752: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255752, there is no canonical definition to state claims against.
-/

/-! ## A255752.P1286731008915889231

`A255756(C(n+4, 2)+n+1)`
-/

namespace A255752.P1286731008915889231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (Nat.choose (n + 4) 2 + (n + 1))

end

end A255752.P1286731008915889231

/-! ## A255752.P1789572944573533543

`A255756(A027379(n+2))`
-/

namespace A255752.P1789572944573533543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A027379 (n + 2)).toNat

end

end A255752.P1789572944573533543

/-! ## A255752.P10605163268412166708

`A255756(A055998(n+2))`
-/

namespace A255752.P10605163268412166708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A055998 (n + 2)).toNat

end

end A255752.P10605163268412166708

/-! ## A255752.P16638707496734770193

`A255756(A155212(n)+5)`
-/

namespace A255752.P16638707496734770193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A155212 n + 5).toNat

end

end A255752.P16638707496734770193

/-! ## A255752.P1670254350185886851

`A255756(Δ[A006416(n+2)])`
-/

namespace A255752.P1670254350185886851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (f1 (n + 1) - f1 n).toNat

end

end A255752.P1670254350185886851

/-!
# A255753: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255753, there is no canonical definition to state claims against.
-/

/-! ## A255753.P13058240403599288767

`A255756(∑[n+5]+6)`
-/

namespace A255753.P13058240403599288767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255753.P13058240403599288767

/-! ## A255753.P16602351541110704496

`A255756(A046691(n+3))%A017490(n)`
-/

namespace A255753.P16602351541110704496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255756 (A046691 (n + 3)).toNat) (A017490 n)

end

end A255753.P16602351541110704496

/-! ## A255753.P17822522638051275538

`A255756(A000217(n+5)-4)+A025439(n)`
-/

namespace A255753.P17822522638051275538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000217 (n + 5) - 4).toNat + A025439 n

end

end A255753.P17822522638051275538

/-! ## A255753.P8120946118544381372

`A007318(A000096(n))*A255756(A046691(n+3))`
-/

namespace A255753.P8120946118544381372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A255756 (A046691 (n + 3)).toNat

end

end A255753.P8120946118544381372

/-! ## A255753.P4082416681595123092

`A000188(A000040(n+1))*A255756(A046691(n+3))`
-/

namespace A255753.P4082416681595123092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000040 (n + 1)).toNat * A255756 (A046691 (n + 3)).toNat

end

end A255753.P4082416681595123092

/-!
# A255754: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255754, there is no canonical definition to state claims against.
-/

/-! ## A255754.P15099750451901931015

`A255756(A052905(n+3))`
-/

namespace A255754.P15099750451901931015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A052905 (n + 3)).toNat

end

end A255754.P15099750451901931015

/-! ## A255754.P16236431985563478740

`A255756(A000217(n+6)-5)`
-/

namespace A255754.P16236431985563478740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000217 (n + 6) - 5).toNat

end

end A255754.P16236431985563478740

/-! ## A255754.P15148816131307496293

`A255756(A167499(n+5)-10)`
-/

namespace A255754.P15148816131307496293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A167499 (n + 5) - 10).toNat

end

end A255754.P15148816131307496293

/-! ## A255754.P16778451030759868559

`A255756(Δ[Δ[A006504(n+1)]])`
-/

namespace A255754.P16778451030759868559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (f1 (n + 1) - f1 n).toNat

end

end A255754.P16778451030759868559

/-! ## A255754.P6706088145030213903

`A255756(A000096(n+4)+n+2)`
-/

namespace A255754.P6706088145030213903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A255754.P6706088145030213903

/-!
# A255755: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255755, there is no canonical definition to state claims against.
-/

/-! ## A255755.P3312157196573070385

`A255756(A055999(n+4))`
-/

namespace A255755.P3312157196573070385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A055999 (n + 4)).toNat

end

end A255755.P3312157196573070385

/-! ## A255755.P16535370779340223878

`A255756(A000096(n+6)-5)`
-/

namespace A255755.P16535370779340223878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 (n + 6) - 5).toNat

end

end A255755.P16535370779340223878

/-! ## A255755.P14405384855531759218

`A255756(A000124(n+7)-7)`
-/

namespace A255755.P14405384855531759218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000124 (n + 7) - 7).toNat

end

end A255755.P14405384855531759218

/-! ## A255755.P15272688500354932628

`A255756(A000217(n+6)+n+1)`
-/

namespace A255755.P15272688500354932628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A255755.P15272688500354932628

/-! ## A255755.P7632033263514491697

`A255756(A155212(n+4)-(n+6))`
-/

namespace A255755.P7632033263514491697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A155212 (n + 4) - (n + 6 : ℤ)).toNat

end

end A255755.P7632033263514491697

/-!
# A255757: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255757, there is no canonical definition to state claims against.
-/

/-! ## A255757.P3010453347184581266

`A255756(∑[n+1]+2)`
-/

namespace A255757.P3010453347184581266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255757.P3010453347184581266

/-! ## A255757.P16623361238002014254

`A255756(A000096(n)+3)+A070203(2*n+1)`
-/

namespace A255757.P16623361238002014254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 n + 3).toNat + A070203 (2 * n + 1)

end

end A255757.P16623361238002014254

/-! ## A255757.P18071053496645197378

`A255756(A133263(n+1))+and(1, A030104(2*n))`
-/

namespace A255757.P18071053496645197378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A133263 (n + 1)).toNat + Int.land 1 (A030104 (2 * n))

end

end A255757.P18071053496645197378

/-! ## A255757.P6601169595663577497

`A255756(A000096(n)+3)+A069828(A000010(n+3))`
-/

namespace A255757.P6601169595663577497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000096 n + 3).toNat + A069828 (A000010 (n + 3)).toNat

end

end A255757.P6601169595663577497

/-! ## A255757.P13313994419913096323

`A001222(A217862(n+1))*A255756(A000096(n)+3)`
-/

namespace A255757.P13313994419913096323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A217862 (n + 1)).toNat * A255756 (A000096 n + 3).toNat

end

end A255757.P13313994419913096323

/-!
# A255758: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255758, there is no canonical definition to state claims against.
-/

/-! ## A255758.P11442487590792341324

`A255756(∑[n+2]+4)`
-/

namespace A255758.P11442487590792341324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255758.P11442487590792341324

/-! ## A255758.P2917896883916812317

`lcm((-1)^n, A255756(A167614(n+1)))`
-/

namespace A255758.P2917896883916812317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A255756 (A167614 (n + 1)).toNat)

end

end A255758.P2917896883916812317

/-! ## A255758.P14384411067101363671

`A255756(A167614(n+1))+A000035(2*n)`
-/

namespace A255758.P14384411067101363671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A255758.P14384411067101363671

/-! ## A255758.P11070331716318114128

`A000034(2*n)*A255756(A167614(n+1))`
-/

namespace A255758.P11070331716318114128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A255756 (A167614 (n + 1)).toNat

end

end A255758.P11070331716318114128

/-! ## A255758.P12919702381095818225

`A255756(A167614(n+1))%A206133(n+1)`
-/

namespace A255758.P12919702381095818225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255756 (A167614 (n + 1)).toNat) (A206133 (n + 1))

end

end A255758.P12919702381095818225

/-!
# A255759: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255759, there is no canonical definition to state claims against.
-/

/-! ## A255759.P151264568589730152

`A255756(A052905(n)+9)`
-/

namespace A255759.P151264568589730152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A052905 n + 9).toNat

end

end A255759.P151264568589730152

/-! ## A255759.P15660535776090339650

`A255756(A055999(n)+10)`
-/

namespace A255759.P15660535776090339650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A055999 n + 10).toNat

end

end A255759.P15660535776090339650

/-! ## A255759.P10208400883233864671

`A255756(A167614(n+2)+1)`
-/

namespace A255759.P10208400883233864671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A167614 (n + 2) + 1).toNat

end

end A255759.P10208400883233864671

/-! ## A255759.P7481038675424294460

`A255756(A112355(n+1)+4)`
-/

namespace A255759.P7481038675424294460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A112355 (n + 1) + 4).toNat

end

end A255759.P7481038675424294460

/-! ## A255759.P14911444293176169828

`A255756(A080036(A167614(n+1)))`
-/

namespace A255759.P14911444293176169828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A255759.P14911444293176169828

/-!
# A255760: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255760, there is no canonical definition to state claims against.
-/

/-! ## A255760.P1913248711542113807

`A255756(A155212(n)+13)`
-/

namespace A255760.P1913248711542113807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A155212 n + 13).toNat

end

end A255760.P1913248711542113807

/-! ## A255760.P14684209262166947814

`A255756(A133263(n+4)+3)`
-/

namespace A255760.P14684209262166947814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A133263 (n + 4) + 3).toNat

end

end A255760.P14684209262166947814

/-! ## A255760.P10460258849505332146

`A255756(A000217(n+4)+5)`
-/

namespace A255760.P10460258849505332146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000217 (n + 4) + 5).toNat

end

end A255760.P10460258849505332146

/-! ## A255760.P11557474714124459984

`A255756(A034856(n+3)+7)`
-/

namespace A255760.P11557474714124459984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A034856 (n + 3) + 7).toNat

end

end A255760.P11557474714124459984

/-! ## A255760.P17473656112496683005

`A255756(A055998(n+2)+8)`
-/

namespace A255760.P17473656112496683005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A055998 (n + 2) + 8).toNat

end

end A255760.P17473656112496683005

/-!
# A255761: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255761, there is no canonical definition to state claims against.
-/

/-! ## A255761.P477256668275506027

`A255756(A167614(n+4)+3)`
-/

namespace A255761.P477256668275506027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A167614 (n + 4) + 3).toNat

end

end A255761.P477256668275506027

/-! ## A255761.P8548916243880359549

`A255756(A000217(n+5)+6)`
-/

namespace A255761.P8548916243880359549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000217 (n + 5) + 6).toNat

end

end A255761.P8548916243880359549

/-! ## A255761.P7881339753427848653

`A255756(A161680(n+6)+6)`
-/

namespace A255761.P7881339753427848653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A161680 (n + 6) + 6).toNat

end

end A255761.P7881339753427848653

/-! ## A255761.P3737432377369390366

`A255756(A046691(n+3)+10)`
-/

namespace A255761.P3737432377369390366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A046691 (n + 3) + 10).toNat

end

end A255761.P3737432377369390366

/-! ## A255761.P5234675372813209283

`A255756(A000124(n+6)-(n+1))`
-/

namespace A255761.P5234675372813209283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A255761.P5234675372813209283

/-!
# A255762: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255762, there is no canonical definition to state claims against.
-/

/-! ## A255762.P6761967924973371476

`A255756(A167614(n+5)+4)`
-/

namespace A255762.P6761967924973371476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A167614 (n + 5) + 4).toNat

end

end A255762.P6761967924973371476

/-! ## A255762.P14238869709695501467

`A255756(A000217(n+6)+7)`
-/

namespace A255762.P14238869709695501467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000217 (n + 6) + 7).toNat

end

end A255762.P14238869709695501467

/-! ## A255762.P10548571212404953293

`A255756(A161680(n+7)+7)`
-/

namespace A255762.P10548571212404953293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A161680 (n + 7) + 7).toNat

end

end A255762.P10548571212404953293

/-! ## A255762.P2933035330383448995

`A255756(A000124(n+7)-(n+1))`
-/

namespace A255762.P2933035330383448995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A255762.P2933035330383448995

/-! ## A255762.P11766878050288324349

`A255756(A016885(n+5)+A000096(n))`
-/

namespace A255762.P11766878050288324349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (A016885 (n + 5) + A000096 n).toNat

end

end A255762.P11766878050288324349

/-!
# A255763: Odd numbers that are not twin primes.

The programs for A255763, the canonical program `A255763.P6358197639438820287` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255763 has offset 1).

The definition of A255763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255763.P6358197639438820287

`record[(2*n+1)*A283265(2*n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A255763

/-- `record[(2*n+1)*A283265(2*n+1)]` -/
def P6358197639438820287.Spec : Prop :=
  ∀ n, P6358197639438820287.a n = A255763 (n + 1)

theorem P6358197639438820287.correct : P6358197639438820287.Spec := by
  intro n
  simp only [A255763, Nat.add_sub_cancel]

end A255763

/-! ## A255763.P1512557988089600225

`∪[A014076(n+1), A110673(n+1)]`
-/

namespace A255763.P1512557988089600225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255763.P1512557988089600225

namespace A255763

/-- `∪[A014076(n+1), A110673(n+1)]` -/
def P1512557988089600225.Spec : Prop :=
  ∀ n, (P1512557988089600225.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P13550347459148947343

`∪[A014076(n+1), A134797(n+1)]`
-/

namespace A255763.P13550347459148947343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255763.P13550347459148947343

namespace A255763

/-- `∪[A014076(n+1), A134797(n+1)]` -/
def P13550347459148947343.Spec : Prop :=
  ∀ n, (P13550347459148947343.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P8876829876468911481

`A005408(eq[1, A283265(2*n+1)])`
-/

namespace A255763.P8876829876468911481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255763.P8876829876468911481

namespace A255763

/-- `A005408(eq[1, A283265(2*n+1)])` -/
def P8876829876468911481.Spec : Prop :=
  ∀ n, P8876829876468911481.a n = A255763 (n + 1)

end A255763

/-! ## A255763.P6591023849576461481

`eq[A093178(n), A283265(n+1)]+1`
-/

namespace A255763.P6591023849576461481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255763.P6591023849576461481

namespace A255763

/-- `eq[A093178(n), A283265(n+1)]+1` -/
def P6591023849576461481.Spec : Prop :=
  ∀ n, (P6591023849576461481.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P5295696080609943670

`filter[2*n+1, A283265(#)]`
-/

namespace A255763.P5295696080609943670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j) = 1) n)

end

end A255763.P5295696080609943670

namespace A255763

/-- `filter[2*n+1, A283265(#)]` -/
def P5295696080609943670.Spec : Prop :=
  ∀ n, (P5295696080609943670.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P7258092453289710193

`eq[1, and(n, A283265(A093178(n)))]`
-/

namespace A255763.P7258092453289710193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A283265 (A093178 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255763.P7258092453289710193

namespace A255763

/-- `eq[1, and(n, A283265(A093178(n)))]` -/
def P7258092453289710193.Spec : Prop :=
  ∀ n, (P7258092453289710193.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P4623339348445906230

`record[A093178(A283265(n+1)+n)]`
-/

namespace A255763.P4623339348445906230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255763.P4623339348445906230

namespace A255763

/-- `record[A093178(A283265(n+1)+n)]` -/
def P4623339348445906230.Spec : Prop :=
  ∀ n, P4623339348445906230.a n = A255763 (n + 1)

end A255763

/-! ## A255763.P16550801799108458968

`record[A193356(A283265(n+1)+n)]`
-/

namespace A255763.P16550801799108458968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255763.P16550801799108458968

namespace A255763

/-- `record[A193356(A283265(n+1)+n)]` -/
def P16550801799108458968.Spec : Prop :=
  ∀ n, P16550801799108458968.a n = A255763 (n + 1)

end A255763

/-! ## A255763.P14911378414652517292

`record[A199084(A283265(n+1)+n)]`
-/

namespace A255763.P14911378414652517292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199084 (A283265 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255763.P14911378414652517292

namespace A255763

/-- `record[A199084(A283265(n+1)+n)]` -/
def P14911378414652517292.Spec : Prop :=
  ∀ n, P14911378414652517292.a n = A255763 (n + 1)

end A255763

/-! ## A255763.P3967118104496441094

`eq[A010673(n), A164292(n+1)]+1`
-/

namespace A255763.P3967118104496441094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255763.P3967118104496441094

namespace A255763

/-- `eq[A010673(n), A164292(n+1)]+1` -/
def P3967118104496441094.Spec : Prop :=
  ∀ n, (P3967118104496441094.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P4297779392397996573

`A004442(eq[and(1, n), A164292(n+1)])`
-/

namespace A255763.P4297779392397996573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255763.P4297779392397996573

namespace A255763

/-- `A004442(eq[and(1, n), A164292(n+1)])` -/
def P4297779392397996573.Spec : Prop :=
  ∀ n, P4297779392397996573.a n = A255763 (n + 1)

end A255763

/-! ## A255763.P473765613029055668

`eq[A007814(n+1), A164292(n+1)]+1`
-/

namespace A255763.P473765613029055668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255763.P473765613029055668

namespace A255763

/-- `eq[A007814(n+1), A164292(n+1)]+1` -/
def P473765613029055668.Spec : Prop :=
  ∀ n, (P473765613029055668.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P16776363071058423567

`A005408(eq[0, A164292(A005408(n))])`
-/

namespace A255763.P16776363071058423567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255763.P16776363071058423567

namespace A255763

/-- `A005408(eq[0, A164292(A005408(n))])` -/
def P16776363071058423567.Spec : Prop :=
  ∀ n, P16776363071058423567.a n = A255763 (n + 1)

end A255763

/-! ## A255763.P17948985876720157863

`eq[A035363(n), A164292(A093178(n))]`
-/

namespace A255763.P17948985876720157863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255763.P17948985876720157863

namespace A255763

/-- `eq[A035363(n), A164292(A093178(n))]` -/
def P17948985876720157863.Spec : Prop :=
  ∀ n, (P17948985876720157863.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P16327229893119229729

`eq[A035457(n), A164292(A093178(n))]`
-/

namespace A255763.P16327229893119229729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255763.P16327229893119229729

namespace A255763

/-- `eq[A035457(n), A164292(A093178(n))]` -/
def P16327229893119229729.Spec : Prop :=
  ∀ n, (P16327229893119229729.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P7772005569938701825

`eq[A056594(n), A164292(A093178(n))]`
-/

namespace A255763.P7772005569938701825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255763.P7772005569938701825

namespace A255763

/-- `eq[A056594(n), A164292(A093178(n))]` -/
def P7772005569938701825.Spec : Prop :=
  ∀ n, (P7772005569938701825.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P13047677388298002946

`eq[A000035(n), A283265(A093178(n))]`
-/

namespace A255763.P13047677388298002946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255763.P13047677388298002946

namespace A255763

/-- `eq[A000035(n), A283265(A093178(n))]` -/
def P13047677388298002946.Spec : Prop :=
  ∀ n, (P13047677388298002946.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P8278628106360657387

`eq[A040071(n), A283265(A109613(n))]`
-/

namespace A255763.P8278628106360657387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255763.P8278628106360657387

namespace A255763

/-- `eq[A040071(n), A283265(A109613(n))]` -/
def P8278628106360657387.Spec : Prop :=
  ∀ n, (P8278628106360657387.a n : ℤ) = A255763 (n + 1)

end A255763

/-! ## A255763.P15204759527011531774

`eq[A000035(n), A283265(A257088(n))]`
-/

namespace A255763.P15204759527011531774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255763.P15204759527011531774

namespace A255763

/-- `eq[A000035(n), A283265(A257088(n))]` -/
def P15204759527011531774.Spec : Prop :=
  ∀ n, (P15204759527011531774.a n : ℤ) = A255763 (n + 1)

end A255763

/-!
# A255764: Partial sums of A255743.

The programs for A255764, the canonical program `A255764.P9577008536080855973` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255764 has offset 1).

The definition of A255764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255764.P9577008536080855973

`∑[A255743(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255764

/-- `∑[A255743(n+1)]` -/
def P9577008536080855973.Spec : Prop :=
  ∀ n, P9577008536080855973.a n = A255764 (n + 1)

theorem P9577008536080855973.correct : P9577008536080855973.Spec := by
  intro n
  simp only [A255764, Nat.add_sub_cancel]

end A255764

/-! ## A255764.P15730066832542560123

`∑[A003951(A000120(n))]`
-/

namespace A255764.P15730066832542560123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P15730066832542560123

namespace A255764

/-- `∑[A003951(A000120(n))]` -/
def P15730066832542560123.Spec : Prop :=
  ∀ n, P15730066832542560123.a n = A255764 (n + 1)

end A255764

/-! ## A255764.P8247724623819597062

`∑[A065959(A001316(n))]`
-/

namespace A255764.P8247724623819597062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P8247724623819597062

namespace A255764

/-- `∑[A065959(A001316(n))]` -/
def P8247724623819597062.Spec : Prop :=
  ∀ n, P8247724623819597062.a n = A255764 (n + 1)

end A255764

/-! ## A255764.P16020200281637877750

`∑[A065959(sqrt(A102376(n)))]`
-/

namespace A255764.P16020200281637877750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (SequenceMachineLib.roundAway (Real.sqrt (A102376 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P16020200281637877750

namespace A255764

/-- `∑[A065959(sqrt(A102376(n)))]` -/
def P16020200281637877750.Spec : Prop :=
  ∀ n, P16020200281637877750.a n = A255764 (n + 1)

end A255764

/-! ## A255764.P15626084081194890151

`∑[A003951(∑[A088705(n)])]`
-/

namespace A255764.P15626084081194890151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P15626084081194890151

namespace A255764

/-- `∑[A003951(∑[A088705(n)])]` -/
def P15626084081194890151.Spec : Prop :=
  ∀ n, P15626084081194890151.a n = A255764 (n + 1)

end A255764

/-! ## A255764.P6842705517382452221

`∑[A167658(∑[A088705(n)])]`
-/

namespace A255764.P6842705517382452221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167658 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P6842705517382452221

namespace A255764

/-- `∑[A167658(∑[A088705(n)])]` -/
def P6842705517382452221.Spec : Prop :=
  ∀ n, P6842705517382452221.a n = A255764 (n + 1)

end A255764

/-! ## A255764.P4525189072365988247

`floor(A116526(2*(n+1))/8)`
-/

namespace A255764.P4525189072365988247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116526 (2 * (n + 1)) : ℚ) / 8⌋

end

end A255764.P4525189072365988247

namespace A255764

/-- `floor(A116526(2*(n+1))/8)` -/
def P4525189072365988247.Spec : Prop :=
  ∀ n, P4525189072365988247.a n = A255764 (n + 1)

end A255764

/-! ## A255764.P14002475652234457926

`∑[A151787(n+1)*A151787(A151787(n+1)²)]`
-/

namespace A255764.P14002475652234457926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1) * A151787 (A151787 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255764.P14002475652234457926

namespace A255764

/-- `∑[A151787(n+1)*A151787(A151787(n+1)²)]` -/
def P14002475652234457926.Spec : Prop :=
  ∀ n, P14002475652234457926.a n = A255764 (n + 1)

end A255764

/-!
# A255765: Partial sums of A255744.

The programs for A255765, the canonical program `A255765.P11578663823581225176` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255765 has offset 1).

The definition of A255765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255765.P11578663823581225176

`∑[A255744(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255765

/-- `∑[A255744(n+1)]` -/
def P11578663823581225176.Spec : Prop :=
  ∀ n, P11578663823581225176.a n = A255765 (n + 1)

theorem P11578663823581225176.correct : P11578663823581225176.Spec := by
  intro n
  simp only [A255765, Nat.add_sub_cancel]

end A255765

/-! ## A255765.P15421241249866844533

`∑[A003952(A000120(n))]`
-/

namespace A255765.P15421241249866844533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P15421241249866844533

namespace A255765

/-- `∑[A003952(A000120(n))]` -/
def P15421241249866844533.Spec : Prop :=
  ∀ n, P15421241249866844533.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P7375913307313104980

`A255744(A000027(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A255765.P7375913307313104980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255744 (A000027 (n + 1)).toNat + a (n - 1)

end

end A255765.P7375913307313104980

namespace A255765

/-- `A255744(A000027(n+1))+a(n-1)` -/
def P7375913307313104980.Spec : Prop :=
  ∀ n, P7375913307313104980.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P15396843882041276868

`∑[A033046(A151787(n+1))]`
-/

namespace A255765.P15396843882041276868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A151787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P15396843882041276868

namespace A255765

/-- `∑[A033046(A151787(n+1))]` -/
def P15396843882041276868.Spec : Prop :=
  ∀ n, P15396843882041276868.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P368898559830897275

`A255744(2*n+1)+a(n-1)` with `a(0)=1`
-/

namespace A255765.P368898559830897275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255744 (2 * n + 1) + a (n - 1)

end

end A255765.P368898559830897275

namespace A255765

/-- `A255744(2*n+1)+a(n-1)` -/
def P368898559830897275.Spec : Prop :=
  ∀ n, P368898559830897275.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P8030429425032851172

`∑[A065958(A048883(n))]`
-/

namespace A255765.P8030429425032851172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P8030429425032851172

namespace A255765

/-- `∑[A065958(A048883(n))]` -/
def P8030429425032851172.Spec : Prop :=
  ∀ n, P8030429425032851172.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P9668874216182698403

`∑[A319497(A147582(n+1))]`
-/

namespace A255765.P9668874216182698403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319497 (A147582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P9668874216182698403

namespace A255765

/-- `∑[A319497(A147582(n+1))]` -/
def P9668874216182698403.Spec : Prop :=
  ∀ n, P9668874216182698403.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P8632378732657641916

`∑[A332449(A001316(n)²)]`
-/

namespace A255765.P8632378732657641916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A001316 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P8632378732657641916

namespace A255765

/-- `∑[A332449(A001316(n)²)]` -/
def P8632378732657641916.Spec : Prop :=
  ∀ n, P8632378732657641916.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P17588445280815804255

`∑[A332449(A001316(n)^2)]`
-/

namespace A255765.P17588445280815804255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A001316 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P17588445280815804255

namespace A255765

/-- `∑[A332449(A001316(n)^2)]` -/
def P17588445280815804255.Spec : Prop :=
  ∀ n, P17588445280815804255.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P309315855801346958

`∑[A266727(A102376(n))]`
-/

namespace A255765.P309315855801346958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A102376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P309315855801346958

namespace A255765

/-- `∑[A266727(A102376(n))]` -/
def P309315855801346958.Spec : Prop :=
  ∀ n, P309315855801346958.a n = A255765 (n + 1)

end A255765

/-! ## A255765.P9582218996044815554

`∑[A266727(A001316(n)²)]`
-/

namespace A255765.P9582218996044815554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266727 (A001316 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255765.P9582218996044815554

namespace A255765

/-- `∑[A266727(A001316(n)²)]` -/
def P9582218996044815554.Spec : Prop :=
  ∀ n, P9582218996044815554.a n = A255765 (n + 1)

end A255765

/-!
# A255766: Partial sums of A255745.

The programs for A255766, the canonical program `A255766.P5457253108334879080` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255766 has offset 1).

The definition of A255766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255766.P1047044261227281507

`∑[10^and(1, n)*a(floor(n/2))]` with `a(0)=1, a(1)=11`
-/

namespace A255766.P1047044261227281507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  10 ^ Nat.land 1 n * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P1047044261227281507

namespace A255766

/-- `∑[10^and(1, n)*a(floor(n/2))]` -/
def P1047044261227281507.Spec : Prop :=
  ∀ n, (P1047044261227281507.a n : ℤ) = A255766 (n + 1)

end A255766

/-! ## A255766.P15672113579036158243

`∑[char[2^n]+10*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A255766.P15672113579036158243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 10 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P15672113579036158243

namespace A255766

/-- `∑[char[2^n]+10*a(and(n, n-1))]` -/
def P15672113579036158243.Spec : Prop :=
  ∀ n, (P15672113579036158243.a n : ℤ) = A255766 (n + 1)

end A255766

/-! ## A255766.P15478676652971972821

`∑[A255745(n+1)]`
-/

namespace A255766.P15478676652971972821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P15478676652971972821

namespace A255766

/-- `∑[A255745(n+1)]` -/
def P15478676652971972821.Spec : Prop :=
  ∀ n, P15478676652971972821.a n = A255766 (n + 1)

end A255766

/-! ## A255766.P5457253108334879080

`∑[A003953(A000120(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A255766

/-- `∑[A003953(A000120(n))]` -/
def P5457253108334879080.Spec : Prop :=
  ∀ n, P5457253108334879080.a n = A255766 (n + 1)

theorem P5457253108334879080.correct : P5457253108334879080.Spec := by
  intro n
  simp only [A255766, Nat.add_sub_cancel]

end A255766

/-! ## A255766.P13811012628521897577

`∑[A014550(A001316(n))]`
-/

namespace A255766.P13811012628521897577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P13811012628521897577

namespace A255766

/-- `∑[A014550(A001316(n))]` -/
def P13811012628521897577.Spec : Prop :=
  ∀ n, P13811012628521897577.a n = A255766 (n + 1)

end A255766

/-! ## A255766.P13641703616686657761

`∑[A014550(A038573(n)+1)]`
-/

namespace A255766.P13641703616686657761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A038573 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255766.P13641703616686657761

namespace A255766

/-- `∑[A014550(A038573(n)+1)]` -/
def P13641703616686657761.Spec : Prop :=
  ∀ n, P13641703616686657761.a n = A255766 (n + 1)

end A255766

/-! ## A255766.P865387465836590442

`floor(A116525(2*(n+1))/10)`
-/

namespace A255766.P865387465836590442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116525 (2 * (n + 1)) : ℚ) / 10⌋

end

end A255766.P865387465836590442

namespace A255766

/-- `floor(A116525(2*(n+1))/10)` -/
def P865387465836590442.Spec : Prop :=
  ∀ n, P865387465836590442.a n = A255766 (n + 1)

end A255766

/-!
# A255767: Triangle read by rows: T(n,k) = sum of all parts of all partitions of n into k distinct parts.

The programs for A255767, there is no canonical definition to state claims against.
-/

/-! ## A255767.P13756157029646693394

`∑[char[A006463(n)]]*A116608(n+1)`
-/

namespace A255767.P13756157029646693394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A116608 (n + 1)

end

end A255767.P13756157029646693394

/-! ## A255767.P13695251667713974437

`A116608(n+1)*A235224(A000032(2*n+1))`
-/

namespace A255767.P13695251667713974437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116608 (n + 1) * A235224 (A000032 (2 * n + 1)).toNat

end

end A255767.P13695251667713974437

/-!
# A255769: Primes p such that there are a prime number of composite numbers less than p.

The programs for A255769, the canonical program `A255769.P10219843264777276091` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255769 has offset 1).

The definition of A255769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255769.P10219843264777276091

`p?[A022449(n+2)+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255769

/-- `p?[A022449(n+2)+1]` -/
def P10219843264777276091.Spec : Prop :=
  ∀ n, P10219843264777276091.a n = A255769 (n + 1)

theorem P10219843264777276091.correct : P10219843264777276091.Spec := by
  intro n
  simp only [A255769, Nat.add_sub_cancel]

end A255769

/-! ## A255769.P10297525620009523584

`∩[A000040(n+1), A022449(n+2)+1]`
-/

namespace A255769.P10297525620009523584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255769.P10297525620009523584

namespace A255769

/-- `∩[A000040(n+1), A022449(n+2)+1]` -/
def P10297525620009523584.Spec : Prop :=
  ∀ n, (P10297525620009523584.a n : ℤ) = A255769 (n + 1)

end A255769

/-! ## A255769.P9696365067284404132

`A000040(A166562(n+1))`
-/

namespace A255769.P9696365067284404132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A166562 (n + 1)).toNat

end

end A255769.P9696365067284404132

namespace A255769

/-- `A000040(A166562(n+1))` -/
def P9696365067284404132.Spec : Prop :=
  ∀ n, P9696365067284404132.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P7874804093135855603

`p?[A002808(A000040(n+1))+1]`
-/

namespace A255769.P7874804093135855603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P7874804093135855603

namespace A255769

/-- `p?[A002808(A000040(n+1))+1]` -/
def P7874804093135855603.Spec : Prop :=
  ∀ n, P7874804093135855603.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P2467288332793698740

`p?[A018252(A008864(n+1))+1]`
-/

namespace A255769.P2467288332793698740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A008864 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P2467288332793698740

namespace A255769

/-- `p?[A018252(A008864(n+1))+1]` -/
def P2467288332793698740.Spec : Prop :=
  ∀ n, P2467288332793698740.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P754689625844707782

`p?[A002808(A008578(n+2))+1]`
-/

namespace A255769.P754689625844707782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A008578 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P754689625844707782

namespace A255769

/-- `p?[A002808(A008578(n+2))+1]` -/
def P754689625844707782.Spec : Prop :=
  ∀ n, P754689625844707782.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P16581076675491998950

`p?[A018252(A052147(n+1))-1]`
-/

namespace A255769.P16581076675491998950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A052147 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P16581076675491998950

namespace A255769

/-- `p?[A018252(A052147(n+1))-1]` -/
def P16581076675491998950.Spec : Prop :=
  ∀ n, P16581076675491998950.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P8423516982136184486

`p?[A018252(A000040(n+1)+1)+1]`
-/

namespace A255769.P8423516982136184486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P8423516982136184486

namespace A255769

/-- `p?[A018252(A000040(n+1)+1)+1]` -/
def P8423516982136184486.Spec : Prop :=
  ∀ n, P8423516982136184486.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P6266224230494026529

`p?[A010051(n+1)+A002808(n+1)]`
-/

namespace A255769.P6266224230494026529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P6266224230494026529

namespace A255769

/-- `p?[A010051(n+1)+A002808(n+1)]` -/
def P6266224230494026529.Spec : Prop :=
  ∀ n, P6266224230494026529.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P9359313176442356193

`p?[(A002808(n+1)+1)*A001222(n+1)]`
-/

namespace A255769.P9359313176442356193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) + 1) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P9359313176442356193

namespace A255769

/-- `p?[(A002808(n+1)+1)*A001222(n+1)]` -/
def P9359313176442356193.Spec : Prop :=
  ∀ n, P9359313176442356193.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P4824493930365905751

`record[A020639(A002808(A000040(n+1))+1)]`
-/

namespace A255769.P4824493930365905751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002808 (A000040 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255769.P4824493930365905751

namespace A255769

/-- `record[A020639(A002808(A000040(n+1))+1)]` -/
def P4824493930365905751.Spec : Prop :=
  ∀ n, P4824493930365905751.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P4529468635026950145

`p?[A079696(p?[A004442(n)])]`
-/

namespace A255769.P4529468635026950145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P4529468635026950145

namespace A255769

/-- `p?[A079696(p?[A004442(n)])]` -/
def P4529468635026950145.Spec : Prop :=
  ∀ n, P4529468635026950145.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P11462115825279929722

`p?[A079696(A000040(n+1))]`
-/

namespace A255769.P11462115825279929722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P11462115825279929722

namespace A255769

/-- `p?[A079696(A000040(n+1))]` -/
def P11462115825279929722.Spec : Prop :=
  ∀ n, P11462115825279929722.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P17293836229350595347

`p?[A072668(A008864(n+1))]`
-/

namespace A255769.P17293836229350595347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P17293836229350595347

namespace A255769

/-- `p?[A072668(A008864(n+1))]` -/
def P17293836229350595347.Spec : Prop :=
  ∀ n, P17293836229350595347.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P6159352581777752375

`p?[A072022(A000040(n+1)+1)]`
-/

namespace A255769.P6159352581777752375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P6159352581777752375

namespace A255769

/-- `p?[A072022(A000040(n+1)+1)]` -/
def P6159352581777752375.Spec : Prop :=
  ∀ n, P6159352581777752375.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P1452854685507273500

`p?[A072668(A000040(n+1)+1)]`
-/

namespace A255769.P1452854685507273500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P1452854685507273500

namespace A255769

/-- `p?[A072668(A000040(n+1)+1)]` -/
def P1452854685507273500.Spec : Prop :=
  ∀ n, P1452854685507273500.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P16345621697996595445

`p?[A176423(A006093(n+1))+1]`
-/

namespace A255769.P16345621697996595445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A006093 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P16345621697996595445

namespace A255769

/-- `p?[A176423(A006093(n+1))+1]` -/
def P16345621697996595445.Spec : Prop :=
  ∀ n, P16345621697996595445.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P5321526351549910131

`p?[A176423(A068499(n+1))+1]`
-/

namespace A255769.P5321526351549910131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A068499 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P5321526351549910131

namespace A255769

/-- `p?[A176423(A068499(n+1))+1]` -/
def P5321526351549910131.Spec : Prop :=
  ∀ n, P5321526351549910131.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P16003418842977727421

`p?[A079696(A008864(n+1)-1)]`
-/

namespace A255769.P16003418842977727421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P16003418842977727421

namespace A255769

/-- `p?[A079696(A008864(n+1)-1)]` -/
def P16003418842977727421.Spec : Prop :=
  ∀ n, P16003418842977727421.a n = A255769 (n + 1)

end A255769

/-! ## A255769.P11356037466089242607

`p?[A060462(A045344(n+1)+2)]`
-/

namespace A255769.P11356037466089242607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A045344 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255769.P11356037466089242607

namespace A255769

/-- `p?[A060462(A045344(n+1)+2)]` -/
def P11356037466089242607.Spec : Prop :=
  ∀ n, P11356037466089242607.a n = A255769 (n + 1)

end A255769

/-!
# A255773: Tree of lower Wythoff numbers (A000201) generated as the 1-component of the graph described at A095903.

The programs for A255773, there is no canonical definition to state claims against.
-/

/-! ## A255773.P10049758501959039497

`floor(ϕ*A345253(n+1))`
-/

namespace A255773.P10049758501959039497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A345253 (n + 1) : ℝ)⌋

end

end A255773.P10049758501959039497

/-! ## A255773.P15908320689819609389

`A095903(2^floor(log2(n+1))+n)`
-/

namespace A255773.P15908320689819609389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (2 ^ Nat.log 2 (n + 1) + n)

end

end A255773.P15908320689819609389

/-! ## A255773.P5108275778104631712

`floor(A095903(lt[n, 2*and(n, 2*n)]-1)/ϕ)`
-/

namespace A255773.P5108275778104631712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1) : ℝ) / Real.goldenRatio⌋

end

end A255773.P5108275778104631712

/-! ## A255773.P13413776013650640511

`A000201(A345253(n+1))`
-/

namespace A255773.P13413776013650640511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A345253 (n + 1)).toNat

end

end A255773.P13413776013650640511

/-! ## A255773.P2123137833582804919

`A054084(2*A345253(n+1))`
-/

namespace A255773.P2123137833582804919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (2 * A345253 (n + 1)).toNat

end

end A255773.P2123137833582804919

/-! ## A255773.P7970145679401127106

`filter[A095903(n+1), A096270(#)]`
-/

namespace A255773.P7970145679401127106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A255773.P7970145679401127106

/-! ## A255773.P1410455725829676799

`filter[A095903(n+1), A114986(#)]`
-/

namespace A255773.P1410455725829676799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114986 (f1 j).toNat = 1) n)

end

end A255773.P1410455725829676799

/-! ## A255773.P17370915575189037875

`floor(ϕ*A232560(A059893(n+1)))`
-/

namespace A255773.P17370915575189037875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A232560 (A059893 (n + 1)).toNat : ℝ)⌋

end

end A255773.P17370915575189037875

/-! ## A255773.P4661393447708857895

`A232560(2*A059893(n+1))-1`
-/

namespace A255773.P4661393447708857895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (2 * A059893 (n + 1)).toNat - 1

end

end A255773.P4661393447708857895

/-! ## A255773.P7943957232454015628

`A000201(A232560(A059893(n+1)))`
-/

namespace A255773.P7943957232454015628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A232560 (A059893 (n + 1)).toNat).toNat

end

end A255773.P7943957232454015628

/-!
# A255774: Tree of upper Wythoff numbers (A001950) generated as the 2-component of the graph described at A095903.

The programs for A255774, there is no canonical definition to state claims against.
-/

/-! ## A255774.P15431509594111628221

`ceil(ϕ*A255773(n+1))`
-/

namespace A255774.P15431509594111628221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A255773 (n + 1) : ℝ)⌉

end

end A255774.P15431509594111628221

/-! ## A255774.P11058459573374779935

`A095903(lt[n, 2*and(n, 2*n)]-1)`
-/

namespace A255774.P11058459573374779935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A255774.P11058459573374779935

/-! ## A255774.P11561466480942346652

`floor((A345253(n+1)-C(n+1, n)+n+1)*ϕ²)`
-/

namespace A255774.P11561466480942346652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345253 (n + 1) - (Nat.choose (n + 1) n : ℤ) + (n : ℤ) + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A255774.P11561466480942346652

/-! ## A255774.P5259634389654227775

`A002251(A255773(n+1))`
-/

namespace A255774.P5259634389654227775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A255773 (n + 1)).toNat

end

end A255774.P5259634389654227775

/-! ## A255774.P10008800283838508387

`A095903(A206332(n+1))`
-/

namespace A255774.P10008800283838508387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A206332 (n + 1)).toNat

end

end A255774.P10008800283838508387

/-! ## A255774.P3653750890384144300

`A001950(A345253(n+1))`
-/

namespace A255774.P3653750890384144300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A345253 (n + 1)).toNat

end

end A255774.P3653750890384144300

/-! ## A255774.P17343282668475472743

`A022342(A255773(n+1)+1)`
-/

namespace A255774.P17343282668475472743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A255773 (n + 1) + 1).toNat

end

end A255774.P17343282668475472743

/-! ## A255774.P1789112854740695246

`A095903(A004755(n+1)-1)`
-/

namespace A255774.P1789112854740695246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A004755 (n + 1) - 1).toNat

end

end A255774.P1789112854740695246

/-! ## A255774.P2566464942875558540

`A232560(A145341(n+2))-1`
-/

namespace A255774.P2566464942875558540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A145341 (n + 2)).toNat - 1

end

end A255774.P2566464942875558540

/-! ## A255774.P15077573065367333131

`A095903(A062383(n+1)+n)`
-/

namespace A255774.P15077573065367333131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A062383 (n + 1) + (n : ℤ)).toNat

end

end A255774.P15077573065367333131

/-!
# A255775: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255775, there is no canonical definition to state claims against.
-/

/-! ## A255775.P2434889504921799429

`A255783(∑[4*n]+1)`
-/

namespace A255775.P2434889504921799429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255775.P2434889504921799429

/-! ## A255775.P9064534737444596575

`record[A003982(n)*A255783(n+1)]`
-/

namespace A255775.P9064534737444596575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255775.P9064534737444596575

/-! ## A255775.P8132625103249403611

`record[gcd(A003987(n), A255783(n+1))]`
-/

namespace A255775.P8132625103249403611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A255783 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255775.P8132625103249403611

/-! ## A255775.P13654264468323625031

`record[A077606(n+1)*A255783(n+1)]`
-/

namespace A255775.P13654264468323625031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A255783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255775.P13654264468323625031

/-! ## A255775.P4591983627399101924

`A255783(A001844(n))+A025466(n)`
-/

namespace A255775.P4591983627399101924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A001844 n).toNat + A025466 n

end

end A255775.P4591983627399101924

/-!
# A255776: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255776, there is no canonical definition to state claims against.
-/

/-! ## A255776.P7739701867966039937

`A255783(∑[n]+1)`
-/

namespace A255776.P7739701867966039937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255776.P7739701867966039937

/-! ## A255776.P13131204468031463431

`record[root(A255783(n+1), A007318(n))]`
-/

namespace A255776.P13131204468031463431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255783 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255776.P13131204468031463431

/-! ## A255776.P881061906975582291

`record[gcd(A002262(n), A255783(n+1))]`
-/

namespace A255776.P881061906975582291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255783 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255776.P881061906975582291

/-! ## A255776.P4554286648900509947

`gcd(n, n+1)*A255783(A000124(n))`
-/

namespace A255776.P4554286648900509947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A255783 (A000124 n).toNat

end

end A255776.P4554286648900509947

/-! ## A255776.P6451888216480779872

`record[root(A255783(n+1), A055080(n+1))]`
-/

namespace A255776.P6451888216480779872
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255783 (n + 1) : ℝ) ^ (1 / (A055080 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255776.P6451888216480779872

/-!
# A255777: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255777, there is no canonical definition to state claims against.
-/

/-! ## A255777.P5140549263757488322

`A255783(∑[n+1]+2)`
-/

namespace A255777.P5140549263757488322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255777.P5140549263757488322

/-! ## A255777.P4588404463513449317

`record[gcd(A002262(n), A255783(n+2))]`
-/

namespace A255777.P4588404463513449317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255783 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255777.P4588404463513449317

/-! ## A255777.P6044873659434264115

`record[A255783(A133263(A008611(n)))]`
-/

namespace A255777.P6044873659434264115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255777.P6044873659434264115

/-! ## A255777.P8565892254584126033

`A255783(A000096(n+1))+A093392(n)`
-/

namespace A255777.P8565892254584126033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A000096 (n + 1)).toNat + A093392 n

end

end A255777.P8565892254584126033

/-! ## A255777.P3125426770249035997

`record[A255783(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A255777.P3125426770249035997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255777.P3125426770249035997

/-!
# A255778: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255778, there is no canonical definition to state claims against.
-/

/-! ## A255778.P4482300407134871213

`A255783(∑[n+2]+4)`
-/

namespace A255778.P4482300407134871213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255778.P4482300407134871213

/-! ## A255778.P12601096218732020214

`A255783(A167614(n+1))+A185264(n)`
-/

namespace A255778.P12601096218732020214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A167614 (n + 1)).toNat + A185264 n

end

end A255778.P12601096218732020214

/-! ## A255778.P12515204870462852585

`lcm(A033999(n), A255783(A167614(n+1)))`
-/

namespace A255778.P12515204870462852585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255783 (A167614 (n + 1)).toNat)

end

end A255778.P12515204870462852585

/-! ## A255778.P16024314093787698463

`or(A186747(n), A255783(A167614(n+1)))`
-/

namespace A255778.P16024314093787698463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186747 n) (A255783 (A167614 (n + 1)).toNat)

end

end A255778.P16024314093787698463

/-! ## A255778.P11213612790907099457

`A334740(n+1)+A255783(A167614(n+1))`
-/

namespace A255778.P11213612790907099457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334740 (n + 1) + A255783 (A167614 (n + 1)).toNat

end

end A255778.P11213612790907099457

/-!
# A255779: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255779, there is no canonical definition to state claims against.
-/

/-! ## A255779.P2792761895823603273

`A255783(A374004(n+1))`
-/

namespace A255779.P2792761895823603273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A374004 (n + 1)).toNat

end

end A255779.P2792761895823603273

/-! ## A255779.P17761653576065051616

`A255783(A141214(n)+7)`
-/

namespace A255779.P17761653576065051616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A141214 n + 7).toNat

end

end A255779.P17761653576065051616

/-! ## A255779.P8489996898901873324

`A255783(A055999(n)+10)`
-/

namespace A255779.P8489996898901873324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A055999 n + 10).toNat

end

end A255779.P8489996898901873324

/-! ## A255779.P800786154796077276

`A255783(A167614(n+2)+1)`
-/

namespace A255779.P800786154796077276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A167614 (n + 2) + 1).toNat

end

end A255779.P800786154796077276

/-! ## A255779.P1828076302630104854

`A255783(Δ[A264443(n)-n²])`
-/

namespace A255779.P1828076302630104854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (f1 (n + 1) - f1 n).toNat

end

end A255779.P1828076302630104854

/-!
# A255780: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255780, there is no canonical definition to state claims against.
-/

/-! ## A255780.P211228133185163703

`A255783(A374005(n+1))`
-/

namespace A255780.P211228133185163703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A374005 (n + 1)).toNat

end

end A255780.P211228133185163703

/-! ## A255780.P15633136450931759663

`A255783(A167499(n+3))`
-/

namespace A255780.P15633136450931759663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A167499 (n + 3)).toNat

end

end A255780.P15633136450931759663

/-! ## A255780.P5825638376288292184

`A255783(A056000(n)+15)`
-/

namespace A255780.P5825638376288292184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A056000 n + 15).toNat

end

end A255780.P5825638376288292184

/-! ## A255780.P1608275411396369674

`A255783(A167614(n+3)+2)`
-/

namespace A255780.P1608275411396369674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A167614 (n + 3) + 2).toNat

end

end A255780.P1608275411396369674

/-! ## A255780.P7602014224641280875

`A255783(eq[6, A131818(n+1)])`
-/

namespace A255780.P7602014224641280875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255780.P7602014224641280875

/-!
# A255781: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255781, there is no canonical definition to state claims against.
-/

/-! ## A255781.P10126838599162522096

`A255783(A374007(n+1))`
-/

namespace A255781.P10126838599162522096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A374007 (n + 1)).toNat

end

end A255781.P10126838599162522096

/-! ## A255781.P7450822854213249250

`A255783(A167614(n+4)+3)`
-/

namespace A255781.P7450822854213249250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A167614 (n + 4) + 3).toNat

end

end A255781.P7450822854213249250

/-! ## A255781.P12402206122932129596

`A255783(A055998(n+3)+9)`
-/

namespace A255781.P12402206122932129596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A055998 (n + 3) + 9).toNat

end

end A255781.P12402206122932129596

/-! ## A255781.P2542825733264792659

`A255783(eq[7, A131818(n+1)])`
-/

namespace A255781.P2542825733264792659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255781.P2542825733264792659

/-! ## A255781.P5648250528704581315

`A255783(eq[3, A219347(n)])`
-/

namespace A255781.P5648250528704581315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255781.P5648250528704581315

/-!
# A255782: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 0 and no column sum 0.

The programs for A255782, there is no canonical definition to state claims against.
-/

/-! ## A255782.P9101426424222718497

`A255783(A374008(n+1))`
-/

namespace A255782.P9101426424222718497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (A374008 (n + 1)).toNat

end

end A255782.P9101426424222718497

/-! ## A255782.P8096783633481074720

`A255783(eq[11, A066657(n)])`
-/

namespace A255782.P8096783633481074720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255782.P8096783633481074720

/-! ## A255782.P12213490165186309906

`A255783(eq[8, A131818(n+1)])`
-/

namespace A255782.P12213490165186309906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255782.P12213490165186309906

/-! ## A255782.P18410348287147769161

`A255783(eq[4, A219347(n)])`
-/

namespace A255782.P18410348287147769161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255782.P18410348287147769161

/-! ## A255782.P5770999560625231093

`A255783(eq[6, A193592(n)])`
-/

namespace A255782.P5770999560625231093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255782.P5770999560625231093

/-!
# A255784: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255784, there is no canonical definition to state claims against.
-/

/-! ## A255784.P13614921901927042414

`A255792(∑[4*n]+1)`
-/

namespace A255784.P13614921901927042414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255784.P13614921901927042414

/-! ## A255784.P2537689745798409769

`record[gcd(A255792(n+1), A296339(n))]`
-/

namespace A255784.P2537689745798409769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255792 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255784.P2537689745798409769

/-! ## A255784.P2995932971017896395

`or(A045698(n), A255792(A001844(n)))`
-/

namespace A255784.P2995932971017896395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045698 n) (A255792 (A001844 n).toNat)

end

end A255784.P2995932971017896395

/-! ## A255784.P13618018529580488375

`A255792(A001844(n))+A000038(n+1)`
-/

namespace A255784.P13618018529580488375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A001844 n).toNat + A000038 (n + 1)

end

end A255784.P13618018529580488375

/-! ## A255784.P10507692130330411398

`A255792(A001844(n))%A251486(n+1)`
-/

namespace A255784.P10507692130330411398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255792 (A001844 n).toNat) (A251486 (n + 1))

end

end A255784.P10507692130330411398

/-!
# A255785: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255785, there is no canonical definition to state claims against.
-/

/-! ## A255785.P6101219843387196632

`A255792(∑[n]+1)`
-/

namespace A255785.P6101219843387196632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255785.P6101219843387196632

/-! ## A255785.P15596691442891864804

`record[A010054(n)*A255792(n+1)]`
-/

namespace A255785.P15596691442891864804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255785.P15596691442891864804

/-! ## A255785.P10070926744954829153

`record[A103451(n)*A255792(n+1)]`
-/

namespace A255785.P10070926744954829153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A255792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255785.P10070926744954829153

/-! ## A255785.P5698461374879387582

`record[A255792(n+1)/A099755(n)]`
-/

namespace A255785.P5698461374879387582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255792 (n + 1) : ℚ) / (A099755 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255785.P5698461374879387582

/-! ## A255785.P9940756234671232884

`record[root(A255792(n+1), A007318(n))]`
-/

namespace A255785.P9940756234671232884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255792 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255785.P9940756234671232884

/-!
# A255786: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255786, there is no canonical definition to state claims against.
-/

/-! ## A255786.P17449316999458117575

`A255792(∑[n+1]+2)`
-/

namespace A255786.P17449316999458117575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255786.P17449316999458117575

/-! ## A255786.P4437082862908793995

`record[A010054(n)*A255792(n+2)]`
-/

namespace A255786.P4437082862908793995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255792 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255786.P4437082862908793995

/-! ## A255786.P9557574485978098004

`A165326(n)²*A255792(A133263(n+1))`
-/

namespace A255786.P9557574485978098004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A255792 (A133263 (n + 1)).toNat

end

end A255786.P9557574485978098004

/-! ## A255786.P18047906915738992678

`A255792(A133263(n+1))%A255787(n+1)`
-/

namespace A255786.P18047906915738992678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255792 (A133263 (n + 1)).toNat) (A255787 (n + 1))

end

end A255786.P18047906915738992678

/-! ## A255786.P8404784272221263946

`A057077(2*n)²*A255792(A133263(n+1))`
-/

namespace A255786.P8404784272221263946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) ^ 2 * A255792 (A133263 (n + 1)).toNat

end

end A255786.P8404784272221263946

/-!
# A255787: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255787, there is no canonical definition to state claims against.
-/

/-! ## A255787.P11835341004927943632

`A255792(∑[n+2]+4)`
-/

namespace A255787.P11835341004927943632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255787.P11835341004927943632

/-! ## A255787.P13860177290683189752

`gcd(n, n+1)*A255792(A167614(n+1))`
-/

namespace A255787.P13860177290683189752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A255792 (A167614 (n + 1)).toNat

end

end A255787.P13860177290683189752

/-! ## A255787.P2553338238440091352

`or(A000007(n), A255792(A167614(n+1)))`
-/

namespace A255787.P2553338238440091352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255792 (A167614 (n + 1)).toNat)

end

end A255787.P2553338238440091352

/-! ## A255787.P12224827112316896416

`or(A010058(n+2), A255792(A167614(n+1)))`
-/

namespace A255787.P12224827112316896416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010058 (n + 2)) (A255792 (A167614 (n + 1)).toNat)

end

end A255787.P12224827112316896416

/-! ## A255787.P14239989396949371964

`(A008619(2*n)-n)*A255792(A167614(n+1))`
-/

namespace A255787.P14239989396949371964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ)) * A255792 (A167614 (n + 1)).toNat

end

end A255787.P14239989396949371964

/-!
# A255788: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255788, there is no canonical definition to state claims against.
-/

/-! ## A255788.P17489791240875295825

`A255792(A374004(n+1))`
-/

namespace A255788.P17489791240875295825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A374004 (n + 1)).toNat

end

end A255788.P17489791240875295825

/-! ## A255788.P2195515764954504054

`A255792(A052905(n)+9)`
-/

namespace A255788.P2195515764954504054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A052905 n + 9).toNat

end

end A255788.P2195515764954504054

/-! ## A255788.P9713236876320522200

`A255792(A167614(n+2)+1)`
-/

namespace A255788.P9713236876320522200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A167614 (n + 2) + 1).toNat

end

end A255788.P9713236876320522200

/-! ## A255788.P1257731999834124034

`A255792(A167499(n+2)-1)`
-/

namespace A255788.P1257731999834124034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A167499 (n + 2) - 1).toNat

end

end A255788.P1257731999834124034

/-! ## A255788.P7252269444964208726

`A255792(A034856(n+2)+6)`
-/

namespace A255788.P7252269444964208726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A034856 (n + 2) + 6).toNat

end

end A255788.P7252269444964208726

/-!
# A255789: Number of (n+2) X (5+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255789, there is no canonical definition to state claims against.
-/

/-! ## A255789.P5416194201818289599

`A255792(A374005(n+1))`
-/

namespace A255789.P5416194201818289599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A374005 (n + 1)).toNat

end

end A255789.P5416194201818289599

/-! ## A255789.P2154742796726154870

`A255792(A167499(n+3))`
-/

namespace A255789.P2154742796726154870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A167499 (n + 3)).toNat

end

end A255789.P2154742796726154870

/-! ## A255789.P3700495662057348337

`A255792(A056000(n)+15)`
-/

namespace A255789.P3700495662057348337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A056000 n + 15).toNat

end

end A255789.P3700495662057348337

/-! ## A255789.P4769420327942800679

`A255792(A133263(n+4)+3)`
-/

namespace A255789.P4769420327942800679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A133263 (n + 4) + 3).toNat

end

end A255789.P4769420327942800679

/-! ## A255789.P2644617454419353127

`A255792(A034856(n+3)+7)`
-/

namespace A255789.P2644617454419353127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A034856 (n + 3) + 7).toNat

end

end A255789.P2644617454419353127

/-!
# A255790: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255790, there is no canonical definition to state claims against.
-/

/-! ## A255790.P8890172402105649473

`A255792(A374007(n+1))`
-/

namespace A255790.P8890172402105649473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A374007 (n + 1)).toNat

end

end A255790.P8890172402105649473

/-! ## A255790.P6480069206626185447

`A255792(A167614(n+4)+3)`
-/

namespace A255790.P6480069206626185447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A167614 (n + 4) + 3).toNat

end

end A255790.P6480069206626185447

/-! ## A255790.P16259506900588884251

`A255792(A000124(n+5)+5)`
-/

namespace A255790.P16259506900588884251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A000124 (n + 5) + 5).toNat

end

end A255790.P16259506900588884251

/-! ## A255790.P17293327895520020430

`A255792(A000217(n+5)+6)`
-/

namespace A255790.P17293327895520020430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A000217 (n + 5) + 6).toNat

end

end A255790.P17293327895520020430

/-! ## A255790.P15769923846832416336

`A255792(A046691(n+3)+10)`
-/

namespace A255790.P15769923846832416336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A046691 (n + 3) + 10).toNat

end

end A255790.P15769923846832416336

/-!
# A255791: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 2 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255791, there is no canonical definition to state claims against.
-/

/-! ## A255791.P4418298488586498408

`A255792(A374008(n+1))`
-/

namespace A255791.P4418298488586498408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A374008 (n + 1)).toNat

end

end A255791.P4418298488586498408

/-! ## A255791.P14536959481048785338

`A255792(A167487(n+5))`
-/

namespace A255791.P14536959481048785338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A167487 (n + 5)).toNat

end

end A255791.P14536959481048785338

/-! ## A255791.P5924277729023061713

`A255792(A167614(n+5)+4)`
-/

namespace A255791.P5924277729023061713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A167614 (n + 5) + 4).toNat

end

end A255791.P5924277729023061713

/-! ## A255791.P3551772985457984128

`A255792(A000217(n+6)+7)`
-/

namespace A255791.P3551772985457984128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A000217 (n + 6) + 7).toNat

end

end A255791.P3551772985457984128

/-! ## A255791.P9582500558895698035

`A255792(A046691(n+4)+11)`
-/

namespace A255791.P9582500558895698035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255792 (A046691 (n + 4) + 11).toNat

end

end A255791.P9582500558895698035

/-!
# A255793: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255793, there is no canonical definition to state claims against.
-/

/-! ## A255793.P12640878679086004812

`A255801((n+1)²+n²)`
-/

namespace A255793.P12640878679086004812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 ((n + 1) ^ 2 + n ^ 2)

end

end A255793.P12640878679086004812

/-! ## A255793.P4192722940153612382

`lcm(2, A255801(A001844(n)))`
-/

namespace A255793.P4192722940153612382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A255801 (A001844 n).toNat)

end

end A255793.P4192722940153612382

/-! ## A255793.P6542588270106092857

`A239700(n+1)*A255801(A001844(n))`
-/

namespace A255793.P6542588270106092857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (n + 1) * A255801 (A001844 n).toNat

end

end A255793.P6542588270106092857

/-! ## A255793.P11616614128726710221

`A255801(A001844(n))%A250801(n+1)`
-/

namespace A255793.P11616614128726710221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255801 (A001844 n).toNat) (A250801 (n + 1))

end

end A255793.P11616614128726710221

/-! ## A255793.P10970934786996070774

`A255801(∑[A008574(n)])%A255786(n+1)`
-/

namespace A255793.P10970934786996070774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255801 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A255786 (n + 1))

end

end A255793.P10970934786996070774

/-!
# A255794: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255794, there is no canonical definition to state claims against.
-/

/-! ## A255794.P17619616442058237116

`A255801(∑[n]+1)`
-/

namespace A255794.P17619616442058237116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255794.P17619616442058237116

/-! ## A255794.P5860438767149333767

`record[A255801(n+1)]`
-/

namespace A255794.P5860438767149333767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255794.P5860438767149333767

/-! ## A255794.P17193735667510818807

`A255801(A000124(n))+A000007(n+1)`
-/

namespace A255794.P17193735667510818807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 n).toNat + A000007 (n + 1)

end

end A255794.P17193735667510818807

/-! ## A255794.P8316764324795305518

`A028920(2*n)*A255801(A000124(n))`
-/

namespace A255794.P8316764324795305518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) * A255801 (A000124 n).toNat

end

end A255794.P8316764324795305518

/-! ## A255794.P12976292363692491071

`A255801(A000124(n))%A159896(n+1)`
-/

namespace A255794.P12976292363692491071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255801 (A000124 n).toNat) (A159896 (n + 1))

end

end A255794.P12976292363692491071

/-! ## A255794.P18035289419555650092

`A255801(A000124(n))-n*A000007(n)`
-/

namespace A255794.P18035289419555650092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 n).toNat - (n : ℤ) * A000007 n

end

end A255794.P18035289419555650092

/-! ## A255794.P17435391787657379050

`A255801(A000124(n))+A003982(2*n+1)`
-/

namespace A255794.P17435391787657379050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 n).toNat + A003982 (2 * n + 1)

end

end A255794.P17435391787657379050

/-! ## A255794.P8688916681960171066

`A255801(A000124(n))+A070202(A028920(n))`
-/

namespace A255794.P8688916681960171066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 n).toNat + A070202 (A028920 n).toNat

end

end A255794.P8688916681960171066

/-! ## A255794.P13270599687101099327

`A255801(A000124(n))%A184211(A052938(n))`
-/

namespace A255794.P13270599687101099327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255801 (A000124 n).toNat) (A184211 (A052938 n).toNat)

end

end A255794.P13270599687101099327

/-! ## A255794.P4121578458791414753

`A255801(A000217(n+1))+A000007(n+1)`
-/

namespace A255794.P4121578458791414753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A255794.P4121578458791414753

/-!
# A255795: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255795, there is no canonical definition to state claims against.
-/

/-! ## A255795.P17034054492812012957

`A255801(∑[n+1]+2)`
-/

namespace A255795.P17034054492812012957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255795.P17034054492812012957

/-! ## A255795.P13053388648992062935

`A000034(2*n)*A255801(A000096(n+1))`
-/

namespace A255795.P13053388648992062935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A255801 (A000096 (n + 1)).toNat

end

end A255795.P13053388648992062935

/-! ## A255795.P236328464312376031

`lcm(A000034(n+1), A255801(A000096(n+1)))`
-/

namespace A255795.P236328464312376031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 1)) (A255801 (A000096 (n + 1)).toNat)

end

end A255795.P236328464312376031

/-! ## A255795.P4279161792431852410

`A009001(2*n)²*A255801(A000096(n+1))`
-/

namespace A255795.P4279161792431852410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A255801 (A000096 (n + 1)).toNat

end

end A255795.P4279161792431852410

/-! ## A255795.P11168861101121651038

`A267883(A167614(n+2))+A255801(A000096(n+1))`
-/

namespace A255795.P11168861101121651038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (A167614 (n + 2)).toNat + A255801 (A000096 (n + 1)).toNat

end

end A255795.P11168861101121651038

/-! ## A255795.P12333179557620426944

`A267883(A000096(2*n))+A255801(A000096(n+1))`
-/

namespace A255795.P12333179557620426944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (A000096 (2 * n)).toNat + A255801 (A000096 (n + 1)).toNat

end

end A255795.P12333179557620426944

/-!
# A255796: Number of (n+2) X (3+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255796, there is no canonical definition to state claims against.
-/

/-! ## A255796.P1712207112244568417

`A255801(A167614(n+1))`
-/

namespace A255796.P1712207112244568417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A167614 (n + 1)).toNat

end

end A255796.P1712207112244568417

/-! ## A255796.P20170407809529835

`A255801(A046691(n)+7)`
-/

namespace A255796.P20170407809529835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A046691 n + 7).toNat

end

end A255796.P20170407809529835

/-! ## A255796.P8809475140519124823

`A255801(A167499(n)+n)`
-/

namespace A255796.P8809475140519124823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A167499 n + (n : ℤ)).toNat

end

end A255796.P8809475140519124823

/-! ## A255796.P13885785261739801862

`A255801(A000124(n+2)+2)`
-/

namespace A255796.P13885785261739801862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 (n + 2) + 2).toNat

end

end A255796.P13885785261739801862

/-! ## A255796.P12657203061862573895

`A255801(A000096(n+1)+4)`
-/

namespace A255796.P12657203061862573895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000096 (n + 1) + 4).toNat

end

end A255796.P12657203061862573895

/-! ## A255796.P83867344506665764

`A255801(A034856(n+1)+5)`
-/

namespace A255796.P83867344506665764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A034856 (n + 1) + 5).toNat

end

end A255796.P83867344506665764

/-! ## A255796.P10894508640233188926

`A255801(Δ[A006416(n+2)-n²])`
-/

namespace A255796.P10894508640233188926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (f1 (n + 1) - f1 n).toNat

end

end A255796.P10894508640233188926

/-! ## A255796.P7214830172560427685

`A255801(∑[n+3]+1)`
-/

namespace A255796.P7214830172560427685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255796.P7214830172560427685

/-!
# A255797: Number of (n+2) X (4+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255797, there is no canonical definition to state claims against.
-/

/-! ## A255797.P7777523732764934043

`A255801(A052905(n)+9)`
-/

namespace A255797.P7777523732764934043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A052905 n + 9).toNat

end

end A255797.P7777523732764934043

/-! ## A255797.P4412536862440135200

`A255801(A167614(n+2)+1)`
-/

namespace A255797.P4412536862440135200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A167614 (n + 2) + 1).toNat

end

end A255797.P4412536862440135200

/-! ## A255797.P13737802808136693823

`A255801(Δ[A023545(n+1)-n²])`
-/

namespace A255797.P13737802808136693823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (f1 (n + 1) - f1 n).toNat

end

end A255797.P13737802808136693823

/-! ## A255797.P8436171841271421851

`A255801(∑[n+4]+3)`
-/

namespace A255797.P8436171841271421851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255797.P8436171841271421851

/-! ## A255797.P12090321596412520912

`or(C(2, n+2), A255801(A027379(n+2)))`
-/

namespace A255797.P12090321596412520912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A255801 (A027379 (n + 2)).toNat)

end

end A255797.P12090321596412520912

/-!
# A255798: Number of (n+2) X (5+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255798, there is no canonical definition to state claims against.
-/

/-! ## A255798.P2363317338963221093

`A255801(A167614(n+3)+2)`
-/

namespace A255798.P2363317338963221093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A167614 (n + 3) + 2).toNat

end

end A255798.P2363317338963221093

/-! ## A255798.P2993821823668378285

`A255801(A000217(n+4)+5)`
-/

namespace A255798.P2993821823668378285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000217 (n + 4) + 5).toNat

end

end A255798.P2993821823668378285

/-! ## A255798.P9813318521822698072

`A255801(A256188((n+4)²+4)+1)`
-/

namespace A255798.P9813318521822698072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A256188 ((n + 4) ^ 2 + 4) + 1).toNat

end

end A255798.P9813318521822698072

/-! ## A255798.P11493228299425655130

`A255801(∑[n+5]+6)`
-/

namespace A255798.P11493228299425655130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255798.P11493228299425655130

/-! ## A255798.P7223914207768260016

`A255801(A046691(n+3))%A017118(n)`
-/

namespace A255798.P7223914207768260016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255801 (A046691 (n + 3)).toNat) (A017118 n)

end

end A255798.P7223914207768260016

/-! ## A255798.P12905515676586722974

`lcm(A033999(n), A255801(A046691(n+3)))`
-/

namespace A255798.P12905515676586722974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255801 (A046691 (n + 3)).toNat)

end

end A255798.P12905515676586722974

/-!
# A255799: Number of (n+2) X (6+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 3.

The programs for A255799, there is no canonical definition to state claims against.
-/

/-! ## A255799.P8797653017784854342

`A255801(A000124(n+6)-(n+1))`
-/

namespace A255799.P8797653017784854342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A255799.P8797653017784854342

/-! ## A255799.P15341235792648818263

`lcm(A000034(n+1), A255801(A000096(n+4)+7))`
-/

namespace A255799.P15341235792648818263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 1)) (A255801 (A000096 (n + 4) + 7).toNat)

end

end A255799.P15341235792648818263

/-! ## A255799.P11626887942922413038

`A255801(A000124(n+5)+5)+A003982(A313575(n))`
-/

namespace A255799.P11626887942922413038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A000124 (n + 5) + 5).toNat + A003982 (A313575 n).toNat

end

end A255799.P11626887942922413038

/-! ## A255799.P16718195785828840924

`A255801(A161680(n+6)+6)+A000007(A000124(n))`
-/

namespace A255799.P16718195785828840924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A161680 (n + 6) + 6).toNat + A000007 (A000124 n).toNat

end

end A255799.P16718195785828840924

/-! ## A255799.P16723695083543903188

`A255801(A167499(n+4)+1)+A010051(A113484(n+1))`
-/

namespace A255799.P16723695083543903188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (A167499 (n + 4) + 1).toNat + A010051 (A113484 (n + 1)).toNat

end

end A255799.P16723695083543903188

/-! ## A255799.P2673740634615239515

`A255801((n+4)²-∑[n+1]+1)`
-/

namespace A255799.P2673740634615239515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255801 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A255799.P2673740634615239515

/-! ## A255799.P8837215418822333250

`A009001(4*n)*A255801(A000096(n+5)-4)`
-/

namespace A255799.P8837215418822333250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (4 * n) * A255801 (A000096 (n + 5) - 4).toNat

end

end A255799.P8837215418822333250

